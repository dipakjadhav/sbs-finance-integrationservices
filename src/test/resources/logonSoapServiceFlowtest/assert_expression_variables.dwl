%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('responseStatus'),
  haveKey('initVars'),
  haveKey('mileageList'),
  haveKey('P_TOKEN'),
  $['responseStatus'] must equalTo(""),
  $['initVars'] must equalTo({
    "call3function": "PAYROLL_ADDALLOW",
    "call3delimiter": ",",
    "call3wrapper": ""
  }),
  $['mileageList'] must equalTo([
    {
      "VALIDATE_ONLY": "F",
      "KM_UNITS": 1,
      "EMPLOYEE_NO": "00000",
      "TRAVEL_DATE": "00000000",
      "ALLOWANCE_CODE": "TEST0",
      "STATUS": "CREATE"
    }
  ]),
  $['P_TOKEN'] must equalTo("T0NGY='0]Mq#JM^&?7eQdC;f;6N1d[a!Z:<s#xhfwktXPriBIRO,fV_*ggF\"?t")
]