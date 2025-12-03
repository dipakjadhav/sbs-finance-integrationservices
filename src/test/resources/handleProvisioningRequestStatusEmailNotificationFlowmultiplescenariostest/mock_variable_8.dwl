[
  {
    "empId": "testuser24",
    "feedRecordNumber": "41624",
    "recordStatus": "UPDATE",
    "concurRequest": {
      "schemas": [
        "urn:ietf:params:scim:api:messages:2.0:PatchOp"
      ],
      "Operations": [
        {
          "op": "replace",
          "path": "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User:employeeNumber",
          "value": "testuser24"
        },
        {
          "op": "replace",
          "path": "userName",
          "value": "test.user24@sbs.com.au"
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
            "formatted": "test user24",
            "middleName": "",
            "middleInitial": "",
            "familyName": "user24",
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
              "value": "test.user24@sbs.com.au",
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
              "value": null
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
                "employeeNumber": "testuser14"
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
    "provisionId": "6eb94c5e-f7a8-43ff-83cc-147f14a2af31"
  },
  {
    "empId": "testuser22",
    "feedRecordNumber": "41625",
    "recordStatus": "UPDATE",
    "concurRequest": {
      "schemas": [
        "urn:ietf:params:scim:api:messages:2.0:PatchOp"
      ],
      "Operations": [
        {
          "op": "replace",
          "path": "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User:employeeNumber",
          "value": "testuser22"
        },
        {
          "op": "replace",
          "path": "userName",
          "value": "test.user22@sbs.com.au"
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
            "formatted": "test user22",
            "middleName": "",
            "middleInitial": "",
            "familyName": "user22",
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
              "value": "test.user22@sbs.com.au",
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
                "employeeNumber": "testuser42"
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
    "provisionId": "b1470318-07e3-4452-b1eb-6c8ce4f4560e"
  },
  {
    "empId": "testuser21",
    "feedRecordNumber": "41626",
    "recordStatus": "UPDATE",
    "concurRequest": {
      "schemas": [
        "urn:ietf:params:scim:api:messages:2.0:PatchOp"
      ],
      "Operations": [
        {
          "op": "replace",
          "path": "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User:employeeNumber",
          "value": "testuser21"
        },
        {
          "op": "replace",
          "path": "userName",
          "value": "test.user21@sbs.com.au"
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
            "formatted": "test user21",
            "middleName": "",
            "middleInitial": "",
            "familyName": "user21",
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
              "value": "test.user21@sbs.com.au",
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
                "employeeNumber": "testuser14"
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
    "provisionId": "d9752ad3-2f0f-413d-895c-ec7bbf23e493"
  }
]