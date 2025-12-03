%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo([
  {
    "VALIDATE_ONLY": "F",
    "KM_UNITS": 622,
    "EMPLOYEE_NO": "18760",
    "TRAVEL_DATE": "20210908",
    "ALLOWANCE_CODE": "KM01A",
    "STATUS": "CREATE"
  }
])