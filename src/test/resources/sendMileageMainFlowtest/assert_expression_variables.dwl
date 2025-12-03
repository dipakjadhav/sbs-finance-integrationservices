%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('queryInString'),
  haveKey('initVars'),
  haveKey('processedEmployeeNumbersArray'),
  haveKey('responseStringsArray'),
  haveKey('P_TOKEN'),
  haveKey('p_PARAMETERS'),
  haveKey('responseStatus'),
  haveKey('EMPLOYEE_NO'),
  haveKey('nonProcessedEmployeeNumbersArray'),
  haveKey('mileageList'),
  haveKey('processedEmployeeNumbers'),
  $['queryInString'] must equalTo("update xxsbs.xxsbs_mileage_for_aurion SET STATUS='SUCCESS',LAST_UPDATED_BY='Mulesoft',LAST_UPDATE_DATE=sysdate where STATUS ='CREATE' and EMPLOYEE_NO IN (00001,00001,00002,00001,00002)"),
  $['initVars'] must equalTo({
    "call3function": "PAYROLL_ADDALLOW",
    "call3delimiter": ",",
    "call3wrapper": ""
  }),
  $['processedEmployeeNumbersArray'] must equalTo([
    "00001",
    "00001",
    "00002",
    "00001",
    "00002"
  ]),
  $['responseStringsArray'] must equalTo([
    {
      "return": "0",
      "P_OUTPUT": null,
      "P_MESSAGE": null,
      "P_STATUS": "0"
    },
    {
      "return": "0",
      "P_OUTPUT": null,
      "P_MESSAGE": null,
      "P_STATUS": "0"
    },
    {
      "return": "0",
      "P_OUTPUT": null,
      "P_MESSAGE": null,
      "P_STATUS": "0"
    },
    {
      "return": "0",
      "P_OUTPUT": null,
      "P_MESSAGE": null,
      "P_STATUS": "0"
    },
    {
      "return": "0",
      "P_OUTPUT": null,
      "P_MESSAGE": null,
      "P_STATUS": "0"
    }
  ]),
  $['P_TOKEN'] must equalTo("T0NGY='0]HO(.1^&?7eQdC;f;6N1d[a!Z:<s#xhfwktXPriBIRO,cr)F2]+K\$q"),
  $['p_PARAMETERS'] must equalTo("EMPLOYEE_NO=00002,VALIDATE_ONLY=F,ALLOWANCE_CODE=TEST2,UNITS=3,DATE=00000002"),
  $['responseStatus'] must equalTo({
    "return": "0",
    "P_OUTPUT": null,
    "P_MESSAGE": null,
    "P_STATUS": "0",
    "return": "0",
    "P_OUTPUT": null,
    "P_MESSAGE": null,
    "P_STATUS": "0",
    "return": "0",
    "P_OUTPUT": null,
    "P_MESSAGE": null,
    "P_STATUS": "0",
    "return": "0",
    "P_OUTPUT": null,
    "P_MESSAGE": null,
    "P_STATUS": "0",
    "return": "0",
    "P_OUTPUT": null,
    "P_MESSAGE": null,
    "P_STATUS": "0"
  }),
  $['EMPLOYEE_NO'] must equalTo("00002"),
  $['nonProcessedEmployeeNumbersArray'] must equalTo(""),
  $['mileageList'] must equalTo([
    {
      "VALIDATE_ONLY": "F",
      "KM_UNITS": 2,
      "EMPLOYEE_NO": "00001",
      "TRAVEL_DATE": "00000001",
      "ALLOWANCE_CODE": "TEST1",
      "STATUS": "CREATE"
    },
    {
      "VALIDATE_ONLY": "F",
      "KM_UNITS": 2,
      "EMPLOYEE_NO": "00001",
      "TRAVEL_DATE": "00000001",
      "ALLOWANCE_CODE": "TEST1",
      "STATUS": "CREATE"
    },
    {
      "VALIDATE_ONLY": "F",
      "KM_UNITS": 3,
      "EMPLOYEE_NO": "00002",
      "TRAVEL_DATE": "00000002",
      "ALLOWANCE_CODE": "TEST2",
      "STATUS": "CREATE"
    },
    {
      "VALIDATE_ONLY": "F",
      "KM_UNITS": 2,
      "EMPLOYEE_NO": "00001",
      "TRAVEL_DATE": "00000001",
      "ALLOWANCE_CODE": "TEST1",
      "STATUS": "CREATE"
    },
    {
      "VALIDATE_ONLY": "F",
      "KM_UNITS": 3,
      "EMPLOYEE_NO": "00002",
      "TRAVEL_DATE": "00000002",
      "ALLOWANCE_CODE": "TEST2",
      "STATUS": "CREATE"
    }
  ]),
  $['processedEmployeeNumbers'] must equalTo("00001,00001,00002,00001,00002")
]