%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('outboundHeaders'),
  haveKey('correlationId'),
  haveKey('initVars'),
  haveKey('failedRecords'),
  haveKey('operationName'),
  haveKey('successfullyProcessedRecords'),
  $['outboundHeaders'] must equalTo({}),
  $['correlationId'] must equalTo("f4ceb5e0-a2c8-11ed-a0d3-506b8dca2824"),
  $['initVars'] must equalTo({
    "listItem": "projectName",
    "listItemId": "concurListItemIds.projectName",
    "coAId": "gWjQoBLhO4e0THJqzqxgyJo2bpsOjsN\$pfHw"
  }),
  $['failedRecords'] must equalTo([]),
  $['operationName'] must equalTo("CREATE"),
  $['successfullyProcessedRecords'] must equalTo([])
]