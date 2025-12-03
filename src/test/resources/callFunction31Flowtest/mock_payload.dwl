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
            tns#"LOGOFF": {
              "return" @("type": "xsd:int"): "0"
            }
          }
        }
      }
    }
  }
}