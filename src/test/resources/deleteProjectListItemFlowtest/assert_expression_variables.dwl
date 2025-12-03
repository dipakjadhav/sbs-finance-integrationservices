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
    "RECORD_STATUS": "DELETE",
    "PROJ_NAME": "Content Refurbishment Balcony",
    "PROJECT": "8T40"
  }),
  $['initVars'] must equalTo({
    "listItem": "projectName",
    "listItemId": "concurListItemIds.projectName",
    "coAId": "gWjQoBLhO4e0THJqzqxgyJo2bpsOjsN\$pfHw"
  }),
  $['operationName'] must equalTo("DELETE"),
  $['bearerToken'] must equalTo("Bearer eyJraWQiOiIxNDU1NjE0MDIyIiwiYWxnIjoiUlMyNTYiLCJ0eXAiOiJKV1QifQ.eyJjb25jdXIuc2NvcGVzIjpbIm9wZW5pZCIsInVzZXJfcmVhZCIsIkFUVEVORCIsIkNPTkZJRyIsIkNPTlJFUSIsIkVSRUNQVCIsIkVWUyIsIkVYUFJQVCIsIkNDQVJEIiwiQkFOSyIsIkVYVFJDVCIsIkZJU1ZDIiwiRk9QIiwiR0hPU1QiLCJJTUFHRSIsIklOU0dIVCIsIklOVlBNVCIsIklOVlBPIiwiSU5WVFYiLCJJTlZWRU4iLCJJVElORVIiLCJKT0JMT0ciLCJMSVNUIiwiTVRORyIsIk5PVElGIiwiUEFZQkFUIiwiUkNUSU1HIiwiU1VQU1ZDIiwiVEFYSU5WIiwiVFJWUFJGIiwiUEFTU1YiLCJDT01QRCIsIkVNRVJHIiwiVFNBSSIsIlRNQ1NQIiwiTUVESUMiLCJVTlVUWCIsIlRSVlBUUyIsIlRSVlJFUSIsIlRXUyIsIlVTRVIiLCJDT01QQU5ZIl0sImF1ZCI6IioiLCJjb25jdXIuYXBwSWQiOiIwZjExNTczMS0xZGY2LTQ4OWMtOGE0Zi05ODM0YTg3ODk1OTUiLCJzdWIiOiJmZDk4NDY5Mi03ZjY3LTQzNTItYWIwMS0wMGYyYzNmZDIxMGYiLCJpc3MiOiJodHRwczovL3VzMi5hcGkuY29uY3Vyc29sdXRpb25zLmNvbSIsImNvbmN1ci5wcm9maWxlIjoiaHR0cHM6Ly91czIuYXBpLmNvbmN1cnNvbHV0aW9ucy5jb20vcHJvZmlsZS92MS9wcmluY2lwYWxzL2ZkOTg0NjkyLTdmNjctNDM1Mi1hYjAxLTAwZjJjM2ZkMjEwZiIsImV4cCI6MTY3NTMzMDQzNywiY29uY3VyLnZlcnNpb24iOjMsImNvbmN1ci50eXBlIjoidXNlciIsImNvbmN1ci5hcHAiOiJodHRwczovL3VzMi5hcGkuY29uY3Vyc29sdXRpb25zLmNvbS9wcm9maWxlL3YxL2FwcHMvMGYxMTU3MzEtMWRmNi00ODljLThhNGYtOTgzNGE4Nzg5NTk1IiwibmJmIjoxNjc1MzI2ODI3LCJjb25jdXIuY29tcGFueSI6ImU3ZjkwZTAwLThiOGUtNGYzMy04Nzc5LTc1NThjMTJhOTg2NiIsImlhdCI6MTY3NTMyNjgzN30.sFXT6Orpou8PPSFJjLjwcT9gGh0HoQHlsnF9564UZAyDHS9DfZHbmc_VtsdonQ6To9vYbRatvYpWV6764-hEwAyp5DitDzDjotIZ6cIHdtANQIkuIOsAVJqpvh2IKZibiBkmMAzcZCThyOMpmXp6qeVTkYjVvk3d-U4kGhFbxWygzBcy6s9RHoADTsFDgflHk8go2uzHdjy6F6frvEOSR2J0oy6nlAzsr0RM1Xr4jEjGpC9YQjTqURYyu-CJZhGqITmydHICISqr9bij_UNVNZyU7gC2xgzDSCtc6UlkkTTvcMHcIqu5cLqXaK2qp47WMEAILOdX3zSo7HeFu_Gymg"),
  $['successfullyProcessedRecords'] must equalTo([]),
  $['outboundHeaders'] must equalTo({}),
  $['correlationId'] must equalTo("546dc580-a2d4-11ed-9a3f-506b8dca2824"),
  $['rootMessage'] must equalTo({
    "inboundAttachmentNames": [],
    "exceptionPayload": null,
    "inboundPropertyNames": [],
    "outboundAttachmentNames": [],
    "payload": [
      {
        "RECORD_STATUS": "DELETE",
        "PROJ_NAME": "Content Refurbishment Balcony",
        "PROJECT": "8T40"
      }
    ],
    "outboundPropertyNames": [],
    "attributes": null
  }),
  $['counter'] must equalTo(1),
  $['failedRecords'] must equalTo([])
]