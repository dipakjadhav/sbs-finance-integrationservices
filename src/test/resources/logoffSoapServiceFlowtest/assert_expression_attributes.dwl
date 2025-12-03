%dw 2.0
import * from dw::test::Asserts
---
attributes must equalTo({
  "headers": {
    "cache-control": "no-cache",
    "content-type": "text/xml;charset=UTF-8",
    "date": "Tue, 31 May 2022 05:32:18 GMT",
    "expires": "Thu, 01 Jan 1970 00:00:00 GMT",
    "set-cookie": "INGRESSCOOKIE=1653975138.927.506733.660764; Path=/sbs/test2(/|\$)(.*); HttpOnly",
    "content-length": "520",
    "connection": "keep-alive",
    "strict-transport-security": "max-age=31536000; includeSubDomains; preload",
    "x-cdn": "Imperva",
    "x-iinfo": "14-48660202-48660214 SNNy RT(1653975135369 2344) q(0 0 0 -1) r(1 1) U6"
  },
  "reasonPhrase": "",
  "statusCode": 200
})