%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('delay'),
  haveKey('initVars'),
  haveKey('payloadlength'),
  haveKey('outputFilename'),
  haveKey('outboundHeaders'),
  haveKey('correlationId'),
  haveKey('failedRecords'),
  haveKey('receivedPayload'),
  haveKey('receivedDealCodes'),
  $['delay'] must equalTo({
    "delay": 500
  }),
  $['initVars'] must equalTo({
    "outputFilename": "contentCreation_05042023052940.csv",
    "interfaceKey": "IC-034",
    "status": "IC-034 - FTP to Oracle Success"
  }),
  $['payloadlength'] must equalTo(1),
  $['outputFilename'] must equalTo("contentCreation_05042023052940.csv"),
  $['outboundHeaders'] must equalTo({}),
  $['correlationId'] must equalTo(null),
  $['failedRecords'] must equalTo([]),
  $['receivedPayload'] must equalTo([
    {
      "DEAL_ID": "8056",
      "DEAL_CODE": "31216",
      "CONTRACT_REFERENCE": "31216",
      "DEAL_NAME": "Inspector Montalbano: The Voice Of The Violin",
      "DEAL_AKA": "",
      "SUB_TYPE": "",
      "SUB_TYPE_CODE": "",
      "BUDGET_INFO": "ACQUISITION",
      "BUDGET_INFO_CODE": "C13000",
      "BUS_UNIT": "[2074]Acq SBS One",
      "BUS_UNIT_ID": "",
      "CONTENT_ID": "M21622",
      "CONTENT_NAME": "INSPECTOR MONTALBANO: THE VOICE OF THE VIOLIN",
      "TITLE_AKA": "Inspector Montalbano And The Voice Of",
      "T_PGENRE": "Film",
      "T_PGENRE_ID": "2375",
      "T_SGENRE": "Saturday (Dont Use)",
      "T_SGENRE_ID": "2390"
    }
  ]),
  $['receivedDealCodes'] must equalTo("31216")
]