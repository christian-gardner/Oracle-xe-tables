DROP TABLE DYN_STMTS CASCADE CONSTRAINTS;

CREATE TABLE DYN_STMTS
(
  STMT_ORDER  NUMBER,
  STMT_LINE   VARCHAR2(4000 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;
