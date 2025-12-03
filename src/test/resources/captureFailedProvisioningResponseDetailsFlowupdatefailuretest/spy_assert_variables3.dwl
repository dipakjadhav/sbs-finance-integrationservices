%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('allErrorsWithDetails'),
  $['allErrorsWithDetails'] must equalTo([
    {
      "employeeNumber": "testuser23",
      "feedRecordNumber": "41623",
      "provisionId": "2273b54e-2992-4cd5-8589-82d4c0eca762",
      "status": "500",
      "messages": [
        {
          "code": "INVALID_VALUE",
          "message": "Invalid Value: 'urn:ietf:params:scim:schemas:extension:spend:2.0:User:testEmployee'",
          "schemaPath": "urn:ietf:params:scim:schemas:extension:spend:2.0:User:testEmployee",
          "type": "warning"
        },
        {
          "code": "INVALID_VALUE",
          "message": "Invalid List Item",
          "schemaPath": "urn:ietf:params:scim:schemas:extension:spend:2.0:User:customData[id eq \"custom3\"].value",
          "type": "error"
        }
      ]
    }
  ])
]