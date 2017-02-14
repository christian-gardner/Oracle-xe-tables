DROP TABLE NAV_ARINVOICING_EXT CASCADE CONSTRAINTS;

CREATE TABLE NAV_ARINVOICING_EXT
(
  RECORD_TYPE      VARCHAR2(1 BYTE),
  INVOICE_DATE     VARCHAR2(20 BYTE),
  INVOICE_NBR      VARCHAR2(30 BYTE),
  ORDER_NBR        VARCHAR2(30 BYTE),
  BILL_CODE        VARCHAR2(20 BYTE),
  CLIENT_CODE      VARCHAR2(20 BYTE),
  BILL_TO_CODE     VARCHAR2(20 BYTE),
  DEPT             VARCHAR2(20 BYTE),
  X1               VARCHAR2(20 BYTE),
  PROP_NBR         VARCHAR2(20 BYTE),
  LOAN_NBR         VARCHAR2(20 BYTE),
  VENDOR_CODE      VARCHAR2(20 BYTE),
  WORK_CODE        VARCHAR2(20 BYTE),
  X2               VARCHAR2(20 BYTE),
  X3               VARCHAR2(20 BYTE),
  CONS             VARCHAR2(20 BYTE),
  SALES            NUMBER,
  COSTS            NUMBER,
  X4               VARCHAR2(20 BYTE),
  X5               VARCHAR2(20 BYTE),
  PHOTOS           VARCHAR2(20 BYTE),
  X6               VARCHAR2(20 BYTE),
  X7               VARCHAR2(20 BYTE),
  ORDER_DATE       VARCHAR2(20 BYTE),
  ADDR1            VARCHAR2(100 BYTE),
  ADDR2            VARCHAR2(100 BYTE),
  CITY             VARCHAR2(100 BYTE),
  STATE            VARCHAR2(100 BYTE),
  ZIP              VARCHAR2(20 BYTE),
  CONTROL_NBR      VARCHAR2(100 BYTE),
  ORDER_BY_NAME    VARCHAR2(100 BYTE),
  COMPLETION_DATE  VARCHAR2(20 BYTE),
  OCCUPANCY        VARCHAR2(5 BYTE),
  LOAN_TYPE        VARCHAR2(20 BYTE),
  ZIP_CODE2        VARCHAR2(20 BYTE),
  TAX_AMOUNT       NUMBER,
  EXEMPT_AMOUNT    NUMBER,
  EXEMPT_REASON    VARCHAR2(100 BYTE),
  TAX_PERCENT      NUMBER
)
ORGANIZATION EXTERNAL
  (  TYPE ORACLE_LOADER
     DEFAULT DIRECTORY LOAD_ARINVOICING_DIR
     ACCESS PARAMETERS 
       ( RECORDS DELIMITED by Newline  
            BADFILE  LOAD_SGP_FEES: 'NAV_ARINVOICING_EXT.bad'
            LOGFILE  LOAD_SGP_FEES: 'NAV_ARINVOICING_EXT.log'
     FIELDS TERMINATED BY '|'
  (
     Record_Type, 
     Invoice_Date, 
     Invoice_NBR, 
     ORDER_NBR, 
     Bill_Code,
     Client_Code,
     Bill_To_Code,
     DEPT,  
     X1,  
     PROP_NBR,
     LOAN_NBR,
     VENDOR_CODE,
     WORK_CODE, 
     x2, 
     x3, 
     Cons, 
     Sales, 
     costs, 
     X4, 
     X5, 
     Photos, 
     X6, 
     X7, 
     Order_Date,
     ADDR1,
     ADDR2,
     CITY,
     STATE, 
     ZIP,
     CONTROL_NBR,
     Order_By_Name,
     Completion_Date,
     Occupancy,
     LOAN_TYPE,
     Zip_Code2,
     Tax_Amount,
     Exempt_Amount,
     Exempt_Reason,
     Tax_Percent          
   )
        )
     LOCATION (LOAD_ARINVOICING_DIR:'ARInvI_150420-00.txt')
  )
REJECT LIMIT UNLIMITED
NOPARALLEL
NOMONITORING;
