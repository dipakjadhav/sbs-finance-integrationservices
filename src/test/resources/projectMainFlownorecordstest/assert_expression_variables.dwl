%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('requestPath'),
  haveKey('httpStatus'),
  $['requestPath'] must equalTo("/projects"),
  $['httpStatus'] must equalTo(200)
]