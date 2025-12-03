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
  $['queryInString'] must equalTo("update xxsbs.xxsbs_mileage_for_aurion SET STATUS='SUCCESS',LAST_UPDATED_BY='Mulesoft',LAST_UPDATE_DATE=sysdate where STATUS ='CREATE' and EMPLOYEE_NO IN (18760)"),
  $['initVars'] must equalTo({
    "call3function": "PAYROLL_ADDALLOW",
    "call3delimiter": ",",
    "call3wrapper": ""
  }),
  $['processedEmployeeNumbersArray'] must equalTo([
    "18760"
  ]),
  $['responseStringsArray'] must equalTo([
    {
      "return": "0",
      "P_OUTPUT": null,
      "P_MESSAGE": null,
      "P_STATUS": "0"
    }
  ]),
  $['P_TOKEN'] must equalTo("T0NGY='0Ew,&gt;uP^&amp;?7eQdC;f;6N1d[a!Z:&lt;s#xhfwktXPriBIRO]ms_CF2pq@Y"),
  $['p_PARAMETERS'] must equalTo("EMPLOYEE_NO=18760,VALIDATE_ONLY=F,ALLOWANCE_CODE=KM01A,UNITS=622,DATE=20210908"),
  $['responseStatus'] must equalTo({
    "return": "0",
    "P_OUTPUT": null,
    "P_MESSAGE": null,
    "P_STATUS": "0"
  }),
  $['EMPLOYEE_NO'] must equalTo("18760"),
  $['nonProcessedEmployeeNumbersArray'] must equalTo(""),
  $['mileageList'] must equalTo([
    {
      "VALIDATE_ONLY": "F",
      "KM_UNITS": 622,
      "EMPLOYEE_NO": "18760",
      "TRAVEL_DATE": "20210908",
      "ALLOWANCE_CODE": "KM01A",
      "STATUS": "CREATE"
    }
  ]),
  $['processedEmployeeNumbers'] must equalTo("18760")
]