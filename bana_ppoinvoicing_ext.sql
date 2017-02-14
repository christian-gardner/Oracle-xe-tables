DROP TABLE BANA_PPOINVOICING_EXT CASCADE CONSTRAINTS;

CREATE TABLE BANA_PPOINVOICING_EXT
(
  TRANID     VARCHAR2(100 BYTE),
  LOAN       VARCHAR2(40 BYTE),
  SENTDATE   VARCHAR2(30 BYTE),
  TRANCODE   VARCHAR2(100 BYTE),
  PRICE      VARCHAR2(100 BYTE),
  FIELD6     VARCHAR2(100 BYTE),
  FIELD7     VARCHAR2(100 BYTE),
  FIELD8     VARCHAR2(100 BYTE),
  FIELD9     VARCHAR2(100 BYTE),
  FIELD10    VARCHAR2(100 BYTE),
  FIELD11    VARCHAR2(100 BYTE),
  WT         VARCHAR2(10 BYTE),
  SWT        VARCHAR2(10 BYTE),
  PRICEPER   VARCHAR2(100 BYTE),
  QTY        VARCHAR2(10 BYTE),
  UOM        VARCHAR2(10 BYTE),
  SERVICEID  VARCHAR2(10 BYTE),
  ZIP        VARCHAR2(10 BYTE)
)
ORGANIZATION EXTERNAL
  (  TYPE ORACLE_LOADER
     DEFAULT DIRECTORY LOAD_SGP_PPOINVOICING
     ACCESS PARAMETERS 
       ( RECORDS DELIMITED by  '\n'
            BADFILE  LOAD_SGP_PPOINVOICING: 'BANA_PPOINVOICING.bad'
            LOGFILE  LOAD_SGP_PPOINVOICING: 'BANA_PPOINVOICING.log'
     FIELDS TERMINATED BY '|'
  (
     TRANID, LOAN, SENTDATE, TRANCODE, PRICE, FIELD6, FIELD7, FIELD8, FIELD9, FIELD10, FIELD11, WT, SWT, PRICEPER, QTY, UOM, SERVICEID, ZIP
   )
           )
     LOCATION (LOAD_SGP_PPOINVOICING:'SGP_PPOINVOICING_02072017160001.txt')
  )
REJECT LIMIT UNLIMITED
NOPARALLEL
NOMONITORING;
