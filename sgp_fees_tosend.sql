DROP TABLE SGP_FEES_TOSEND CASCADE CONSTRAINTS;

CREATE TABLE SGP_FEES_TOSEND
(
  PID  NUMBER,
  CNT  NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;
