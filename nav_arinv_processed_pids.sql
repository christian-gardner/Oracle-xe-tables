DROP TABLE NAV_ARINV_PROCESSED_PIDS CASCADE CONSTRAINTS;

CREATE TABLE NAV_ARINV_PROCESSED_PIDS
(
  PID  NUMBER(10),
  CNT  NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE INDEX NAV_ARINV_PROCESSED_PIDS_IDX ON NAV_ARINV_PROCESSED_PIDS
(PID)
LOGGING
NOPARALLEL;