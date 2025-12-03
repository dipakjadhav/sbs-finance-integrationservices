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
var failedExtentions = flatten((vars.userProvisioningRequestDetailedResponse default {})..extensions default []) filter ((extension, index) -> (extension.status.result == "error") and (extension.status.code != "404") and  (extension..messages..['type'] contains  "error"))

fun getInputOperation(schemaPath) = do{ 
    var operations1 =   (vars.recordSubmittedToConcur.concurRequest.Operations filter ((item) -> schemaPath startsWith (item.path)))
  var operations2 =   (vars.recordSubmittedToConcur.concurRequest.Operations filter ((item) -> (item.path) startsWith schemaPath))
  --- 
  if(isEmpty(operations1)) operations2[0] else operations1[0]

}

fun extractValueFromArray(errorKeyValue, operationValue) =
  ((operationValue default []) filter ((item) -> errorKeyValue contains (item.id default "")))[0]

fun extractValueFromObject(errorKeyValue, operationValue) = do {
  var key = ((keysOf(operationValue) default {}) filter ((item) -> errorKeyValue contains (item default "")))[0]
  ---
  if(isEmpty(key)) {"id": errorKeyValue, "value":operationValue} else extractValue(errorKeyValue remove key, operationValue[key])
}

fun extractCustomDataValue(errorKeyValue, operationValue) =  do {
    var matchingCustomDataItems = operationValue.value filter ((customDataItem, index) -> customDataItem['id'] ~= errorKeyValue)
    ---
    if(not isEmpty(matchingCustomDataItems))matchingCustomDataItems[0].value else "" 
}

fun extractValue(errorKeyValue, operationValue) =
  errorKeyValue match {
    case str if str startsWith "custom" -> extractCustomDataValue(errorKeyValue, operationValue)
    case is "Approver" -> operationValue.value[0].approver.employeeNumber
    else -> 'ANOTHER TYPE'
}

fun extractKeyFromSchemaPath(statusCode, schemaPath) = do{
      var key = if(statusCode ~= "400") "" else extractKeyFromSchemaPath(schemaPath)
      ---
      if(not isEmpty(key)) (if(not isEmpty(key.subKey))key.subKey else key.key) else ""
  }
  fun extractValueFromInputOperation(inputOperation, statusCode, message) = do {
      var key = extractKeyFromSchemaPath(statusCode, message.schemaPath)
      var value = extractValue(key, inputOperation)
      ---
      {
        "code": message.code,
        "message": message.message,
        "key": key,
        "value": if(statusCode ~= "400") "Required fields missing" else value,
        "statusCode": statusCode
      }
  }

output application/json  
---
flatten(failedExtentions map ((extension) -> extension.messages filter ((message, index) -> message['type'] == "error") map ((message) -> do {
      var inputOperation = getInputOperation(message.schemaPath)
          ---
     if(not isEmpty(inputOperation)) extractValueFromInputOperation(inputOperation, extension.status.code, message) else {
        "code": message.code,
        "message": message.message,
        "key": extractKeyFromSchemaPath(extension.status.code, message.schemaPath),
        "value": "",
        "statusCode": extension.status.code
      }    }))) filter ((item, index) -> not isEmpty(item))