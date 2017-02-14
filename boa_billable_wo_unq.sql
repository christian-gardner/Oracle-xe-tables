DROP TABLE BOA_BILLABLE_WO_UNQ CASCADE CONSTRAINTS;

CREATE TABLE BOA_BILLABLE_WO_UNQ
(
  WORK_ORDER  VARCHAR2(4000 BYTE),
  TRANKY      VARCHAR2(40 BYTE),
  ENTRYDT     DATE                              DEFAULT SYSDATE,
  CREATED_BY  VARCHAR2(40 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;