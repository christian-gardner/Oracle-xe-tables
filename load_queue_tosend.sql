DROP TABLE LOAD_QUEUE_TOSEND CASCADE CONSTRAINTS;

CREATE TABLE LOAD_QUEUE_TOSEND
(
  PID  NUMBER(10)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;
