DROP TABLE LA_PEND_REJS_TO_SEND CASCADE CONSTRAINTS;

CREATE TABLE LA_PEND_REJS_TO_SEND
(
  PID  NUMBER,
  CNT  NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;
