DROP TABLE LA_VALIDATION CASCADE CONSTRAINTS;

CREATE TABLE LA_VALIDATION
(
  LOAD_ID      NUMBER,
  CLIENT_CODE  VARCHAR2(40 BYTE),
  LA_HIGH      VARCHAR2(200 BYTE),
  LA_LOW       VARCHAR2(200 BYTE),
  FILE_ID      NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;