%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('errorInputMappings'),
  $['errorInputMappings'] must equalTo([
    {
      "code": "INVALID_VALUE",
      "message": "Invalid List Item",
      "key": "custom3",
      "value": "Technology Ops & Services bad dept",
      "statusCode": "500"
    }
  ])
]