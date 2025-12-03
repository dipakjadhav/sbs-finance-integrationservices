{
  "itemsPerPage": 1,
  "meta": {
    "location": "https://us2.api.concursolutions.com/profile/v4/provisions/028dda50-b8d1-4576-9e9b-1952a0953f07/status",
    "companyId": "e7f90e00-8b8e-4f33-8779-7558c12a9866",
    "created": "2024-11-12T13:27:42.000+0000",
    "lastModified": "2024-11-12T13:27:46.000+0000",
    "provisionType": "User",
    "resourceType": "ProvisionRequest",
    "correlationId": "42ea061972f098c90510c6b7ccd24183",
    "completed": "2024-11-12T13:27:46.000+0000"
  },
  "operationsCount": {
    "total": 1,
    "success": 1,
    "failed": 0,
    "pending": 0
  },
  "totalResults": 1,
  "schemas": [
    "urn:ietf:params:scim:schemas:extension:concur:2.0:Provision:Status"
  ],
  "status": {
    "completed": true,
    "success": true
  },
  "id": "028dda50-b8d1-4576-9e9b-1952a0953f07",
  "operations": [
    {
      "id": "1",
      "status": {
        "completed": true,
        "success": true,
        "code": "200"
      },
      "resource": {
        "id": "339d5b8f-0703-4d6b-aede-79911bb79a87",
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
            "success": true,
            "code": "200",
            "result": "success"
          }
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