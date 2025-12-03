%dw 2.0
output application/json
fun extractErrorMessage(errorPayload) = if ( not isEmpty(errorPayload."urn:ietf:params:scim:api:messages:concur:2.0:Error".messages.message) ) errorPayload."urn:ietf:params:scim:api:messages:concur:2.0:Error".messages.message joinBy ", " else errorPayload."urn:ietf:params:scim:api:messages:concur:2.0:Error".messages.code joinBy ", "
---
(vars.failedRecords default []) << {
	"empId": vars.employeeProfileDatabaseRecord.EMPID,
	"feedRecordNumber": vars.employeeProfileDatabaseRecord.FEEDRECORDNUMBER,
	"recordStatus": vars.employeeProfileDatabaseRecord.RECORD_STATUS,
	"errorMessages": [{
		"code": message.code,
		"message": if ( (lower(vars.employeeProfileDatabaseRecord.RECORD_STATUS) == "update")
			 and (vars.getConcurUserResponse.totalResults == 0) )  "No record found in Concur with username: " ++ (vars.employeeProfileDatabaseRecord.LOGINID default "")
else if ( error.errorType.identifier == "MULTIJOB" ) ("Unable to update " ++ (vars.employeeProfileDatabaseRecord.LOGINID default "") ++ ". User already exists with a different EmployeeNumber: " ++ (vars.getConcurUserResponse.Resources[0]."urn:ietf:params:scim:schemas:extension:enterprise:2.0:User".employeeNumber default ""))
else if ( (typeOf(error.errorMessage.payload) as String) == "Object" ) extractErrorMessage(error.errorMessage.payload)
else
  error.errorMessage.payload,
		"key": "",
        "value": ""
  }]
}