%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('outboundHeaders'),
  haveKey('requestMethod'),
  haveKey('correlationId'),
  haveKey('httpStatus'),
  haveKey('requestPath'),
  $['outboundHeaders'] must equalTo({}),
  $['requestMethod'] must equalTo("POST"),
  $['correlationId'] must equalTo(null),
  $['httpStatus'] must equalTo(200),
  $['requestPath'] must equalTo("/projectTask")
]