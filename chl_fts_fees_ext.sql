DROP TABLE CHL_FTS_FEES_EXT CASCADE CONSTRAINTS;

CREATE TABLE CHL_FTS_FEES_EXT
(
  TRANID     VARCHAR2(100 BYTE),
  LOAN       NUMBER,
  SENTDATE   VARCHAR2(30 BYTE),
  TRANCODE   VARCHAR2(50 BYTE),
  PRICE      NUMBER,
  FIELD6     VARCHAR2(100 BYTE),
  FIELD7     NUMBER,
  FIELD8     VARCHAR2(100 BYTE),
  FIELD9     VARCHAR2(100 BYTE),
  FIELD10    NUMBER,
  FIELD11    VARCHAR2(100 BYTE),
  WT         NUMBER,
  SWT        NUMBER,
  PRICEPER   NUMBER,
  QTY        NUMBER,
  UOM        VARCHAR2(10 BYTE),
  SERVICEID  NUMBER,
  ZIP        VARCHAR2(20 BYTE)
)
ORGANIZATION EXTERNAL
  (  TYPE ORACLE_LOADER
     DEFAULT DIRECTORY LOAD_CHL_FTS_FEE_DIR
     ACCESS PARAMETERS 
       ( RECORDS DELIMITED by '\n' 
            BADFILE  LOAD_SGP_FEES: 'CHL_FEES_EXT.bad'
            LOGFILE  LOAD_SGP_FEES: 'CHL_FEES_EXT.log'

     FIELDS TERMINATED BY '|'
  (
     TRANID, 
     LOAN, 
     SENTDATE, 
     TRANCODE, 
     PRICE, 
     FIELD6, 
     FIELD7, 
     FIELD8, 
     FIELD9, 
     FIELD10, 
     FIELD11, 
     WT, 
     SWT, 
     PRICEPER, 
     QTY, 
     UOM, 
     SERVICEID, 
     ZIP
   )
        )
     LOCATION (LOAD_CHL_FTS_FEE_DIR:'SGP_FEES_02142014082828.txt')
  )
REJECT LIMIT UNLIMITED
NOPARALLEL
NOMONITORING;
