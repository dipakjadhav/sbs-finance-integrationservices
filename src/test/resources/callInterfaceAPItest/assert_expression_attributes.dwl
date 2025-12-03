%dw 2.0
import * from dw::test::Asserts
---
attributes must equalTo({
  "headers": {
    "content-type": "application/json; charset=UTF-8",
    "transfer-encoding": "chunked",
    "date": "Wed, 05 Apr 2023 07:29:50 GMT"
  },
  "reasonPhrase": "OK",
  "statusCode": 200
})