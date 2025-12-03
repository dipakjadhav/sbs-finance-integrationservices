%dw 2.0
output application/java
---
(vars.recordsSubmittedToConcur default [])<< {
	"empId": vars.employeeProfileDatabaseRecord.EMPID,
	"feedRecordNumber": vars.employeeProfileDatabaseRecord.FEEDRECORDNUMBER,
	"recordStatus": vars.employeeProfileDatabaseRecord.RECORD_STATUS,
	"concurRequest": vars.concurUserRequestPayload,
	"provisionId": vars.concurUserResponsePayload.meta.provisionId
}