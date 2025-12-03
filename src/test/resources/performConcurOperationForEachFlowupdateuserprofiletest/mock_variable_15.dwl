{
  "schemas": [
    "urn:ietf:params:scim:api:messages:2.0:PatchOp"
  ],
  "Operations": [
    {
      "op": "replace",
      "path": "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User:employeeNumber",
      "value": "67890"
    },
    {
      "op": "replace",
      "path": "userName",
      "value": "test_user_02_update_success@sbs.com.au"
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
        "formatted": "Test User_02",
        "middleName": "",
        "middleInitial": "",
        "familyName": "User_02",
        "givenName": "Test",
        "honorificPrefix": "",
        "honorificSuffix": ""
      }
    },
    {
      "op": "replace",
      "path": "emails",
      "value": [
        {
          "verified": null,
          "type": "work",
          "value": "test_user_02_update_success@sbs.com.au",
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
          "value": "Content TV & Online"
        },
        {
          "id": "custom3",
          "value": "Commissioned Content"
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
          "value": "60020"
        },
        {
          "id": "custom8",
          "value": "000000"
        },
        {
          "id": "custom9",
          "value": "110104"
        },
        {
          "id": "custom10",
          "value": "4060"
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
      "path": "urn:ietf:params:scim:schemas:extension:spend:2.0:User:testEmployee",
      "value": false
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
      "op": "remove",
      "path": "urn:ietf:params:scim:schemas:extension:spend:2.0:Approver:report:approver"
    },
    {
      "op": "replace",
      "path": "urn:ietf:params:scim:schemas:extension:spend:2.0:User:ledgerCode",
      "value": "Oracle"
    }
  ]
}