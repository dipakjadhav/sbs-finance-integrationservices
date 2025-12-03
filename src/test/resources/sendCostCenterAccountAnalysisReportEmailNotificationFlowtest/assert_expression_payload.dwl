%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
	"fromAddress" :  "ESB-nonprod <enterpriseintegration-sbsesbnonprod-donotreply@sbs.com.au>",
	"toAddress" : "EISupport@sbs.com.au,dickens.wong@sbs.com.au",
	"subject" : "SBS GL Account Analysis Report - Cost Centre Files Distribution STATUS",
	"content" : "SBS GL Account Analysis Report - Cost Center Files Distribution Processing Summary:<BR /><BR />Process Started  at (dd-MM-yyyy HH:mm:ss): 21-07-2025 11:00:00<BR /><BR />Process Finished at (dd-MM-yyyy HH:mm:ss): 21-07-2025 11:05:00<BR /><BR />Processed Files Count: 5<BR /><BR />Total Files Count: 5<BR /><BR />",
	"contentType": "text/html"
})