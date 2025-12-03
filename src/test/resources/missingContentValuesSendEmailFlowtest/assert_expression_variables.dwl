%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('contentRecordDetailsHtml'),
  haveKey('payloadlength'),
  haveKey('retriggerURL'),
  haveKey('outboundHeaders'),
  haveKey('correlationId'),
  haveKey('failedRecords'),
  haveKey('receivedPayload'),
  haveKey('receivedDealCodes'),
  $['contentRecordDetailsHtml'] must equalTo("<TR><TD>12808</TD><TD>Albania 1 & 2</TD><TD></TD><TD>[2074]Acq SBS One</TD><TD><a href=\\\"http://dvwesblb/sbs/ibms/fin/finance-contentcreation/deals?dealcodes=12808\\\">Click</a></TD></TR>"),
  $['payloadlength'] must equalTo(0),
  $['retriggerURL'] must equalTo("http://dvwesblb/sbs/ibms/fin/finance-contentcreation/deals?dealcodes="),
  $['outboundHeaders'] must equalTo({}),
  $['correlationId'] must equalTo(null),
  $['failedRecords'] must equalTo([
    {
      "DEAL_ID": "113",
      "DEAL_CODE": "12808",
      "CONTRACT_REFERENCE": "12808",
      "DEAL_NAME": "Albania 1 & 2",
      "DEAL_AKA": null,
      "SUB_TYPE": null,
      "SUB_TYPE_CODE": null,
      "BUDGET_INFO": null,
      "BUDGET_INFO_CODE": null,
      "BUS_UNIT": "[2074]Acq SBS One",
      "BUS_UNIT_ID": null,
      "CONTENT_ID": "T51082",
      "CONTENT_NAME": "ALBANIA 1 & 2",
      "TITLE_AKA": "Albania",
      "T_PGENRE": "Factual",
      "T_PGENRE_ID": "523",
      "T_SGENRE": "Documentaries One Off",
      "T_SGENRE_ID": "546"
    }
  ]),
  $['receivedPayload'] must equalTo([]),
  $['receivedDealCodes'] must equalTo("12808")
]