%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('emailPayload'),
  $['emailPayload'] must equalTo({
    "responseStatus": "Processed Provisioning Request Status",
    "processedRecords": [
      {
        "empId": "testuser23",
        "feedRecordNumber": "41623",
        "recordStatus": "UPDATE",
        "provisionId": "0105c868-5473-42d8-88b8-60acc6764873"
      }
    ],
    "failedRecords": []
  })
]