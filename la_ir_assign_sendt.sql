DROP TABLE LA_IR_ASSIGN_SENDT CASCADE CONSTRAINTS;

CREATE TABLE LA_IR_ASSIGN_SENDT
(
  PID  NUMBER(10),
  CNT  NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;