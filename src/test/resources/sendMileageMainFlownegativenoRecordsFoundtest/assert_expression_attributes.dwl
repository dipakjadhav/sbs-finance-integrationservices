%dw 2.0
import * from dw::test::Asserts
---
attributes must equalTo({
  "headers": {
    "user-agent": "PostmanRuntime/7.29.0",
    "accept": "*/*",
    "postman-token": "0cf90330-d662-494d-9a11-8951927d0dc0",
    "host": "localhost:8081",
    "accept-encoding": "gzip, deflate, br",
    "connection": "keep-alive"
  },
  "clientCertificate": null,
  "method": "GET",
  "scheme": "http",
  "queryParams": {},
  "requestUri": "/finance/aurion/sendmileage",
  "queryString": "",
  "version": "HTTP/1.1",
  "maskedRequestPath": null,
  "listenerPath": "/finance/aurion/sendmileage",
  "relativePath": "/finance/aurion/sendmileage",
  "localAddress": "/127.0.0.1:8081",
  "uriParams": {},
  "rawRequestUri": "/finance/aurion/sendmileage",
  "rawRequestPath": "/finance/aurion/sendmileage",
  "remoteAddress": "/127.0.0.1:54229",
  "requestPath": "/finance/aurion/sendmileage"
})