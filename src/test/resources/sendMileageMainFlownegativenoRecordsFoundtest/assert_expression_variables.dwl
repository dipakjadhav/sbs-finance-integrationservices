%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('responseStatus'),
  haveKey('initVars'),
  haveKey('mileageList'),
  $['responseStatus'] must equalTo("No Matching Mileage Records found"),
  $['initVars'] must equalTo({
    "call3function": "PAYROLL_ADDALLOW",
    "call3delimiter": ",",
    "call3wrapper": ""
  }),
  $['mileageList'] must equalTo([])
]