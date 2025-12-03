%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('failedRecords'),
  $['failedRecords'] must equalTo([
    {
      "empId": "testuser23",
      "feedRecordNumber": "41623",
      "recordStatus": "UPDATE",
      "errorMessages": [
        {
          "code": "INVALID_VALUE",
          "message": "Invalid List Item",
          "key": "custom3",
          "value": "Technology Ops & Services bad dept",
          "statusCode": "500"
        }
      ]
    }
  ])
]