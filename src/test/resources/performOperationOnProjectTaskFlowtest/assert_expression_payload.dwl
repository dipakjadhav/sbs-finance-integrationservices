%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "message": "Successfully Processed 1 out of 1 record(s) for listId ="
})