%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('sqlQueryString'),
  haveKey('delay'),
  haveKey('initVars'),
  haveKey('payloadlength'),
  haveKey('outputFilename'),
  haveKey('outboundHeaders'),
  haveKey('correlationId'),
  haveKey('failedRecords'),
  haveKey('receivedPayload'),
  haveKey('receivedDealCodes'),
  $['sqlQueryString'] must equalTo("SELECT DISTINCT inf.d_id deal_id, inf.d_apprv, inf.d_code deal_code, inf.d_conref contract_reference, inf.d_name deal_name, inf.deal_aka, inf.d_sub sub_type, inf.d_sub sub_type_code, inf.d_budget budget_info, inf.d_budget_code budget_info_code, inf.bus_unit bus_unit, inf.content_id, inf.content_name, inf.title_aka, inf.t_pgenre, inf.t_pgenre_id, inf.t_sgenre, inf.t_sgenre_id FROM (SELECT p.PURCHASE_ID p_id, d.DEAL_ID d_id, d.DEAL_CODE d_code, d.BROADCASTER_REFERENCE_1 d_conref, (SELECT tl.table_description FROM table_line tl WHERE tl.table_id = 'APPRV' AND tl.table_code = D.APPROVAL_STAT) d_apprv, (SELECT b.description FROM budget b WHERE b.budget_id = d.BUDGET_ID) d_budget, (SELECT b.budget_code FROM budget b WHERE b.budget_id = d.BUDGET_ID) d_budget_code,        (SELECT tl.table_description FROM table_line tl WHERE tl.table_id = 'DLSUB' AND tl.table_code = D.DEAL_SUB) d_sub, (SELECT tl.table_code FROM table_line tl WHERE tl.table_id = 'DLSUB' AND tl.table_code = D.DEAL_SUB) d_sub_code, d.DEAL_NAME d_name, (SELECT g2.genre_name  FROM genre g1 JOIN genre g2 ON g2.genre_id = g1.parent_genre_id WHERE g1.genre_id = t.genre_id) t_pgenre, (SELECT g2.genre_id FROM genre g1 JOIN genre g2 ON g2.genre_id = g1.parent_genre_id WHERE g1.genre_id = t.genre_id) t_pgenre_id,        (SELECT g.genre_name FROM genre g WHERE g.genre_id = T.genre_id) t_sgenre, (SELECT g.genre_id FROM genre g WHERE g.genre_id = T.genre_id) t_sgenre_id, t.programme_name t_name, CASE WHEN d.DEAL_TYPE = 'S' AND d.NO_OF_PROGRAMMES > 1 THEN 'S' || (SELECT min(st.season_id) FROM season_title st WHERE st.title_id = p.TITLE_ID) WHEN d.DEAL_TYPE = 'S' AND d.NO_OF_PROGRAMMES = 1 THEN 'T' || t.title_id WHEN d.DEAL_TYPE = 'M' THEN 'M' || t.title_id END AS content_id, CASE WHEN d.DEAL_TYPE = 'S' AND d.NO_OF_PROGRAMMES > 1 THEN upper((SELECT sn.season_name FROM season sn WHERE sn.season_id = (SELECT MIN(st.season_id) FROM season_title st WHERE st.title_id = p.TITLE_ID))) WHEN d.DEAL_TYPE = 'S' AND d.NO_OF_PROGRAMMES = 1 THEN upper(d.deal_name) WHEN d.DEAL_TYPE = 'M' THEN upper(d.deal_name) END AS content_name, (SELECT LISTAGG( (SELECT '[' || cg.channel_group_id || ']' || cg.descrip FROM channel_group cg WHERE cg.channel_group_id = aa.bus_unit), ';') WITHIN GROUP (ORDER BY aa.bus_unit) FROM (SELECT DISTINCT arm.deal_id, arm.business_unit bus_unit FROM armm_purch_bsunit arm) aa WHERE aa.deal_id = p.deal_id) bus_unit, (SELECT aka.aka FROM object_aka aka WHERE aka.object_type = 'TI' AND aka.object_id = p.TITLE_ID AND aka.PRIMARY = 1 AND ROWNUM = 1) title_aka, (SELECT aka.aka FROM object_aka aka WHERE aka.object_type = 'DL' AND aka.object_id = d.DEAL_ID AND aka.PRIMARY = 1 AND ROWNUM = 1) deal_aka, p.AVAIL_START_DATE start_date, p.AVAIL_END_DATE end_date, d.APPROVAL_STAT apprv FROM deal d JOIN purchase p ON p.deal_id = d.deal_id JOIN armm_purch_bsunit apb ON apb.PURCHASE_ID = p.PURCHASE_ID JOIN title t ON t.title_id = p.title_id AND p.EPISODE_NO IN (1,0) AND p.MARKED_AS_DELETED = 0 ) inf WHERE inf.d_code IN (110245, 900479)"),
  $['delay'] must equalTo({
    "delay": 500
  }),
  $['initVars'] must equalTo({
    "outputFilename": "contentCreation_10042023061917.csv",
    "interfaceKey": "IC-034",
    "status": "IC-034 - FTP to Oracle Success"
  }),
  $['payloadlength'] must equalTo(2),
  $['outputFilename'] must equalTo("contentCreation_10042023061917.csv"),
  $['outboundHeaders'] must equalTo({}),
  $['correlationId'] must equalTo(null),
  $['failedRecords'] must equalTo([]),
  $['receivedPayload'] must equalTo([
    {
      "DEAL_ID": "12949",
      "DEAL_CODE": "900479",
      "CONTRACT_REFERENCE": "CN [RR]",
      "DEAL_NAME": "Personally Speaking Series 1",
      "DEAL_AKA": "",
      "SUB_TYPE": "",
      "SUB_TYPE_CODE": "",
      "BUDGET_INFO": "INTERNAL PRODUCTION",
      "BUDGET_INFO_CODE": "C11300",
      "BUS_UNIT": "[2075]SBS Production",
      "BUS_UNIT_ID": "",
      "CONTENT_ID": "S126819",
      "CONTENT_NAME": "PERSONALLY SPEAKING SERIES 1",
      "TITLE_AKA": "",
      "T_PGENRE": "News And Current Affairs",
      "T_PGENRE_ID": "2363",
      "T_SGENRE": "Current Affairs",
      "T_SGENRE_ID": "2394"
    },
    {
      "DEAL_ID": "80553",
      "DEAL_CODE": "110245",
      "CONTRACT_REFERENCE": "IN194",
      "DEAL_NAME": "Footy Chicks",
      "DEAL_AKA": "Footy Chicks",
      "SUB_TYPE": "",
      "SUB_TYPE_CODE": "",
      "BUDGET_INFO": "COMMISSIONED",
      "BUDGET_INFO_CODE": "C12500",
      "BUS_UNIT": "[2076]Commissioned Content",
      "BUS_UNIT_ID": "",
      "CONTENT_ID": "T133942",
      "CONTENT_NAME": "FOOTY CHICKS",
      "TITLE_AKA": "Footy Chicks",
      "T_PGENRE": "Factual",
      "T_PGENRE_ID": "523",
      "T_SGENRE": "Documentaries One Off",
      "T_SGENRE_ID": "546"
    }
  ]),
  $['receivedDealCodes'] must equalTo("110245, 900479")
]