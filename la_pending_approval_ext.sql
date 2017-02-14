DROP TABLE LA_PENDING_APPROVAL_EXT CASCADE CONSTRAINTS;

CREATE TABLE LA_PENDING_APPROVAL_EXT
(
  COLUMN_A         VARCHAR2(100 BYTE),
  SERVICER         VARCHAR2(200 BYTE),
  LOAN_NBR         VARCHAR2(40 BYTE),
  COLUMN_D         VARCHAR2(100 BYTE),
  INVOICE_TYPE     VARCHAR2(100 BYTE),
  INVOICE_DATE     VARCHAR2(100 BYTE),
  INVOICE_NBR      VARCHAR2(100 BYTE),
  COLUMN_H         VARCHAR2(100 BYTE),
  STATE            VARCHAR2(100 BYTE),
  LI_CODE          VARCHAR2(200 BYTE),
  LI_DESCRIPTION   VARCHAR2(4000 BYTE),
  LI_AMT           VARCHAR2(100 BYTE),
  ADJUSTED_AMT     VARCHAR2(100 BYTE),
  TOTAL_LI_AMOUNT  VARCHAR2(100 BYTE),
  REASON           VARCHAR2(4000 BYTE),
  COMMENTS_DATE    VARCHAR2(300 BYTE),
  EXPIRES_IN       VARCHAR2(100 BYTE)
)
ORGANIZATION EXTERNAL
  (  TYPE ORACLE_LOADER
     DEFAULT DIRECTORY SGP_LA_FILES
     ACCESS PARAMETERS 
       ( RECORDS DELIMITED by Newline
                LOGFILE SGP_LA_FILES:'PendAppr.log'
                BADFILE SGP_LA_FILES:'PendAppr.bad'
                DISCARDFILE SGP_LA_FILES:'PendAppr.disc'             
                FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'   
          (
                COLUMN_A,
                SERVICER,
                LOAN_NBR,
                COLUMN_D,
                INVOICE_TYPE,
                INVOICE_DATE,
                INVOICE_NBR,
                COLUMN_H,
                STATE,
                LI_CODE,
                LI_DESCRIPTION,
                LI_AMT,
                ADJUSTED_AMT,
                TOTAL_LI_AMOUNT,
                REASON,
                COMMENTS_DATE,
                EXPIRES_IN
          )
     )
     LOCATION (SGP_LA_FILES:'PendApproval_20170118.xls.csv')
  )
REJECT LIMIT UNLIMITED
NOPARALLEL
NOMONITORING;
