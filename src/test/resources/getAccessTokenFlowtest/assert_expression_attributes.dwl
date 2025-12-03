%dw 2.0
import * from dw::test::Asserts
---
attributes must equalTo({
  "headers": {
    "server": "cnqr-Fleetwood-Mac",
    "content-type": "application/json;charset=UTF-8",
    "content-length": "3005",
    "cache-control": "no-cache, no-store",
    "pragma": "no-cache",
    "concur-correlationid": "2a4e0423-46e8-47c7-854f-29e4a612ef87",
    "x-envoy-upstream-service-time": "552",
    "x-envoy-decorator-operation": "inbound-http",
    "strict-transport-security": "max-age=31536000; includeSubDomains",
    "access-control-allow-origin": "https://www.concursolutions.com",
    "access-control-allow-methods": "GET, POST, PUT, DELETE, PATCH, OPTIONS",
    "access-control-allow-headers": "accept,accept-language,access-control-allow-origin,authorization,cache-control,content-type,dnt,if-match,if-modified-since,link,keep-alive,origin,user-agent,x-mx-reqtoken,x-requested-with,concur-correlationid,concur-debug,x-csrf-token,appid,userid,x-token,newrelic,traceparent,tracestate,concur-environment",
    "access-control-expose-headers": "content-length,concur-correlationid,concur-debug,etag",
    "access-control-allow-credentials": "true",
    "vary": "Origin",
    "sap-server": "33",
    "date": "Thu, 02 Feb 2023 07:12:33 GMT",
    "connection": "keep-alive"
  },
  "reasonPhrase": "OK",
  "statusCode": 200
})