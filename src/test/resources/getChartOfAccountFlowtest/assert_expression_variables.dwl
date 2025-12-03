%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('requestPath'),
  haveKey('responseStatus'),
  haveKey('requestMethod'),
  $['requestPath'] must equalTo("/concur/chartOfAccounts"),
  $['responseStatus'] must equalTo("'Successfully Completed CoA Operations'"),
  $['requestMethod'] must equalTo("POST")
]