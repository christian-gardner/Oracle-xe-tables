DROP TABLE LA_PENDING_REJECTIONS_EXT CASCADE CONSTRAINTS;

CREATE TABLE LA_PENDING_REJECTIONS_EXT
(
  CLIENT             VARCHAR2(200 BYTE),
  SERVICER           VARCHAR2(200 BYTE),
  LOAN_NBR           VARCHAR2(40 BYTE),
  INVOICE_TYPE       VARCHAR2(100 BYTE),
  INVOICE_DATE       VARCHAR2(40 BYTE),
  INVOICE_NBR        VARCHAR2(40 BYTE),
  ORDER_NBR          VARCHAR2(40 BYTE),
  STATE              VARCHAR2(40 BYTE),
  SERVICER_COMMENTS  VARCHAR2(4000 BYTE),
  COMMENTS_DATE      VARCHAR2(40 BYTE),
  EXPIRES_IN         VARCHAR2(10 BYTE),
  INVOICE_AMT        VARCHAR2(30 BYTE)
)
ORGANIZATION EXTERNAL
  (  TYPE ORACLE_LOADER
     DEFAULT DIRECTORY SGP_LA_FILES
     ACCESS PARAMETERS 
       ( RECORDS DELIMITED by Newline
                LOGFILE SGP_LA_FILES:'PendReject.log'
                BADFILE SGP_LA_FILES:'PendReject.bad'
                DISCARDFILE SGP_LA_FILES:'PendReject.disc'             
                FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'   
          (
                  CLIENT,
                  SERVICER,
                  LOAN_NBR,
                  INVOICE_TYPE,
                  INVOICE_DATE,
                  INVOICE_NBR, 
                  ORDER_NBR,
                  STATE,
                  Servicer_comments,
                  COMMENTS_DATE,
                  EXPIRES_IN,
                  INVOICE_AMT
          )
      )
     LOCATION (SGP_LA_FILES:'PendRejections_20170118.xls.csv')
  )
REJECT LIMIT UNLIMITED
NOPARALLEL
NOMONITORING;
