[
  {
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
    "provisionId": "f2d83d7a-fb84-4c2f-9128-0efbeacee9ab"
  }
]