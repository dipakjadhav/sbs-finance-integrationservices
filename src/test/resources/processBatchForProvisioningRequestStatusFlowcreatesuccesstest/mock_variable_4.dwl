{
  "itemsPerPage": 1,
  "meta": {
    "location": "https://us2.api.concursolutions.com/profile/v4/provisions/eda1d5a2-6d39-496b-a059-98f12c479a78/status",
    "companyId": "e7f90e00-8b8e-4f33-8779-7558c12a9866",
    "created": "2024-11-12T13:03:05.000+0000",
    "lastModified": "2024-11-12T13:03:13.000+0000",
    "provisionType": "User",
    "resourceType": "ProvisionRequest",
    "correlationId": "e8ed9141eb05a881a1599933bc6ceef2",
    "completed": "2024-11-12T13:03:13.000+0000"
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
  "id": "eda1d5a2-6d39-496b-a059-98f12c479a78",
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