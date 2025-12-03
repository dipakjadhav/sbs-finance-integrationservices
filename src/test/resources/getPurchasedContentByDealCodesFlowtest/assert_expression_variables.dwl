%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('correlationId'),
  haveKey('outboundHeaders'),
  haveKey('receivedDealCodes'),
  $['correlationId'] must equalTo(null),
  $['outboundHeaders'] must equalTo({}),
  $['receivedDealCodes'] must equalTo("12808")
]