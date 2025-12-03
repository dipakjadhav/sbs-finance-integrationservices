%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('concurUserRequestPayload'),
  haveKey('employeeProfileDatabaseRecords'),
  haveKey('employeeProfileDatabaseRecord'),
  haveKey('concurUserResponsePayload'),
  haveKey('recordsSubmittedToConcur'),
  haveKey('getConcurUserResponse'),
  $['concurUserRequestPayload'] must equalTo({
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
  }),
  $['employeeProfileDatabaseRecords'] must equalTo([
    {
      "FIRSTNAME": "test",
      "EXPENSEAPPROVER": null,
      "RECORD_STATUS": "CREATE",
      "CRNKEY": "AUD",
      "CUSTOM21": "SBS AU",
      "PASSWORD": null,
      "CUSTOM9": "000000",
      "LEDGERNAME": "Oracle",
      "CUSTOM3": "Technology Ops & Services",
      "CUSTOM1": "SBS Technology",
      "CUSTOM7": "21010",
      "CUSTOM8": "000000",
      "CUSTOM5": "N",
      "CUSTOM6": "10",
      "EMPID": "testuser23",
      "CTRYCODE": "AU",
      "LOGINID": "test.user23@sbs.com.au",
      "LOCALENAME": "en_US",
      "ISTESTEMP": "Y",
      "EXPENSEAPPROVEREMPLOYEEID": "testuser10",
      "ACTIVE": "Y",
      "EMAILADDRESS": "test.user23@sbs.com.au",
      "FEEDRECORDNUMBER": "41623",
      "LASTNAME": "user23",
      "CUSTOM10": "0000",
      "PROCESS_STATUS": null,
      "LEDGERKEY": "Oracle",
      "EXPENSEUSER": "Y"
    }
  ]),
  $['employeeProfileDatabaseRecord'] must equalTo({
    "FIRSTNAME": "test",
    "EXPENSEAPPROVER": null,
    "RECORD_STATUS": "UPDATE",
    "CRNKEY": "AUD",
    "CUSTOM21": "SBS AU",
    "PASSWORD": null,
    "CUSTOM9": "000000",
    "LEDGERNAME": "Oracle",
    "CUSTOM3": "Technology Ops & Services",
    "CUSTOM1": "SBS Technology",
    "CUSTOM7": "21010",
    "CUSTOM8": "000000",
    "CUSTOM5": "N",
    "CUSTOM6": "10",
    "EMPID": "testuser23",
    "CTRYCODE": "AU",
    "LOGINID": "test.user23@sbs.com.au",
    "LOCALENAME": "en_US",
    "ISTESTEMP": "Y",
    "EXPENSEAPPROVEREMPLOYEEID": "testuser10",
    "ACTIVE": "Y",
    "EMAILADDRESS": "test.user23@sbs.com.au",
    "FEEDRECORDNUMBER": "41623",
    "LASTNAME": "user23",
    "CUSTOM10": "0000",
    "PROCESS_STATUS": null,
    "LEDGERKEY": "Oracle",
    "EXPENSEUSER": "Y"
  }),
  $['concurUserResponsePayload'] must equalTo({
    "localeOverrides": {
      "preferenceEndDayViewHour": 20,
      "preferenceFirstDayOfWeek": "Sunday",
      "preferenceDateFormat": "mm/dd/yyyy",
      "preferenceCurrencySymbolLocation": "BeforeAmount",
      "preferenceHourMinuteSeparator": ":",
      "preferenceDistance": "mile",
      "preferenceDefaultCalView": "month",
      "preference24Hour": "H:mm AM/PM",
      "preferenceNumberFormat": "1,000.00",
      "preferenceStartDayViewHour": 8,
      "preferenceNegativeCurrencyFormat": null,
      "preferenceNegativeNumberFormat": null
    },
    "addresses": [],
    "timezone": "Australia/Sydney",
    "meta": {
      "resourceType": "User",
      "created": "2024-05-16T17:15:36.612821Z",
      "lastModified": "2024-11-12T12:39:33.974377367Z",
      "version": 148,
      "location": "https://us2.api.concursolutions.com/profile/identity/v4.1/Users/339d5b8f-0703-4d6b-aede-79911bb79a87",
      "statusUrl": "https://us2.api.concursolutions.com/profile/v4/provisions/d5afc312-998d-4052-9e29-e315545d4a0f/status",
      "provisionId": "d5afc312-998d-4052-9e29-e315545d4a0f"
    },
    "displayName": "Test user23",
    "name": {
      "formatted": "test user23",
      "middleName": null,
      "middleInitial": null,
      "familyName": "user23",
      "givenName": "test",
      "honorificPrefix": null,
      "honorificSuffix": null
    },
    "phoneNumbers": [],
    "emergencyContacts": null,
    "preferredLanguage": "en-US",
    "title": null,
    "dateOfBirth": null,
    "nickName": "Test",
    "schemas": [
      "urn:ietf:params:scim:schemas:core:2.0:User",
      "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User"
    ],
    "active": true,
    "id": "339d5b8f-0703-4d6b-aede-79911bb79a87",
    "emails": [
      {
        "verified": false,
        "type": "work",
        "value": "test.user23@sbs.com.au",
        "notifications": true
      }
    ],
    "userName": "test.user23@sbs.com.au",
    "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User": {
      "terminationDate": null,
      "companyId": "e7f90e00-8b8e-4f33-8779-7558c12a9866",
      "costCenter": null,
      "startDate": "2024-05-16T23:58:00Z",
      "employeeNumber": "testuser23"
    }
  }),
  $['recordsSubmittedToConcur'] must equalTo([
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
      "provisionId": "d5afc312-998d-4052-9e29-e315545d4a0f"
    }
  ]),
  $['getConcurUserResponse'] must equalTo({
    "schemas": [
      "urn:ietf:params:scim:api:messages:2.0:ListResponse"
    ],
    "totalResults": 1,
    "startIndex": 1,
    "itemsPerPage": 1,
    "Resources": [
      {
        "localeOverrides": {
          "preferenceEndDayViewHour": 20,
          "preferenceFirstDayOfWeek": "Sunday",
          "preferenceDateFormat": "mm/dd/yyyy",
          "preferenceCurrencySymbolLocation": "BeforeAmount",
          "preferenceHourMinuteSeparator": ":",
          "preferenceDistance": "mile",
          "preferenceDefaultCalView": "month",
          "preference24Hour": "H:mm AM/PM",
          "preferenceNumberFormat": "1,000.00",
          "preferenceStartDayViewHour": 8,
          "preferenceNegativeCurrencyFormat": null,
          "preferenceNegativeNumberFormat": null
        },
        "addresses": [],
        "timezone": "Australia/Sydney",
        "meta": {
          "resourceType": "User",
          "created": "2024-05-16T17:15:36.612821Z",
          "lastModified": "2024-11-12T12:34:45.880060348Z",
          "version": 147,
          "location": "https://us2.api.concursolutions.com/profile/identity/v4/Users/339d5b8f-0703-4d6b-aede-79911bb79a87"
        },
        "displayName": "Test user23",
        "name": {
          "honorificSuffix": null,
          "middleInitial": null,
          "formatted": "test user23",
          "familyName": "user23",
          "givenName": "test",
          "familyNamePrefix": null,
          "honorificPrefix": null,
          "middleName": null
        },
        "phoneNumbers": [],
        "emergencyContacts": null,
        "preferredLanguage": "en-US",
        "title": null,
        "dateOfBirth": null,
        "nickName": "Test",
        "schemas": [
          "urn:ietf:params:scim:schemas:core:2.0:User",
          "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User"
        ],
        "active": true,
        "id": "339d5b8f-0703-4d6b-aede-79911bb79a87",
        "emails": [
          {
            "verified": false,
            "type": "work",
            "value": "test.user23@sbs.com.au",
            "notifications": true
          }
        ],
        "userName": "test.user23@sbs.com.au",
        "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User": {
          "terminationDate": null,
          "companyId": "e7f90e00-8b8e-4f33-8779-7558c12a9866",
          "costCenter": null,
          "startDate": "2024-05-16T23:58:00Z",
          "employeeNumber": "testuser23"
        }
      }
    ]
  })
]