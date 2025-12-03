%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('responseStatus'),
  haveKey('initVars'),
  $['responseStatus'] must equalTo(""),
  $['initVars'] must equalTo({
    "call3function": "PAYROLL_ADDALLOW",
    "call3delimiter": ",",
    "call3wrapper": ""
  })
]