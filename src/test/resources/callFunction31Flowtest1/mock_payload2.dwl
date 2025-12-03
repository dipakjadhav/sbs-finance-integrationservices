do {
  ns soapenv http://schemas.xmlsoap.org/soap/envelope/
  ---
  {
    soapenv#"Envelope" @("encodingStyle": "http://schemas.xmlsoap.org/soap/encoding/"): do {
      ns soapenv http://schemas.xmlsoap.org/soap/envelope/
      ---
      {
        soapenv#"Body": do {
          ns tns urn:uniface:applic:services:EV397_AURION_WS
          ---
          {
            tns#"LOGON": {
              "return" @("type": "xsd:int"): "0",
              "P_TOKEN" @("type": "xsd:string"): "'eN2Y='0EH\\/.=^&?7eQdC;f;6N1d[a!Z:<s#xhfwktXPriBIRNji5Fc[]1Vtr",
              "P_MESSAGE" @("type": "xsd:string"): null,
              "P_STATUS" @("type": "xsd:decimal"): "0"
            }
          }
        }
      }
    }
  }
}