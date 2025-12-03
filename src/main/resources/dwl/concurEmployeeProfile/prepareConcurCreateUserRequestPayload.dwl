%dw 2.0

fun prepareConditionalArray(arr, conditionAndValueArray) =
  conditionAndValueArray filter ((item, index) -> item.condition) map ((item, index) -> item.value)
output application/json  
---
{
  "schemas": ["urn:ietf:params:scim:schemas:core:2.0:User"],
  "userName": vars.employeeProfileDatabaseRecord.LOGINID, // loginID
  "active":  // Active
    if (upper(vars.employeeProfileDatabaseRecord.ACTIVE) == 'Y')
      true
    else
      false,
  "preferredLanguage": "en-US",
  "name": {
    "formatted": vars.employeeProfileDatabaseRecord.FIRSTNAME ++ "" ++ vars.employeeProfileDatabaseRecord.LASTNAME, // FirstName LastName
    "middleName": "",
    "middleInitial": "",
    "familyName": vars.employeeProfileDatabaseRecord.LASTNAME, // LastName
    "givenName": vars.employeeProfileDatabaseRecord.FIRSTNAME, // FirstName
    "honorificPrefix": "",
    "honorificSuffix": ""
  },
  "dateOfBirth": "",
  "displayName": (vars.employeeProfileDatabaseRecord.FIRSTNAME default "") ++ "" ++ (vars.employeeProfileDatabaseRecord.LASTNAME default ""), // FirstName LastName
  "nickName": vars.employeeProfileDatabaseRecord.FIRSTNAME, // FirstName
  "timezone": "Australia/Sydney",
  "title": "",
  "entitlements": prepareConditionalArray([], [ // Expense
    {
      "condition": upper(vars.employeeProfileDatabaseRecord.EXPENSEUSER default "N") == 'Y',
      "value": 'Expense'
    }
  ]),
  "emergencyContacts": null,
  "addresses": [],
  "phoneNumbers": [],
  "emails": [ // EmailAddress
    {
      "verified": false,
      "type": "work",
      "value": vars.employeeProfileDatabaseRecord.EMAILADDRESS,
      "notifications": true
    }
  ],
  "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User": {
    "employeeNumber": vars.employeeProfileDatabaseRecord.EMPID, // EmpId
    "companyId": vars.configValues.companyId default ""
  },
  "urn:ietf:params:scim:schemas:extension:spend:2.0:User": {
    "locale": vars.employeeProfileDatabaseRecord.LOCALENAME, // LocaleName
    "country": vars.employeeProfileDatabaseRecord.CTRYCODE, // CtryCode
    "ledgerCode": vars.employeeProfileDatabaseRecord.LedgerName, // LedgerName
    "reimbursementCurrency": vars.employeeProfileDatabaseRecord.CRNKEY, // CRNKEY
    "testEmployee":  // ISTESTEMP
      if (upper(vars.employeeProfileDatabaseRecord.ISTESTEMP) == 'Y')
        true
      else
        false,
    "customData": ["custom1", "custom3", "custom5", "custom6", "custom7", "custom8", "custom9", "custom10", "custom21"] map ((id) -> { // Custom1 through Custom21
      id: id,
      value: vars.employeeProfileDatabaseRecord[upper(id)]
    })
  },
  "urn:ietf:params:scim:schemas:extension:spend:2.0:Role": { // EXPENSEAPPROVER
    "roles": prepareConditionalArray([], [
      {
        "condition": upper(vars.employeeProfileDatabaseRecord.EXPENSEAPPROVER) == 'Y',
        "value": {
          "roleName": "EXP_APPROVER"
        }
      }
    ])
  },
  "urn:ietf:params:scim:schemas:extension:spend:2.0:Approver": { // EXPENSEAPPROVEREMPLOYEEID
    "report": prepareConditionalArray([], [
      {
        "condition": (not isEmpty(vars.employeeProfileDatabaseRecord.EXPENSEAPPROVEREMPLOYEEID)),
        "value": {
          "approver": {
            "employeeNumber": vars.employeeProfileDatabaseRecord.EXPENSEAPPROVEREMPLOYEEID
          },
          "primary": true
        }
      }
    ])
  }
}