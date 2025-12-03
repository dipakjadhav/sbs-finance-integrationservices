%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('processedEmployeeNumbersArray'),
  haveKey('initVars'),
  haveKey('responseStringsArray'),
  haveKey('P_TOKEN'),
  haveKey('p_PARAMETERS'),
  haveKey('outboundHeaders'),
  haveKey('responseStatus'),
  haveKey('EMPLOYEE_NO'),
  haveKey('correlationId'),
  haveKey('nonProcessedEmployeeNumbersArray'),
  haveKey('mileageList'),
  $['processedEmployeeNumbersArray'] must equalTo([]),
  $['initVars'] must equalTo({
    "call3function": "PAYROLL_ADDALLOW",
    "call3delimiter": ",",
    "call3wrapper": ""
  }),
  $['responseStringsArray'] must equalTo([
    "employee_no --> 28657-->return --> 0-->token --> -->message --> Employee 28657 not found -->status --> -1",
    "employee_no --> 28657-->return --> 0-->token --> -->message --> Employee 28657 not found -->status --> -1"
  ]),
  $['P_TOKEN'] must equalTo("'eN2Y='0EH\\/.=^&amp;?7eQdC;f;6N1d[a!Z:&lt;s#xhfwktXPriBIRNji5Fc[]1Vtr"),
  $['p_PARAMETERS'] must equalTo("EMPLOYEE_NO=28657,VALIDATE_ONLY=F,ALLOWANCE_CODE=KM01A,UNITS=1,DATE=20220713"),
  $['outboundHeaders'] must equalTo({}),
  $['responseStatus'] must equalTo({
    "response": "employee_no --> 28657-->return --> 0-->token --> -->message --> Employee 28657 not found -->status --> -1,employee_no --> 28657-->return --> 0-->token --> -->message --> Employee 28657 not found -->status --> -1",
    "processedEmployees": [],
    "nonProcesedEmployees": [
      {
        "EMPLOYEE_NO": "28657",
        "MESSAGE": "Employee 28657 not found "
      },
      {
        "EMPLOYEE_NO": "28657",
        "MESSAGE": "Employee 28657 not found "
      }
    ]
  }),
  $['EMPLOYEE_NO'] must equalTo("28657"),
  $['correlationId'] must equalTo(null),
  $['nonProcessedEmployeeNumbersArray'] must equalTo([
    {
      "EMPLOYEE_NO": "28657",
      "MESSAGE": "Employee 28657 not found "
    },
    {
      "EMPLOYEE_NO": "28657",
      "MESSAGE": "Employee 28657 not found "
    }
  ]),
  $['mileageList'] must equalTo([
    {
      "VALIDATE_ONLY": "F",
      "KM_UNITS": 1,
      "EMPLOYEE_NO": "28657",
      "TRAVEL_DATE": "20220713",
      "ALLOWANCE_CODE": "KM01A",
      "STATUS": "CREATE"
    },
    {
      "VALIDATE_ONLY": "F",
      "KM_UNITS": 1,
      "EMPLOYEE_NO": "28657",
      "TRAVEL_DATE": "20220713",
      "ALLOWANCE_CODE": "KM01A",
      "STATUS": "CREATE"
    }
  ])
]