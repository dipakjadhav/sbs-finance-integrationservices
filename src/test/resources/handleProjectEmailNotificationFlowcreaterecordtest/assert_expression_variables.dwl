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
  haveKey('correlationId'),
  haveKey('failedRecords'),
  $['successTableContent'] must equalTo("<TABLE border = 1><THEAD><TH>PROJECT</TH></THEAD><TBODY><TR><TD>8C104 </TD></TR> </TBODY></TABLE>"),
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
  $['bearerToken'] must equalTo("Bearer eyJraWQiOiIxNDU1NjE0MDIyIiwiYWxnIjoiUlMyNTYiLCJ0eXAiOiJKV1QifQ.eyJjb25jdXIuc2NvcGVzIjpbIm9wZW5pZCIsInVzZXJfcmVhZCIsIkFUVEVORCIsIkNPTkZJRyIsIkNPTlJFUSIsIkVSRUNQVCIsIkVWUyIsIkVYUFJQVCIsIkNDQVJEIiwiQkFOSyIsIkVYVFJDVCIsIkZJU1ZDIiwiRk9QIiwiR0hPU1QiLCJJTUFHRSIsIklOU0dIVCIsIklOVlBNVCIsIklOVlBPIiwiSU5WVFYiLCJJTlZWRU4iLCJJVElORVIiLCJKT0JMT0ciLCJMSVNUIiwiTVRORyIsIk5PVElGIiwiUEFZQkFUIiwiUkNUSU1HIiwiU1VQU1ZDIiwiVEFYSU5WIiwiVFJWUFJGIiwiUEFTU1YiLCJDT01QRCIsIkVNRVJHIiwiVFNBSSIsIlRNQ1NQIiwiTUVESUMiLCJVTlVUWCIsIlRSVlBUUyIsIlRSVlJFUSIsIlRXUyIsIlVTRVIiLCJDT01QQU5ZIl0sImF1ZCI6IioiLCJjb25jdXIuYXBwSWQiOiIwZjExNTczMS0xZGY2LTQ4OWMtOGE0Zi05ODM0YTg3ODk1OTUiLCJzdWIiOiJmZDk4NDY5Mi03ZjY3LTQzNTItYWIwMS0wMGYyYzNmZDIxMGYiLCJpc3MiOiJodHRwczovL3VzMi5hcGkuY29uY3Vyc29sdXRpb25zLmNvbSIsImNvbmN1ci5wcm9maWxlIjoiaHR0cHM6Ly91czIuYXBpLmNvbmN1cnNvbHV0aW9ucy5jb20vcHJvZmlsZS92MS9wcmluY2lwYWxzL2ZkOTg0NjkyLTdmNjctNDM1Mi1hYjAxLTAwZjJjM2ZkMjEwZiIsImV4cCI6MTY3NTMyODA2OCwiY29uY3VyLnZlcnNpb24iOjMsImNvbmN1ci50eXBlIjoidXNlciIsImNvbmN1ci5hcHAiOiJodHRwczovL3VzMi5hcGkuY29uY3Vyc29sdXRpb25zLmNvbS9wcm9maWxlL3YxL2FwcHMvMGYxMTU3MzEtMWRmNi00ODljLThhNGYtOTgzNGE4Nzg5NTk1IiwibmJmIjoxNjc1MzI0NDU4LCJjb25jdXIuY29tcGFueSI6ImU3ZjkwZTAwLThiOGUtNGYzMy04Nzc5LTc1NThjMTJhOTg2NiIsImlhdCI6MTY3NTMyNDQ2OH0.v4QMvoTxBwAnEKGdEkFchIiex4ytg3L2R2n4FMEJ_sTEE9zdbYTN22F7vJJ5fZSVWD5tuwKuGwtdmKehjKWbWGZ41jYcpDxpJD80FPAe_av2oJMOR2bQdvliOa9G4U8CX_rfwQo1n5sPnJjv8A2o8q4x8ub2kgdrBCXuQIC5fXDr_xraje2JPXiZVOJ8YoFCGfQtooxUsONLj4uetPaFlINvg9_PRX3PrmViDTwya48Gm5NLw9dWn2C7p-wD45JyrTaJsKwYTsFQtgDzcgEaPXLpYOUzztoIj67MUYhqE1jkGlBu3XnCO4cgfZcJinaQ91JIf3A_4H2jZ23rdBrxgQ"),
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
  $['failureTableContent'] must equalTo(""),
  $['correlationId'] must equalTo("d00e1560-a2ce-11ed-bf42-506b8dca2824"),
  $['failedRecords'] must equalTo([])
]