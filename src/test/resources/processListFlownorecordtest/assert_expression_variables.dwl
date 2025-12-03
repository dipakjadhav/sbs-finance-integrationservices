%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('correlationId'),
  haveKey('outboundHeaders'),
  haveKey('requestPath'),
  haveKey('httpStatus'),
  $['correlationId'] must equalTo(null),
  $['outboundHeaders'] must equalTo({}),
  $['requestPath'] must equalTo("/projectTask"),
  $['httpStatus'] must equalTo(200)
]