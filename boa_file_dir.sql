DROP TABLE BOA_FILE_DIR CASCADE CONSTRAINTS;

CREATE TABLE BOA_FILE_DIR
(
  FILE_DATE  VARCHAR2(100 BYTE),
  FILE_TIME  VARCHAR2(100 BYTE),
  FILE_PM    VARCHAR2(2 BYTE),
  FILE_SIZE  VARCHAR2(100 BYTE),
  FILE_NAME  VARCHAR2(100 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;
