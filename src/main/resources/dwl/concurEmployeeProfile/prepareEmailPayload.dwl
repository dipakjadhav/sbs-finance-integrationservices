%dw 2.0
output application/json
---
{
	"responseStatus": vars.processStatus,
	"processedRecords": distinctBy(vars.processedRecords, ((empId, numIndex) -> empId)),
    "failedRecords": distinctBy(vars.failedRecords, ((empId, numIndex) -> empId))
}