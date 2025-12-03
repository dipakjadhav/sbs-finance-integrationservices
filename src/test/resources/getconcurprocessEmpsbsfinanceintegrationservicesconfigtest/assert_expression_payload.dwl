%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "message": "Processed Employee Records. User provisioning request status processing triggered."
})