DROP TABLE LA_RESOLUTION_PENDING_EXT CASCADE CONSTRAINTS;

CREATE TABLE LA_RESOLUTION_PENDING_EXT
(
  INVOICE_NBR          VARCHAR2(200 BYTE),
  ORDER_NBR            VARCHAR2(100 BYTE),
  VENDOR_CONTACT       VARCHAR2(100 BYTE),
  LOAN_NBR             VARCHAR2(100 BYTE),
  INVOICE_DATE         VARCHAR2(40 BYTE),
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
  CURTAIL_DATE         VARCHAR2(30 BYTE)
)
ORGANIZATION EXTERNAL
  (  TYPE ORACLE_LOADER
     DEFAULT DIRECTORY SGP_LA_FILES
     ACCESS PARAMETERS 
       ( RECORDS DELIMITED by Newline
                LOGFILE SGP_LA_FILES:'ResPend.log'
                BADFILE SGP_LA_FILES:'ResPend.bad'
                DISCARDFILE SGP_LA_FILES:'ResPend.disc'             
             FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'   
          (
             INVOICE_NBR, 
             ORDER_NBR, 
             VENDOR_CONTACT, 
             LOAN_NBR, 
             INVOICE_DATE, 
             DEPT, 
             STATE, 
             RESOLUTION_TYPE, 
             INVOICE_AMT, 
             VENDOR_COMMENT, 
             VENDOR_DATE, 
             CLIENT_COMMENT, 
             CLIENT_DATE, 
             REASON, 
             RESOLUTION_DEADLINE, 
             CURTAIL_DATE
            )
      )
     LOCATION (SGP_LA_FILES:'ResolutionPending_20170118.xls.csv')
  )
REJECT LIMIT UNLIMITED
NOPARALLEL
NOMONITORING;
