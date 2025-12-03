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
  $['bearerToken'] must equalTo("Bearer eyJraWQiOiIxNDU1NjE0MDIyIiwiYWxnIjoiUlMyNTYiLCJ0eXAiOiJKV1QifQ.eyJjb25jdXIuc2NvcGVzIjpbIm9wZW5pZCIsInVzZXJfcmVhZCIsIkFUVEVORCIsIkNPTkZJRyIsIkNPTlJFUSIsIkVSRUNQVCIsIkVWUyIsIkVYUFJQVCIsIkNDQVJEIiwiQkFOSyIsIkVYVFJDVCIsIkZJU1ZDIiwiRk9QIiwiR0hPU1QiLCJJTUFHRSIsIklOU0dIVCIsIklOVlBNVCIsIklOVlBPIiwiSU5WVFYiLCJJTlZWRU4iLCJJVElORVIiLCJKT0JMT0ciLCJMSVNUIiwiTVRORyIsIk5PVElGIiwiUEFZQkFUIiwiUkNUSU1HIiwiU1VQU1ZDIiwiVEFYSU5WIiwiVFJWUFJGIiwiUEFTU1YiLCJDT01QRCIsIkVNRVJHIiwiVFNBSSIsIlRNQ1NQIiwiTUVESUMiLCJVTlVUWCIsIlRSVlBUUyIsIlRSVlJFUSIsIlRXUyIsIlVTRVIiLCJDT01QQU5ZIl0sImF1ZCI6IioiLCJjb25jdXIuYXBwSWQiOiIwZjExNTczMS0xZGY2LTQ4OWMtOGE0Zi05ODM0YTg3ODk1OTUiLCJzdWIiOiJmZDk4NDY5Mi03ZjY3LTQzNTItYWIwMS0wMGYyYzNmZDIxMGYiLCJpc3MiOiJodHRwczovL3VzMi5hcGkuY29uY3Vyc29sdXRpb25zLmNvbSIsImNvbmN1ci5wcm9maWxlIjoiaHR0cHM6Ly91czIuYXBpLmNvbmN1cnNvbHV0aW9ucy5jb20vcHJvZmlsZS92MS9wcmluY2lwYWxzL2ZkOTg0NjkyLTdmNjctNDM1Mi1hYjAxLTAwZjJjM2ZkMjEwZiIsImV4cCI6MTY3NTMyNzY0NiwiY29uY3VyLnZlcnNpb24iOjMsImNvbmN1ci50eXBlIjoidXNlciIsImNvbmN1ci5hcHAiOiJodHRwczovL3VzMi5hcGkuY29uY3Vyc29sdXRpb25zLmNvbS9wcm9maWxlL3YxL2FwcHMvMGYxMTU3MzEtMWRmNi00ODljLThhNGYtOTgzNGE4Nzg5NTk1IiwibmJmIjoxNjc1MzI0MDM2LCJjb25jdXIuY29tcGFueSI6ImU3ZjkwZTAwLThiOGUtNGYzMy04Nzc5LTc1NThjMTJhOTg2NiIsImlhdCI6MTY3NTMyNDA0Nn0.myK8faWW4_wpPmqFVJfRc9XeGkQTWbmvtzG69UPveAgT025oXgaSNJxmOF747HYoIHtpKBaF5vr7wlO1bTey5yrvlr0Y0Xqb3Q7-vHMLY0E_gxd84ub8UcbNYP98qVZC8Q2GmvQesmkIdDNW1uOFBQsyTVvaZrjfP3ydnvhE9sSXoYZ1GGpRFoDK6BTV4X7G7pe9Us0mcCtdDnKyeFqf9H1mOTNulxhvLVT2LzQy-EWB77gp5BuomOGOc8MjkghxKyYYHx2sQvYmL3l0PHBOD17a0jvUtAqfJXVgQD8s34ApKlZt7013nkxD9OYtaFb44okQNMoQvXtMNY1Bp2ObNQ"),
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
  $['correlationId'] must equalTo("d4fd7850-a2cd-11ed-8fe9-506b8dca2824"),
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