%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('successTableContent'),
  haveKey('requestRecord'),
  haveKey('initVars'),
  haveKey('operationName'),
  haveKey('bearerToken'),
  haveKey('successfullyProcessedRecords'),
  haveKey('outboundHeaders'),
  haveKey('failureTableContent'),
  haveKey('responseStatus'),
  haveKey('correlationId'),
  haveKey('failedRecords'),
  $['successTableContent'] must equalTo("<TABLE border = 1><THEAD><TH>PROJECT</TH><TH>TASK</TH></THEAD><TBODY><TR><TD>CA2022</TD><TD>CS0236 </TD></TR> </TBODY></TABLE>"),
  $['requestRecord'] must equalTo({
    "TASK_NAME": "CGU A level Playing ",
    "TASK": "CS0236",
    "RECORD_STATUS": "CREATE",
    "PROJ_NAME": "Client Activation 2021-22 FY",
    "PROJECT": "CA2022"
  }),
  $['initVars'] must equalTo({
    "listItem": "projectTask",
    "listItemId": "concurListItemIds.projectTask",
    "coAId": "gWjQoBLhO4e0THJqzqxgyJo2bpsOjsN\$pfHw"
  }),
  $['operationName'] must equalTo("CREATE"),
  $['bearerToken'] must equalTo("Bearer eyJraWQiOiIxNDU1NjE0MDIyIiwiYWxnIjoiUlMyNTYiLCJ0eXAiOiJKV1QifQ.eyJjb25jdXIuc2NvcGVzIjpbIm9wZW5pZCIsInVzZXJfcmVhZCIsIkFUVEVORCIsIkNPTkZJRyIsIkNPTlJFUSIsIkVSRUNQVCIsIkVWUyIsIkVYUFJQVCIsIkNDQVJEIiwiQkFOSyIsIkVYVFJDVCIsIkZJU1ZDIiwiRk9QIiwiR0hPU1QiLCJJTUFHRSIsIklOU0dIVCIsIklOVlBNVCIsIklOVlBPIiwiSU5WVFYiLCJJTlZWRU4iLCJJVElORVIiLCJKT0JMT0ciLCJMSVNUIiwiTVRORyIsIk5PVElGIiwiUEFZQkFUIiwiUkNUSU1HIiwiU1VQU1ZDIiwiVEFYSU5WIiwiVFJWUFJGIiwiUEFTU1YiLCJDT01QRCIsIkVNRVJHIiwiVFNBSSIsIlRNQ1NQIiwiTUVESUMiLCJVTlVUWCIsIlRSVlBUUyIsIlRSVlJFUSIsIlRXUyIsIlVTRVIiLCJDT01QQU5ZIl0sImF1ZCI6IioiLCJjb25jdXIuYXBwSWQiOiIwZjExNTczMS0xZGY2LTQ4OWMtOGE0Zi05ODM0YTg3ODk1OTUiLCJzdWIiOiJmZDk4NDY5Mi03ZjY3LTQzNTItYWIwMS0wMGYyYzNmZDIxMGYiLCJpc3MiOiJodHRwczovL3VzMi5hcGkuY29uY3Vyc29sdXRpb25zLmNvbSIsImNvbmN1ci5wcm9maWxlIjoiaHR0cHM6Ly91czIuYXBpLmNvbmN1cnNvbHV0aW9ucy5jb20vcHJvZmlsZS92MS9wcmluY2lwYWxzL2ZkOTg0NjkyLTdmNjctNDM1Mi1hYjAxLTAwZjJjM2ZkMjEwZiIsImV4cCI6MTY3NTM2NTg0MSwiY29uY3VyLnZlcnNpb24iOjMsImNvbmN1ci50eXBlIjoidXNlciIsImNvbmN1ci5hcHAiOiJodHRwczovL3VzMi5hcGkuY29uY3Vyc29sdXRpb25zLmNvbS9wcm9maWxlL3YxL2FwcHMvMGYxMTU3MzEtMWRmNi00ODljLThhNGYtOTgzNGE4Nzg5NTk1IiwibmJmIjoxNjc1MzYyMjMxLCJjb25jdXIuY29tcGFueSI6ImU3ZjkwZTAwLThiOGUtNGYzMy04Nzc5LTc1NThjMTJhOTg2NiIsImlhdCI6MTY3NTM2MjI0MX0.Er1_d_bbgfVjF2jlCptP9diP0qr1PS6_Wl5RZJOF1TP9eSLZxAyaXZEFPWc-e0_O0uGVDwyNSlFMpZtdthdrca15IO2MCGHhTIOoQ7jnRZvkoFsEmr2Sj9w_-mUbjrWLKhQFPneakN-L7hUSFlxQDmvkRE98d1WOkOw1UkYYpj6d7hH1y_ZtuVkoWTr84TWBdraCQckAriJOCgKjGy8lxlmPeyRtSZcULP09tdaDU2a1VncV5BnOn5TiQEOhZOLNVJsQExEiJOn8SJxGaE3LOX4HI0aOsa9rn3WWDh91G9ker3C0lrfou9JTTKmXyhEAeftotbDpIE8tdjv5aS2XcQ"),
  $['successfullyProcessedRecords'] must equalTo([
    {
      "request": {
        "TASK_NAME": "CGU A level Playing ",
        "TASK": "CS0236",
        "RECORD_STATUS": "CREATE",
        "PROJ_NAME": "Client Activation 2021-22 FY",
        "PROJECT": "CA2022"
      },
      "response": {
        "ID": "48da39d1391c4dca973",
        "URI": "fugit,",
        "": {}
      }
    }
  ]),
  $['outboundHeaders'] must equalTo({}),
  $['failureTableContent'] must equalTo(""),
  $['responseStatus'] must equalTo({
    "message": "Successfully Processed 1 out of 1 record(s) for listId ="
  }),
  $['correlationId'] must equalTo("c2b526d0-a326-11ed-8c9f-506b8dca2824"),
  $['failedRecords'] must equalTo([])
]