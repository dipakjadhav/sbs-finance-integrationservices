%dw 2.0
import * from dw::test::Asserts
---
attributes must equalTo({
  "headers": {
    "date": "Tue, 04 Apr 2023 15:50:16 GMT",
    "content-type": "application/json; charset=UTF-8",
    "content-length": "41",
    "connection": "keep-alive",
    "strict-transport-security": "max-age=31536000; includeSubdomains;",
    "x-content-type-options": "nosniff",
    "x-frame-options": "SAMEORIGIN",
    "x-xss-protection": "1; mode=block"
  },
  "reasonPhrase": "OK",
  "statusCode": 200
})