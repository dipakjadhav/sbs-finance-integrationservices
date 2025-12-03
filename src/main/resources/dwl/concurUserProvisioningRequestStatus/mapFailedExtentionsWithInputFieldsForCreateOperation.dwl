%dw 2.0
import * from dw::core::Strings
fun extractCustomerDataKey(keyString) = do{
    var keyParts = keyString splitBy(/[\[\]]/)
    var key = keyParts[0]
    ---
    (keyParts[1] splitBy("\""))[1]
}

fun extractKey(item) =  do {
    var keyAndSubKey = if(item contains "customData") { "key": extractCustomerDataKey(item)} else if(item contains "approver") { "key": "Approver"} else { "key": (item splitBy ".")[-1]
    }
    ---
    keyAndSubKey
  }

fun extractKeyFromSchemaPath(item) = do { 
    var parts = ((item remove "urn:ietf:params:scim:schemas:extension:") splitBy ":")
    var keyValuepart = parts[-1]
  ---
   {
    "extension": parts[0],
    "version": parts[1],
    "schema": parts[2]
  } ++ (if(not isEmpty(parts[3])) extractKey(keyValuepart) else {})
}

fun getFailedExtentions(provisioningResponse) = flatten((provisioningResponse default {})..extensions default []) filter ((extension, index) -> (extension.status.result == "error") and (extension.status.code != "404") and  (extension..messages..['type'] contains  "error"))

fun getInputOperationKey(concurRequest, schemaPath) = do {
  var inputOperationKeys = (keysOf(concurRequest) filter ((key) -> schemaPath startsWith (key)))
  ---
  if(not isEmpty(inputOperationKeys)) inputOperationKeys[0] else null
}

fun getInputOperation(concurRequest, inputOperationKey) = do{ 
    var inputOperation = concurRequest[inputOperationKey]
  --- 
  if(not isEmpty(inputOperation)) inputOperation else null
}

fun extractValueFromArray(errorKeyValue, operationValue) =
  ((operationValue default []) filter ((item) -> errorKeyValue contains (item.id default "")))[0]

fun extractValueFromObject(errorKeyValue, operationValue) = do {
  var key = ((keysOf(operationValue) default {}) filter ((item) -> errorKeyValue contains (item default "")))[0]
  ---
  if(isEmpty(key)) {"id": errorKeyValue, "value":operationValue} else extractValue(errorKeyValue remove key, operationValue[key])
}

fun extractCustomDataValue(errorKeyValue, operationValue) =  do {
    var matchingCustomDataItems = operationValue['customData'] filter ((customDataItem, index) -> customDataItem['id'] ~= errorKeyValue)
    ---
    if(not isEmpty(matchingCustomDataItems))matchingCustomDataItems[0].value else ""
}

fun extractValue(errorKeyValue, operationValue) =
  errorKeyValue match {
    case str if str startsWith "custom" -> extractCustomDataValue(errorKeyValue, operationValue)
    case is "Approver" -> operationValue.report[0].approver.employeeNumber
    else -> errorKeyValue
}


fun extractKeyFromSchemaPath(statusCode, schemaPath) = do{
      var key = if(statusCode ~= "400") "" else extractKeyFromSchemaPath(schemaPath)
      ---
      if(not isEmpty(key)) (if(not isEmpty(key.subKey))key.subKey else key.key) else ""
  }  

fun extractValueFromInputOperation(inputOperation, inputOperationKey, statusCode, message) = do {
      var key = extractKeyFromSchemaPath(statusCode, message.schemaPath)
      var value = extractValue(key, inputOperation)
      ---
      {
        "code": message.code,
        "message": message.message,
        "key": extractKeyFromSchemaPath(statusCode, message.schemaPath),
        "value": if(statusCode ~= "400") "Required fields missing" else value,
        "statusCode": statusCode
      }
  }  
  
fun mapErrors(provisioningResponse, concurRequest) = do {
    flatten(getFailedExtentions(provisioningResponse) map ((extension) -> extension.messages filter ((message, index) -> message['type'] == "error") map ((message) -> do {       
      var inputOperationKey = getInputOperationKey(concurRequest, message.schemaPath)
      var inputOperation = if(not isEmpty(inputOperationKey))  getInputOperation(concurRequest, inputOperationKey) else null    
      ---
      if(not isEmpty(inputOperation))  extractValueFromInputOperation(inputOperation, inputOperationKey, extension.status.code, message) else 
      {
        "code": message.code,
        "message": message.message,
        "key": extractKeyFromSchemaPath(extension.status.code, message.schemaPath),
        "value": "",
        "statusCode": extension.status.code
      } 
    })))
}
output application/json  
---
mapErrors(vars.userProvisioningRequestDetailedResponse, vars.recordSubmittedToConcur.concurRequest)
    