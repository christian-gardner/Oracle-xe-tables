DROP TABLE XCL_PROCESSED_PIDS CASCADE CONSTRAINTS;

CREATE TABLE XCL_PROCESSED_PIDS
(
  PID  NUMBER(10),
  CNT  NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;
