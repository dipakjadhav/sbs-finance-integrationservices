%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "subject": "Concur Projects Processing - Status",
  "body": "<H2>Concur Projects Processing - Status</H2><BR /><BR /><H3>Successfully processed records are:</H3><BR /><TABLE border = 1><THEAD><TH>PROJECT</TH><TH>TASK</TH></THEAD><TBODY><TR><TD>CA2022</TD><TD>CS0236 </TD></TR> </TBODY></TABLE><BR />",
  "contentType": "text/html"
})