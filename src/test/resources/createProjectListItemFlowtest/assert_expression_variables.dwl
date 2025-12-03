%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('requestRecord'),
  haveKey('initVars'),
  haveKey('operationName'),
  haveKey('bearerToken'),
  haveKey('successfullyProcessedRecords'),
  haveKey('outboundHeaders'),
  haveKey('correlationId'),
  haveKey('rootMessage'),
  haveKey('counter'),
  haveKey('failedRecords'),
  $['requestRecord'] must equalTo({
    "RECORD_STATUS": "CREATE",
    "PROJ_NAME": "Mechanical Services Replacemen",
    "PROJECT": "8C104"
  }),
  $['initVars'] must equalTo({
    "listItem": "projectName",
    "listItemId": "concurListItemIds.projectName",
    "coAId": "gWjQoBLhO4e0THJqzqxgyJo2bpsOjsN\$pfHw"
  }),
  $['operationName'] must equalTo("CREATE"),
  $['bearerToken'] must equalTo("Bearer eyJraWQiOiIxNDU1NjE0MDIyIiwiYWxnIjoiUlMyNTYiLCJ0eXAiOiJKV1QifQ.eyJjb25jdXIuc2NvcGVzIjpbIm9wZW5pZCIsInVzZXJfcmVhZCIsIkFUVEVORCIsIkNPTkZJRyIsIkNPTlJFUSIsIkVSRUNQVCIsIkVWUyIsIkVYUFJQVCIsIkNDQVJEIiwiQkFOSyIsIkVYVFJDVCIsIkZJU1ZDIiwiRk9QIiwiR0hPU1QiLCJJTUFHRSIsIklOU0dIVCIsIklOVlBNVCIsIklOVlBPIiwiSU5WVFYiLCJJTlZWRU4iLCJJVElORVIiLCJKT0JMT0ciLCJMSVNUIiwiTVRORyIsIk5PVElGIiwiUEFZQkFUIiwiUkNUSU1HIiwiU1VQU1ZDIiwiVEFYSU5WIiwiVFJWUFJGIiwiUEFTU1YiLCJDT01QRCIsIkVNRVJHIiwiVFNBSSIsIlRNQ1NQIiwiTUVESUMiLCJVTlVUWCIsIlRSVlBUUyIsIlRSVlJFUSIsIlRXUyIsIlVTRVIiLCJDT01QQU5ZIl0sImF1ZCI6IioiLCJjb25jdXIuYXBwSWQiOiIwZjExNTczMS0xZGY2LTQ4OWMtOGE0Zi05ODM0YTg3ODk1OTUiLCJzdWIiOiJmZDk4NDY5Mi03ZjY3LTQzNTItYWIwMS0wMGYyYzNmZDIxMGYiLCJpc3MiOiJodHRwczovL3VzMi5hcGkuY29uY3Vyc29sdXRpb25zLmNvbSIsImNvbmN1ci5wcm9maWxlIjoiaHR0cHM6Ly91czIuYXBpLmNvbmN1cnNvbHV0aW9ucy5jb20vcHJvZmlsZS92MS9wcmluY2lwYWxzL2ZkOTg0NjkyLTdmNjctNDM1Mi1hYjAxLTAwZjJjM2ZkMjEwZiIsImV4cCI6MTY3NTMyNzg3NiwiY29uY3VyLnZlcnNpb24iOjMsImNvbmN1ci50eXBlIjoidXNlciIsImNvbmN1ci5hcHAiOiJodHRwczovL3VzMi5hcGkuY29uY3Vyc29sdXRpb25zLmNvbS9wcm9maWxlL3YxL2FwcHMvMGYxMTU3MzEtMWRmNi00ODljLThhNGYtOTgzNGE4Nzg5NTk1IiwibmJmIjoxNjc1MzI0MjY2LCJjb25jdXIuY29tcGFueSI6ImU3ZjkwZTAwLThiOGUtNGYzMy04Nzc5LTc1NThjMTJhOTg2NiIsImlhdCI6MTY3NTMyNDI3Nn0.v_hRrJR_07MiTivoKh_kHnClSySNKfWfi6MpLz8Iuqy06At4Jj12SqwhNatsR1Lew3wtMIqMK3QbeL1KC1CutejNak9QAtLaddLIsFFPVTYB2QwPYeLTk4f4NXEZFhSwA80XbN_-NqfRmI6vQeayhPJjKFlQuG5p1kwjfc1MUhu-4ebj4NRhR7-wgFeDZJ---iGLUAAsu2_lPf7x_l-XXaadNbUm80u7HTqhinsUW2MHaXCp2lo_bTbIPT63uF7KPxe1JNeflCnqeJevmb1Dk_651qVqv5aF3UPb0hxLroe5YVMw1HHo3BEgM5NCoDZdRasCEWDLWBkUON4H1rMoLQ"),
  $['successfullyProcessedRecords'] must equalTo([
    {
      "request": {
        "RECORD_STATUS": "CREATE",
        "PROJ_NAME": "Mechanical Services Replacemen",
        "PROJECT": "8C104"
      },
      "response": {
        "ID": "ab91c0aefa6a4242a05",
        "URI": "quia",
        "": {}
      }
    }
  ]),
  $['outboundHeaders'] must equalTo({}),
  $['correlationId'] must equalTo("5e160ee0-a2ce-11ed-a06e-506b8dca2824"),
  $['rootMessage'] must equalTo({
    "inboundAttachmentNames": [],
    "exceptionPayload": null,
    "inboundPropertyNames": [],
    "outboundAttachmentNames": [],
    "outboundPropertyNames": [],
    "payload": [
      {
        "RECORD_STATUS": "CREATE",
        "PROJ_NAME": "Mechanical Services Replacemen",
        "PROJECT": "8C104"
      }
    ],
    "attributes": null
  }),
  $['counter'] must equalTo(1),
  $['failedRecords'] must equalTo([])
]