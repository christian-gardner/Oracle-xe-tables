DROP TABLE FILE_ERRORS CASCADE CONSTRAINTS;

CREATE TABLE FILE_ERRORS
(
  PID      NUMBER,
  PROCESS  VARCHAR2(100 BYTE),
  MESSAGE  VARCHAR2(1000 BYTE),
  LOAD_DT  DATE
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;