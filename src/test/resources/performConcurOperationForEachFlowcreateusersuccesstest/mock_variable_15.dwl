{
  "schemas": [
    "urn:ietf:params:scim:schemas:core:2.0:User"
  ],
  "userName": "test_user_01_create_success@sbs.com.au",
  "active": true,
  "preferredLanguage": "en-US",
  "name": {
    "formatted": "TestUser_01",
    "middleName": "",
    "middleInitial": "",
    "familyName": "User_01",
    "givenName": "Test",
    "honorificPrefix": "",
    "honorificSuffix": ""
  },
  "dateOfBirth": "",
  "displayName": "TestUser_01",
  "nickName": "Test",
  "timezone": "Australia/Sydney",
  "title": "",
  "entitlements": [
    "Expense"
  ],
  "emergencyContacts": null,
  "addresses": [],
  "phoneNumbers": [],
  "emails": [
    {
      "verified": false,
      "type": "work",
      "value": "test_user_01_create_success@sbs.com.au",
      "notifications": true
    }
  ],
  "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User": {
    "employeeNumber": "12345",
    "companyId": "e7f90e00-8b8e-4f33-8779-7558c12a9866"
  },
  "urn:ietf:params:scim:schemas:extension:spend:2.0:User": {
    "locale": "en_US",
    "country": "AU",
    "ledgerCode": null,
    "reimbursementCurrency": "AUD",
    "testEmployee": false,
    "customData": [
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
  "urn:ietf:params:scim:schemas:extension:spend:2.0:Role": {
    "roles": []
  },
  "urn:ietf:params:scim:schemas:extension:spend:2.0:Approver": {
    "report": [
      {
        "approver": {
          "employeeNumber": "10914"
        },
        "primary": true
      }
    ]
  }
}