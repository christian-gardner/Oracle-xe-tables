DROP TABLE BOA_SVC_REL CASCADE CONSTRAINTS;

CREATE TABLE BOA_SVC_REL
(
  ACCOUNTID    VARCHAR2(20 BYTE),
  SRLID        VARCHAR2(20 BYTE),
  SRLDATE      VARCHAR2(30 BYTE),
  NEWSERVICER  VARCHAR2(200 BYTE),
  DEREGISTER   VARCHAR2(10 BYTE),
  PID          NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;
