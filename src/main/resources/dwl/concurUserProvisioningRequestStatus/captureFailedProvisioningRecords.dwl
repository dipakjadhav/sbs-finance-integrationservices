%dw 2.0
output application/java
---
(vars.failedRecords default []) << 
{
	"empId": vars.recordSubmittedToConcur.empId,
	"feedRecordNumber": vars.recordSubmittedToConcur.feedRecordNumber,
	"recordStatus": vars.recordSubmittedToConcur.recordStatus,
	"errorMessages": vars.errorInputMappings
}