%dw 2.0
output application/json
---
{ 
	"responseStatus": payload,
	"processedRecords": distinctBy(vars.processedRecords, ((empId, numIndex) -> empId)),
    "failedRecords": distinctBy(vars.failedRecords, ((empId, numIndex) -> empId))
}