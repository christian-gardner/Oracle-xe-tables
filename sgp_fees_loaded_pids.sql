DROP TABLE SGP_FEES_LOADED_PIDS CASCADE CONSTRAINTS;

CREATE TABLE SGP_FEES_LOADED_PIDS
(
  PID  NUMBER(10),
  CNT  NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;
