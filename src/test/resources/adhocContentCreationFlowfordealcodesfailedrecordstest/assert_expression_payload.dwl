%dw 2.0
import * from dw::test::Asserts
---
payload.message must equalTo("Process Completed")