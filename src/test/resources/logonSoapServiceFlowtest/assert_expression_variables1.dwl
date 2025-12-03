%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('P_TOKEN'),
  $['P_TOKEN'] must equalTo("logintoken")
]