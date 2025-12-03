%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('dealCodeUpdatedPriorDay'),
  $['dealCodeUpdatedPriorDay'] must equalTo(1)
]