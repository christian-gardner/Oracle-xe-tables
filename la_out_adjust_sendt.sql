DROP TABLE LA_OUT_ADJUST_SENDT CASCADE CONSTRAINTS;

CREATE TABLE LA_OUT_ADJUST_SENDT
(
  PID  NUMBER(10),
  CNT  NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;
