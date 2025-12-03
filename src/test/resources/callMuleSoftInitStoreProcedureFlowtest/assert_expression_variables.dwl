%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('correlationId'),
  haveKey('outboundHeaders'),
  haveKey('inputParameters'),
  $['correlationId'] must equalTo("f6563480-d381-11ed-b9d6-506b8dca2824"),
  $['outboundHeaders'] must equalTo({}),
  $['inputParameters'] must equalTo({
    "filename": "contentCreation_05042023051747.csv",
    "mulesoftstatus": "IC-034 - FTP to Oracle Success",
    "interfacekey": "IC-034",
    "batchid": "0",
    "batchcount": "0",
    "mulesofterror": "No Error"
  })
]