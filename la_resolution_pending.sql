ALTER TABLE LA_RESOLUTION_PENDING
 DROP PRIMARY KEY CASCADE;

DROP TABLE LA_RESOLUTION_PENDING CASCADE CONSTRAINTS;

CREATE TABLE LA_RESOLUTION_PENDING
(
  CLIENT               VARCHAR2(200 BYTE),
  INVOICE_NBR          VARCHAR2(200 BYTE),
  ORDER_NBR            VARCHAR2(100 BYTE),
  VENDOR_CONTACT       VARCHAR2(100 BYTE),
  LOAN_NBR             VARCHAR2(100 BYTE),
  INVOICE_DATE         VARCHAR2(100 BYTE),
  DEPT                 VARCHAR2(10 BYTE),
  STATE                VARCHAR2(10 BYTE),
  RESOLUTION_TYPE      VARCHAR2(30 BYTE),
  INVOICE_AMT          VARCHAR2(20 BYTE),
  VENDOR_COMMENT       VARCHAR2(4000 BYTE),
  VENDOR_DATE          VARCHAR2(30 BYTE),
  CLIENT_COMMENT       VARCHAR2(4000 BYTE),
  CLIENT_DATE          VARCHAR2(30 BYTE),
  REASON               VARCHAR2(200 BYTE),
  RESOLUTION_DEADLINE  VARCHAR2(30 BYTE),
  CURTAIL_DATE         VARCHAR2(30 BYTE),
  PID                  NUMBER,
  LOAD_ID              NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


--  There is no statement for index IPP$LIBRARIAN.SYS_C007000.
--  The object is created when the parent object is created.

ALTER TABLE LA_RESOLUTION_PENDING ADD (
  PRIMARY KEY
  (LOAD_ID)
  ENABLE VALIDATE);
