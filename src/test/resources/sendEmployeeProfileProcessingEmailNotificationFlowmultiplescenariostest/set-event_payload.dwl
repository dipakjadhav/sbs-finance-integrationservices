{
  "responseStatus": "Processed Provisioning Request Status",
  "processedRecords": [
    {
      "empId": "testuser23",
      "feedRecordNumber": "41623",
      "recordStatus": "UPDATE",
      "provisionId": "9ff5ac61-1780-4da6-acdc-e8e05481959a"
    }
  ],
  "failedRecords": [
    {
      "empId": "testuser24",
      "feedRecordNumber": "41624",
      "recordStatus": "UPDATE",
      "errorMessages": [
        {
          "code": "BAD_REQUEST",
          "message": "Request is unparsable, syntactically incorrect, or violates schema.",
          "key": "",
          "value": "Required fields missing",
          "statusCode": "400"
        }
      ]
    },
    {
      "empId": "testuser22",
      "feedRecordNumber": "41625",
      "recordStatus": "UPDATE",
      "errorMessages": [
        {
          "code": "INVALID_VALUE",
          "message": "Invalid User ID",
          "key": "Approver",
          "value": "testuser42",
          "statusCode": "500"
        }
      ]
    },
    {
      "empId": "testuser21",
      "feedRecordNumber": "41626",
      "recordStatus": "UPDATE",
      "errorMessages": [
        {
          "code": "INVALID_VALUE",
          "message": "Invalid Permissions for 'urn:ietf:params:scim:schemas:extension:spend:2.0:Approver:report[0].approver'",
          "key": "Approver",
          "value": "testuser14",
          "statusCode": "500"
        }
      ]
    }
  ]
}