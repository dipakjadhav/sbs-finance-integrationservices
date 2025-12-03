%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('userProvisioningRequestDetailedResponse'),
  haveKey('processedRecords'),
  haveKey('recordSubmittedToConcur'),
  $['userProvisioningRequestDetailedResponse'] must equalTo({
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
  }),
  $['processedRecords'] must equalTo([]),
  $['recordSubmittedToConcur'] must equalTo({
    "empId": "testuser23",
    "feedRecordNumber": "41623",
    "recordStatus": "UPDATE",
    "concurRequest": {
      "schemas": [
        "urn:ietf:params:scim:api:messages:2.0:PatchOp"
      ],
      "Operations": [
        {
          "op": "replace",
          "path": "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User:employeeNumber",
          "value": "testuser23"
        },
        {
          "op": "replace",
          "path": "userName",
          "value": "test.user23@sbs.com.au"
        },
        {
          "op": "replace",
          "path": "urn:ietf:params:scim:schemas:extension:spend:2.0:User:locale",
          "value": "en_US"
        },
        {
          "op": "replace",
          "path": "active",
          "value": true
        },
        {
          "op": "replace",
          "path": "name",
          "value": {
            "formatted": "test user23",
            "middleName": "",
            "middleInitial": "",
            "familyName": "user23",
            "givenName": "test",
            "honorificPrefix": "",
            "honorificSuffix": ""
          }
        },
        {
          "op": "replace",
          "path": "emails",
          "value": [
            {
              "verified": false,
              "type": "work",
              "value": "test.user23@sbs.com.au",
              "notifications": true
            }
          ]
        },
        {
          "op": "replace",
          "path": "urn:ietf:params:scim:schemas:extension:spend:2.0:User:customData",
          "value": [
            {
              "id": "custom1",
              "value": "SBS Technology"
            },
            {
              "id": "custom3",
              "value": "Technology Ops & Services"
            },
            {
              "id": "custom5",
              "value": "N"
            },
            {
              "id": "custom6",
              "value": "10"
            },
            {
              "id": "custom7",
              "value": "21010"
            },
            {
              "id": "custom8",
              "value": "000000"
            },
            {
              "id": "custom9",
              "value": "000000"
            },
            {
              "id": "custom10",
              "value": "0000"
            },
            {
              "id": "custom21",
              "value": "SBS AU"
            }
          ]
        },
        {
          "op": "replace",
          "path": "urn:ietf:params:scim:schemas:extension:spend:2.0:User:country",
          "value": "AU"
        },
        {
          "op": "replace",
          "path": "urn:ietf:params:scim:schemas:extension:spend:2.0:User:reimbursementCurrency",
          "value": "AUD"
        },
        {
          "op": "replace",
          "path": "entitlements",
          "value": [
            "Expense"
          ]
        },
        {
          "op": "remove",
          "path": "urn:ietf:params:scim:schemas:extension:spend:2.0:Role:roles[roleName eq \"EXP_APPROVER\"]"
        },
        {
          "op": "replace",
          "path": "urn:ietf:params:scim:schemas:extension:spend:2.0:Approver:report",
          "value": [
            {
              "approver": {
                "employeeNumber": "testuser10"
              },
              "primary": true
            }
          ]
        },
        {
          "op": "replace",
          "path": "urn:ietf:params:scim:schemas:extension:spend:2.0:User:ledgerCode",
          "value": "Oracle"
        }
      ]
    },
    "provisionId": "028dda50-b8d1-4576-9e9b-1952a0953f07"
  })
]