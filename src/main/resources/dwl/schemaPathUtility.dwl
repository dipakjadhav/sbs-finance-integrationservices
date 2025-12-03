%dw 2.0

fun extractCustomerDataKey(item) = (item splitBy("\""))[1]

fun extractKeyAndSubKey(parts) = do {
    var keyParts = parts[0] splitBy(/[\[\]]/)
    var key = keyParts[0]
    var index = keyParts[1]
    var subKey = if(isNumeric(index)) "" else extractCustomerDataKey(index)
    ---
    {
        "key": key,
        "subKey": subKey
    }
}

fun extractKey(item) =  do {
    var parts = item splitBy  "."
    var keyAndSubKey = if(sizeOf(parts) > 1) extractKeyAndSubKey(parts) else { "key": parts[0]}
    ---
    keyAndSubKey
  }

fun extractKeyFromSchemaPath(item) = do { 
    var parts = ((item remove "urn:ietf:params:scim:schemas:extension:") splitBy ":") 
  ---
   {
    "extension": parts[0],
    "version": parts[1],
    "schema": parts[2]
  } ++ (if(not isEmpty(parts[3])) extractKey(parts[3]) else {})
}