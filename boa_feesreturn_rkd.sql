DROP TABLE BOA_FEESRETURN_RKD CASCADE CONSTRAINTS;

CREATE TABLE BOA_FEESRETURN_RKD
(
  TRANSACTION_TYPE  NUMBER(9),
  TRANID            VARCHAR2(50 BYTE),
  TRANKY            VARCHAR2(40 BYTE),
  ERROR_CODE        NUMBER(9),
  ERROR_MESSAGE     VARCHAR2(300 BYTE),
  RESOLVED          NUMBER(1),
  RESEARCHING       NUMBER(1),
  RESENT            NUMBER(1),
  DEV               NUMBER(1),
  BILLED            NUMBER(1),
  RK                NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;
