%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('processedRecords'),
  $['processedRecords'] must equalTo([
    {
      "empId": "testuser23",
      "feedRecordNumber": "41623",
      "recordStatus": "UPDATE",
      "provisionId": "028dda50-b8d1-4576-9e9b-1952a0953f07"
    }
  ])
]