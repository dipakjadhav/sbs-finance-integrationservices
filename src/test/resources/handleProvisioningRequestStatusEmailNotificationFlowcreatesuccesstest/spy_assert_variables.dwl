%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('failedRecords'),
  haveKey('processedRecords'),
  $['failedRecords'] must equalTo([]),
  $['processedRecords'] must equalTo([
    {
      "empId": "testuser23",
      "feedRecordNumber": "41623",
      "recordStatus": "UPDATE",
      "provisionId": "0105c868-5473-42d8-88b8-60acc6764873"
    }
  ])
]