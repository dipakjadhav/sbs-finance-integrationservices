{
  "itemsPerPage": 1,
  "meta": {
    "location": "https://us2.api.concursolutions.com/profile/v4/provisions/d9dec1a5-5862-4776-9d84-dc5afa831a1b/status",
    "companyId": "e7f90e00-8b8e-4f33-8779-7558c12a9866",
    "created": "2024-11-12T17:15:14.000+0000",
    "lastModified": "2024-11-12T17:15:17.000+0000",
    "provisionType": "User",
    "resourceType": "ProvisionRequest",
    "correlationId": "c7769775caea3e95623d4445e84bc3d9",
    "completed": "2024-11-12T17:15:17.000+0000"
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
  "id": "d9dec1a5-5862-4776-9d84-dc5afa831a1b",
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