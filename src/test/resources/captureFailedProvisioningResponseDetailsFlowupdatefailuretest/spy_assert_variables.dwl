%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('userProvisioningRequestDetailedResponse'),
  haveKey('failedRecords'),
  haveKey('recordSubmittedToConcur'),
  $['userProvisioningRequestDetailedResponse'] must equalTo({
    "itemsPerPage": 1,
    "meta": {
      "location": "https://us2.api.concursolutions.com/profile/v4/provisions/2273b54e-2992-4cd5-8589-82d4c0eca762/status",
      "companyId": "e7f90e00-8b8e-4f33-8779-7558c12a9866",
      "created": "2024-11-12T14:04:12.000+0000",
      "lastModified": "2024-11-12T14:04:15.000+0000",
      "provisionType": "User",
      "resourceType": "ProvisionRequest",
      "correlationId": "d16d944e9c5ba571e23e028e015dbd58",
      "completed": "2024-11-12T14:04:15.000+0000"
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
    "id": "2273b54e-2992-4cd5-8589-82d4c0eca762",
    "operations": [
      {
        "id": "1",
        "status": {
          "completed": true,
          "success": false,
          "code": "207"
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
              "success": false,
              "code": "500",
              "result": "error"
            },
            "messages": [
              {
                "code": "INVALID_VALUE",
                "message": "Invalid Value: 'urn:ietf:params:scim:schemas:extension:spend:2.0:User:testEmployee'",
                "schemaPath": "urn:ietf:params:scim:schemas:extension:spend:2.0:User:testEmployee",
                "type": "warning"
              },
              {
                "code": "INVALID_VALUE",
                "message": "Invalid List Item",
                "schemaPath": "urn:ietf:params:scim:schemas:extension:spend:2.0:User:customData[id eq \"custom3\"].value",
                "type": "error"
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
  $['failedRecords'] must equalTo([]),
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
              "value": "Technology Ops & Services bad dept"
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
    "provisionId": "2273b54e-2992-4cd5-8589-82d4c0eca762"
  })
]