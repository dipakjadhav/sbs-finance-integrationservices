%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('requestMethod'),
  haveKey('httpStatus'),
  haveKey('requestPath'),
  $['requestMethod'] must equalTo("POST"),
  $['httpStatus'] must equalTo(200),
  $['requestPath'] must equalTo("/projects")
]