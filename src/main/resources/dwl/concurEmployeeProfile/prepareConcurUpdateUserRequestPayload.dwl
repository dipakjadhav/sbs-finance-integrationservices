%dw 2.0
fun prepareConditionalArray(arr, conditionAndValueArray) =
  conditionAndValueArray filter ((item, index) -> item.condition) map ((item, index) -> item.value)
fun getAproverRoleOperation(EXPENSEAPPROVER) = do {
	var addApproverRole = {
		"op": "add",
		"path": "urn:ietf:params:scim:schemas:extension:spend:2.0:Role:roles",
		"value": [{
			"roleName": "EXP_APPROVER"
		}]
	}
	var removeApproverRole = {
		"op": "remove",
		"path": "urn:ietf:params:scim:schemas:extension:spend:2.0:Role:roles[roleName eq \"EXP_APPROVER\"]"
	}
	---
	if ( upper(EXPENSEAPPROVER) == "Y" ) addApproverRole
  else
    removeApproverRole
}
fun getAproverIdOperation(ExpenseApproverEmployeeID) = do {
	var addApproverId =  {
		"op": "replace",
		"path": "urn:ietf:params:scim:schemas:extension:spend:2.0:Approver:report",
		"value": [{
			"approver": {
				"employeeNumber": ExpenseApproverEmployeeID
			},
			"primary": true
		}]
	}
	var removeApproverId = {
		"op": "remove",
		"path": "urn:ietf:params:scim:schemas:extension:spend:2.0:Approver:report:approver"
	}
	---
	if ( not isEmpty(ExpenseApproverEmployeeID) ) addApproverId
  else
    removeApproverId
}
output application/json
---
{
	"schemas": ["urn:ietf:params:scim:api:messages:2.0:PatchOp"],
	"Operations": [{
		"op": "replace",
		"path": "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User:employeeNumber",
		"value": vars.employeeProfileDatabaseRecord.EMPID
	},
    {
		"op": "replace",
		"path": "userName",
		"value": vars.employeeProfileDatabaseRecord.LOGINID
	},
    {
		"op": "replace",
		"path": "urn:ietf:params:scim:schemas:extension:spend:2.0:User:locale",
		"value": vars.employeeProfileDatabaseRecord.LOCALENAME
	},
    {
		"op": "replace",
		"path": "active",
		"value": if ( upper(vars.employeeProfileDatabaseRecord.ACTIVE) == 'Y' ) true
        else
          false
	},
    {
		"op": "replace",
		"path": "name",
		"value": {
			"formatted": vars.employeeProfileDatabaseRecord.FIRSTNAME ++ " " ++ vars.employeeProfileDatabaseRecord.LASTNAME,
			"middleName": "",
			"middleInitial": "",
			"familyName": vars.employeeProfileDatabaseRecord.LASTNAME,
			"givenName": vars.employeeProfileDatabaseRecord.FIRSTNAME,
			"honorificPrefix": "",
			"honorificSuffix": ""
		}
	},
    {
		"op": "replace",
		"path": "emails",
		"value": [{
			"verified": vars.getConcurUserResponse.Resources[0].emails[0].verified,
			"type": "work",
			"value": vars.employeeProfileDatabaseRecord.EMAILADDRESS,
			"notifications": true
		}]
	},
    {
		"op": "replace",
		"path": "urn:ietf:params:scim:schemas:extension:spend:2.0:User:customData",
		"value": ["custom1", "custom3", "custom5", "custom6", "custom7", "custom8", "custom9", "custom10", "custom21"] map ((id) -> {
			id: id,
			value: vars.employeeProfileDatabaseRecord[upper(id)]
		})
	},
    {
		"op": "replace",
		"path": "urn:ietf:params:scim:schemas:extension:spend:2.0:User:country",
		"value": vars.employeeProfileDatabaseRecord.CTRYCODE
	},
    {
		"op": "replace",
		"path": "urn:ietf:params:scim:schemas:extension:spend:2.0:User:reimbursementCurrency",
		"value": vars.employeeProfileDatabaseRecord.CRNKEY
	},
    {
		"op": "replace",
		"path": "entitlements",
		"value": prepareConditionalArray([], [{
			"condition": upper(vars.employeeProfileDatabaseRecord.EXPENSEUSER) == 'Y',
			"value": 'Expense'
		}])
	},
    getAproverRoleOperation(vars.employeeProfileDatabaseRecord.EXPENSEAPPROVER),
    getAproverIdOperation(vars.employeeProfileDatabaseRecord.EXPENSEAPPROVEREMPLOYEEID),
    {
		"op": "replace",
		"path": "urn:ietf:params:scim:schemas:extension:spend:2.0:User:ledgerCode",
		"value": vars.employeeProfileDatabaseRecord.LEDGERNAME
	}]
}