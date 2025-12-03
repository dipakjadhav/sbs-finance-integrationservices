%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('outboundHeaders'),
  haveKey('correlationId'),
  haveKey('rootMessage'),
  haveKey('requestMethod'),
  haveKey('counter'),
  haveKey('requestPath'),
  $['outboundHeaders'] must equalTo({}),
  $['correlationId'] must equalTo(null),
  $['rootMessage'] must equalTo({
    "inboundAttachmentNames": [],
    "exceptionPayload": null,
    "inboundPropertyNames": [],
    "outboundAttachmentNames": [],
    "payload": [
      {
        "RECORD_STATUS": "CREATE"
      }
    ],
    "outboundPropertyNames": [],
    "attributes": null
  }),
  $['requestMethod'] must equalTo("POST"),
  $['counter'] must equalTo(1),
  $['requestPath'] must equalTo("/projects")
]