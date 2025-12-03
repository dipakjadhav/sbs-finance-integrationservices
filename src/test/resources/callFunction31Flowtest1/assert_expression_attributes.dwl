%dw 2.0
import * from dw::test::Asserts
---
attributes must equalTo({
  "headers": {
    "cache-control": "no-cache",
    "content-type": "text/xml;charset=UTF-8",
    "date": "Mon, 18 Jul 2022 04:50:45 GMT",
    "expires": "Thu, 01 Jan 1970 00:00:00 GMT",
    "set-cookie": "INGRESSCOOKIE=1658119846.34.313075.508996|f412b5d36666cc3458fefac70aaadd73; Path=/sbs/test2(/|\$)(.*); HttpOnly",
    "content-length": "520",
    "connection": "keep-alive",
    "strict-transport-security": "max-age=31536000; includeSubDomains; preload",
    "x-cdn": "Imperva",
    "x-iinfo": "13-50202277-50202282 SNNy RT(1658119842220 2802) q(0 0 0 -1) r(1 1) U6"
  },
  "reasonPhrase": "",
  "statusCode": 200
})