DROP TABLE BOA_PROCESSED_PIDS CASCADE CONSTRAINTS;

CREATE TABLE BOA_PROCESSED_PIDS
(
  PID  NUMBER(10)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;
