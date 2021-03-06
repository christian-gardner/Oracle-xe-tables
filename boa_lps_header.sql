DROP TABLE BOA_LPS_HEADER CASCADE CONSTRAINTS;

CREATE TABLE BOA_LPS_HEADER
(
  VENDORID                VARCHAR2(20 BYTE),
  INVOICENUMBER           VARCHAR2(20 BYTE),
  INVOICEDATE             DATE,
  INVOICETYPECODE         VARCHAR2(20 BYTE),
  INVOICEAMOUNT           NUMBER,
  SERVICERCODE            VARCHAR2(20 BYTE),
  SERVICERLOANNUMBER      VARCHAR2(20 BYTE),
  CREATEDBYVENDORUSERID   VARCHAR2(20 BYTE),
  DEPARTMENTID            VARCHAR2(20 BYTE),
  BKSTATE                 VARCHAR2(20 BYTE),
  JUDICIALINDICATOR       VARCHAR2(20 BYTE),
  BORROWERNAME            VARCHAR2(100 BYTE),
  PROPERTYADDRESS1        VARCHAR2(200 BYTE),
  PROPERTYADDRESS2        VARCHAR2(200 BYTE),
  PROPERTYCITY            VARCHAR2(200 BYTE),
  PROPERTYCOUNTY          VARCHAR2(200 BYTE),
  PROPERTYSTATE           VARCHAR2(200 BYTE),
  PROPERTYZIPCODE         VARCHAR2(20 BYTE),
  PROPERTYZIPCODESUFFIX   VARCHAR2(20 BYTE),
  REFERRALDATE            VARCHAR2(20 BYTE),
  BKCHAPTER               VARCHAR2(20 BYTE),
  BKCASENUMBER            VARCHAR2(50 BYTE),
  BKFILEDAFTERSALE        VARCHAR2(20 BYTE),
  BKLOANCURRENTWHENFILED  VARCHAR2(20 BYTE),
  BKCOLLATERALINVESTPROP  VARCHAR2(20 BYTE),
  BKSERVICESPOSTCONF      VARCHAR2(20 BYTE),
  FCSALEDATE              VARCHAR2(20 BYTE),
  FCSALENOTHELDREASON     VARCHAR2(100 BYTE),
  FCSALEHELD              VARCHAR2(100 BYTE),
  LEGALACTIONDATE         VARCHAR2(20 BYTE),
  VENDORREFNUMBER         VARCHAR2(20 BYTE),
  BKSERVICESPRECONFIRM    VARCHAR2(20 BYTE),
  BKDISPOSITION           VARCHAR2(20 BYTE),
  AH                      VARCHAR2(100 BYTE),
  AI                      VARCHAR2(100 BYTE),
  ORDERTYPE               VARCHAR2(20 BYTE),
  ORDERCOMPLETEDATE       VARCHAR2(20 BYTE),
  PROPERTYVALUE           VARCHAR2(20 BYTE),
  SERVICEREQUESTID        VARCHAR2(20 BYTE),
  SERVICEREQUESTSTAGE     VARCHAR2(20 BYTE),
  VIN1                    VARCHAR2(20 BYTE),
  VIN2                    VARCHAR2(20 BYTE),
  VIN3                    VARCHAR2(20 BYTE),
  INVOICECOMMENT          VARCHAR2(1000 BYTE),
  DATEBKFILED             VARCHAR2(20 BYTE),
  FCSALERESULT            VARCHAR2(1000 BYTE),
  WRITISSUED              VARCHAR2(20 BYTE),
  WRITISSUEDDATE          VARCHAR2(20 BYTE),
  WRITHELDTYPE            VARCHAR2(20 BYTE),
  MFRFILEDDATE            VARCHAR2(20 BYTE),
  DILFILEDDATE            VARCHAR2(20 BYTE),
  ASSETNUMBER             VARCHAR2(20 BYTE),
  PARENTSERVICERCODE      VARCHAR2(20 BYTE),
  REFERRALTYPEID          NUMBER,
  PID                     NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;
