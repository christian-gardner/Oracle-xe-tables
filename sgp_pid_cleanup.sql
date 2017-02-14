DROP TABLE SGP_PID_CLEANUP CASCADE CONSTRAINTS;

CREATE TABLE SGP_PID_CLEANUP
(
  PID         NUMBER,
  TABLE_NAME  VARCHAR2(40 BYTE),
  COMPLETED   NUMBER,
  ENTRYDATE   DATE
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;
