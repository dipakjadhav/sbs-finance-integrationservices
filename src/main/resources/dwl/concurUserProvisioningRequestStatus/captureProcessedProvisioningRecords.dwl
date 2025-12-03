%dw 2.0
output application/java
---
(vars.processedRecords default [])<< {
	"empId": vars.recordSubmittedToConcur.empId,
	"feedRecordNumber": vars.recordSubmittedToConcur.feedRecordNumber,
	"recordStatus": vars.recordSubmittedToConcur.recordStatus,
	"provisionId": vars.recordSubmittedToConcur.provisionId
}