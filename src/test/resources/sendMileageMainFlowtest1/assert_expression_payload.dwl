%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "return": "0",
  "P_OUTPUT": null,
  "P_MESSAGE": null,
  "P_STATUS": "0"
})