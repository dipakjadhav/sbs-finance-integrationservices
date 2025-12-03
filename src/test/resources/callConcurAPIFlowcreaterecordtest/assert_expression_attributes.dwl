%dw 2.0
import * from dw::test::Asserts
---
attributes must equalTo({
  "headers": {
    "content-type": "application/json; charset=UTF-8",
    "transfer-encoding": "chunked",
    "date": "Thu, 02 Feb 2023 07:04:58 GMT"
  },
  "reasonPhrase": "OK",
  "statusCode": 200
})