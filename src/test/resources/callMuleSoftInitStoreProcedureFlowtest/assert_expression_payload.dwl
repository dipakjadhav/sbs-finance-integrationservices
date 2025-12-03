%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "x_status": 1
})