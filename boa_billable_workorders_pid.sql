DROP TABLE BOA_BILLABLE_WORKORDERS_PID CASCADE CONSTRAINTS;

CREATE TABLE BOA_BILLABLE_WORKORDERS_PID
(
  WORK_ORDER  VARCHAR2(4000 BYTE),
  TRANKY      VARCHAR2(40 BYTE),
  ENTRYDT     DATE                              DEFAULT SYSDATE,
  CREATED_BY  VARCHAR2(40 BYTE),
  PID         NUMBER,
  PKEY        NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;
