DROP TABLE LA_IR_ASSIGNMENT CASCADE CONSTRAINTS;

CREATE TABLE LA_IR_ASSIGNMENT
(
  RECEIVED_DATE           VARCHAR2(30 BYTE),
  LAST_UPDATED            VARCHAR2(30 BYTE),
  CLIENT                  VARCHAR2(200 BYTE),
  COL_D                   VARCHAR2(100 BYTE),
  INVOICE_NBR             VARCHAR2(30 BYTE),
  INVOICE_DATE            VARCHAR2(30 BYTE),
  WORK_ORDER_NBR          VARCHAR2(30 BYTE),
  LOAN_NBR                VARCHAR2(30 BYTE),
  COL_I                   VARCHAR2(100 BYTE),
  DISPUTE_AMT             VARCHAR2(30 BYTE),
  COL_K                   VARCHAR2(100 BYTE),
  CLIENT_COMMENT          VARCHAR2(4000 BYTE),
  COL_M                   VARCHAR2(100 BYTE),
  LOSS_ANALYST            VARCHAR2(100 BYTE),
  WRITE_OFF_AMOUNT        VARCHAR2(30 BYTE),
  WRITE_OFF               VARCHAR2(30 BYTE),
  WRITE_OFF_REASON_CODE   VARCHAR2(30 BYTE),
  WRITE_OFF_REASON        VARCHAR2(1000 BYTE),
  DONE_BILLING_CODE       VARCHAR2(30 BYTE),
  VENDOR_CODE             VARCHAR2(30 BYTE),
  CHARGEBACK_AMOUNT       VARCHAR2(30 BYTE),
  DISPUTE_TYPE            VARCHAR2(30 BYTE),
  SOURCE_OF_DISPUTE       VARCHAR2(100 BYTE),
  COL_X                   VARCHAR2(100 BYTE),
  APPROVAL                VARCHAR2(30 BYTE),
  PENDING_RESEARCH        VARCHAR2(30 BYTE),
  DISPUTE_APPEAL_COMMENT  VARCHAR2(4000 BYTE),
  IM_ICLEAR_INV           VARCHAR2(30 BYTE),
  CLIENT_EMPLOYEE         VARCHAR2(100 BYTE),
  LOAD_ID                 NUMBER,
  FILE_ID                 NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;
