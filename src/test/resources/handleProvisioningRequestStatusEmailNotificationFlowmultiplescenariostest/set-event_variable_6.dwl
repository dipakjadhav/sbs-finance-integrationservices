{
  "itemsPerPage": 1,
  "meta": {
    "location": "https://us2.api.concursolutions.com/profile/v4/provisions/d9752ad3-2f0f-413d-895c-ec7bbf23e493/status",
    "companyId": "e7f90e00-8b8e-4f33-8779-7558c12a9866",
    "created": "2024-11-12T15:27:26.000+0000",
    "lastModified": "2024-11-12T15:28:06.000+0000",
    "provisionType": "User",
    "resourceType": "ProvisionRequest",
    "correlationId": "75ad80d812a0b8993b0198a27f113099",
    "completed": "2024-11-12T15:28:06.000+0000"
  },
  "operationsCount": {
    "total": 1,
    "success": 0,
    "failed": 1,
    "pending": 0
  },
  "totalResults": 1,
  "schemas": [
    "urn:ietf:params:scim:schemas:extension:concur:2.0:Provision:Status"
  ],
  "status": {
    "completed": true,
    "success": false
  },
  "id": "d9752ad3-2f0f-413d-895c-ec7bbf23e493",
  "operations": [
    {
      "id": "1",
      "status": {
        "completed": true,
        "success": false,
        "code": "207"
      },
      "resource": {
        "id": "94a7d5ab-7a67-44f3-be5e-ca3e826b7033",
        "type": "User"
      },
      "extensions": [
        {
          "name": "urn:ietf:params:scim:schemas:extension:spend:2.0:WorkflowPreference",
          "status": {
            "completed": true,
            "success": true,
            "code": "200",
            "result": "no-op"
          }
        },
        {
          "name": "urn:ietf:params:scim:schemas:extension:spend:2.0:Role",
          "status": {
            "completed": true,
            "success": true,
            "code": "200",
            "result": "no-op"
          }
        },
        {
          "name": "urn:ietf:params:scim:schemas:extension:spend:2.0:UserPreference",
          "status": {
            "completed": true,
            "success": true,
            "code": "200",
            "result": "no-op"
          }
        },
        {
          "name": "urn:ietf:params:scim:schemas:extension:spend:2.0:Approver",
          "status": {
            "completed": true,
            "success": false,
            "code": "500",
            "result": "error"
          },
          "messages": [
            {
              "code": "INVALID_VALUE",
              "message": "Invalid Permissions for 'urn:ietf:params:scim:schemas:extension:spend:2.0:Approver:report[0].approver'",
              "schemaPath": "urn:ietf:params:scim:schemas:extension:spend:2.0:Approver:report[0].approver",
              "type": "error"
            }
          ]
        },
        {
          "name": "urn:ietf:params:scim:schemas:extension:spend:2.0:ApproverLimit",
          "status": {
            "completed": true,
            "success": true,
            "code": "200",
            "result": "no-op"
          }
        },
        {
          "name": "urn:ietf:params:scim:schemas:extension:enterprise:2.0:Payroll",
          "status": {
            "completed": true,
            "success": true,
            "code": "200",
            "result": "no-op"
          }
        },
        {
          "name": "urn:ietf:params:scim:schemas:core:2.0:User",
          "status": {
            "completed": true,
            "success": true,
            "code": "200",
            "result": "success"
          }
        },
        {
          "name": "urn:ietf:params:scim:schemas:extension:spend:2.0:InvoicePreference",
          "status": {
            "completed": true,
            "success": true,
            "code": "200",
            "result": "no-op"
          }
        },
        {
          "name": "urn:ietf:params:scim:schemas:extension:spend:2.0:User",
          "status": {
            "completed": true,
            "success": true,
            "code": "200",
            "result": "success"
          },
          "messages": [
            {
              "code": "INVALID_VALUE",
              "message": "Invalid Value: 'urn:ietf:params:scim:schemas:extension:spend:2.0:User:testEmployee'",
              "schemaPath": "urn:ietf:params:scim:schemas:extension:spend:2.0:User:testEmployee",
              "type": "warning"
            }
          ]
        },
        {
          "name": "urn:ietf:params:scim:schemas:extension:spend:2.0:Delegate",
          "status": {
            "completed": true,
            "success": true,
            "code": "200",
            "result": "no-op"
          }
        },
        {
          "name": "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User",
          "status": {
            "completed": true,
            "success": true,
            "code": "200",
            "result": "success"
          }
        },
        {
          "name": "urn:ietf:params:scim:schemas:extension:travel:2.0:User",
          "status": {
            "completed": true,
            "success": true,
            "code": "200",
            "result": "success"
          }
        }
      ]
    }
  ],
  "startIndex": 1
}