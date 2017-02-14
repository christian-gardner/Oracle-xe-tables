DROP TABLE LA_IR_ASSIGNMENT_EXT CASCADE CONSTRAINTS;

CREATE TABLE LA_IR_ASSIGNMENT_EXT
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
  CLIENT_EMPLOYEE         VARCHAR2(100 BYTE)
)
ORGANIZATION EXTERNAL
  (  TYPE ORACLE_LOADER
     DEFAULT DIRECTORY SGP_LA_FILES
     ACCESS PARAMETERS 
       ( RECORDS DELIMITED by Newline
                LOGFILE SGP_LA_FILES:'Ir_Assignment.log'
                BADFILE SGP_LA_FILES:'Ir_Assignment.bad'
                DISCARDFILE SGP_LA_FILES:'Ir_Assignment.disc'             
                FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'   
          (
                  RECEIVED_DATE,
                  LAST_UPDATED,
                  CLIENT,
                  COL_D,
                  INVOICE_NBR,
                  INVOICE_DATE,
                  WORK_ORDER_NBR,
                  LOAN_NBR,
                  COL_I,
                  DISPUTE_AMT,
                  COL_K,
                  CLIENT_COMMENT,
                  COL_M,
                  LOSS_ANALYST,
                  WRITE_OFF_AMOUNT,
                  WRITE_OFF,
                  WRITE_OFF_REASON_CODE,
                  WRITE_OFF_REASON,
                  DONE_BILLING_CODE,
                  VENDOR_CODE,
                  CHARGEBACK_AMOUNT,
                  DISPUTE_TYPE,
                  SOURCE_OF_DISPUTE,
                  COL_X,
                  APPROVAL,
                  PENDING_RESEARCH,
                  DISPUTE_APPEAL_COMMENT,
                  IM_ICLEAR_INV,
                  CLIENT_EMPLOYEE
          )
      )
     LOCATION (SGP_LA_FILES:'Ir_Assignment_20170118.xls.csv')
  )
REJECT LIMIT UNLIMITED
NOPARALLEL
NOMONITORING;
