%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo( "<?xml version='1.0' encoding='UTF-8'?>\n<html>\n  <body>\n    <h2>Concur Employee Profile Creation - Status</h2>\n    <h3>Summary</h3>\n    <table border=\"1\">\n      <tr>\n        <th>Response Status</th>\n        <td>Processed Provisioning Request Status</td>\n      </tr>\n      <tr>\n        <th>Processed Employee Ids</th>\n        <td>testuser23</td>\n      </tr>\n      <tr>\n        <th>Failed Employee Ids</th>\n        <td/>\n      </tr>\n    </table>\n  </body>\n</html>" )