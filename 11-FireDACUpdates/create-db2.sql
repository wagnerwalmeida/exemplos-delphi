-- ------------------------------------------------------------------------------
-- DBArtisan Schema Extraction
-- FILE                : 172.16.121.242_160909_175151.sql
-- DATE                : 09/09/2016 17:51:51.937
-- DATASOURCE          : 172.16.121.242 (DB2)
-- VERSION             : 10.05.0005
-- ------------------------------------------------------------------------------

-- 
-- CREATE Tables
-- 
CREATE TABLE FIREDAC.ALBUM
(
    ALBUMID  INTEGER      NOT NULL,
    TITLE    VARCHAR(160) NOT NULL,
    ARTISTID INTEGER      NOT NULL,
    CONSTRAINT PK_ALBUM
    PRIMARY KEY (ALBUMID)
)
;
ALTER TABLE FIREDAC.ALBUM DATA CAPTURE NONE
;
ALTER TABLE FIREDAC.ALBUM NOT VOLATILE
;
ALTER TABLE FIREDAC.ALBUM APPEND OFF
;
ALTER TABLE FIREDAC.ALBUM LOCKSIZE ROW
;
ALTER TABLE FIREDAC.ALBUM DROP RESTRICT ON DROP
;

-- 
-- CREATE Indexes
-- 
CREATE INDEX FIREDAC.IFK_ALBUMARTISTID
    ON FIREDAC.ALBUM(ARTISTID)
ALLOW REVERSE SCANS PAGE SPLIT SYMMETRIC COMPRESS NO
;

-- 
-- CREATE Tables
-- 
CREATE TABLE FIREDAC.ARTIST
(
    ARTISTID INTEGER      NOT NULL,
    NAME     VARCHAR(120),
    CONSTRAINT PK_ARTIST
    PRIMARY KEY (ARTISTID)
)
;
ALTER TABLE FIREDAC.ARTIST DATA CAPTURE NONE
;
ALTER TABLE FIREDAC.ARTIST NOT VOLATILE
;
ALTER TABLE FIREDAC.ARTIST APPEND OFF
;
ALTER TABLE FIREDAC.ARTIST LOCKSIZE ROW
;
ALTER TABLE FIREDAC.ARTIST DROP RESTRICT ON DROP
;

-- 
-- CREATE Foreign Keys
-- 
ALTER TABLE FIREDAC.ALBUM
    ADD CONSTRAINT FK_ALBUMARTISTID
    FOREIGN KEY (ARTISTID)
    REFERENCES FIREDAC.ARTIST (ARTISTID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
;

-- 
-- CREATE Tables
-- 
CREATE TABLE FIREDAC.CUSTOMER
(
    CUSTOMERID   INTEGER     GENERATED BY DEFAULT AS IDENTITY ( START WITH 1, INCREMENT BY 1, NO CYCLE, MINVALUE 1, MAXVALUE 2147483647, CACHE 20, NO ORDER ),
    FIRSTNAME    VARCHAR(40) NOT NULL,
    LASTNAME     VARCHAR(20) NOT NULL,
    COMPANY      VARCHAR(80),
    ADDRESS      VARCHAR(70),
    CITY         VARCHAR(40),
    STATE        VARCHAR(40),
    COUNTRY      VARCHAR(40),
    POSTALCODE   VARCHAR(10),
    PHONE        VARCHAR(24),
    FAX          VARCHAR(24),
    EMAIL        VARCHAR(60) NOT NULL,
    SUPPORTREPID INTEGER,
    CONSTRAINT PK_CUSTOMER
    PRIMARY KEY (CUSTOMERID)
)
;
ALTER TABLE FIREDAC.CUSTOMER DATA CAPTURE NONE
;
ALTER TABLE FIREDAC.CUSTOMER NOT VOLATILE
;
ALTER TABLE FIREDAC.CUSTOMER APPEND OFF
;
ALTER TABLE FIREDAC.CUSTOMER LOCKSIZE ROW
;
ALTER TABLE FIREDAC.CUSTOMER DROP RESTRICT ON DROP
;

-- 
-- CREATE Indexes
-- 
CREATE INDEX FIREDAC.IFK_CUSTOMERSUPPORTREPID
    ON FIREDAC.CUSTOMER(SUPPORTREPID)
ALLOW REVERSE SCANS PAGE SPLIT SYMMETRIC COMPRESS NO
;

-- 
-- CREATE Tables
-- 
CREATE TABLE FIREDAC.EMPLOYEE
(
    EMPLOYEEID INTEGER     NOT NULL,
    LASTNAME   VARCHAR(20) NOT NULL,
    FIRSTNAME  VARCHAR(20) NOT NULL,
    TITLE      VARCHAR(30),
    REPORTSTO  INTEGER,
    BIRTHDATE  DATE,
    HIREDATE   DATE,
    ADDRESS    VARCHAR(70),
    CITY       VARCHAR(40),
    STATE      VARCHAR(40),
    COUNTRY    VARCHAR(40),
    POSTALCODE VARCHAR(10),
    PHONE      VARCHAR(24),
    FAX        VARCHAR(24),
    EMAIL      VARCHAR(60),
    CONSTRAINT PK_EMPLOYEE
    PRIMARY KEY (EMPLOYEEID)
)
;
ALTER TABLE FIREDAC.EMPLOYEE DATA CAPTURE NONE
;
ALTER TABLE FIREDAC.EMPLOYEE NOT VOLATILE
;
ALTER TABLE FIREDAC.EMPLOYEE APPEND OFF
;
ALTER TABLE FIREDAC.EMPLOYEE LOCKSIZE ROW
;
ALTER TABLE FIREDAC.EMPLOYEE DROP RESTRICT ON DROP
;

-- 
-- CREATE Views
-- 
CREATE VIEW FIREDAC.VEMP    AS SELECT ALL EMPNO ,   FIRSTNME,   MIDINIT ,   LASTNAME,   WORKDEPT   FROM FIREDAC.EMP
;
CREATE VIEW FIREDAC.VDEPMG1 (DEPTNO, DEPTNAME, MGRNO, FIRSTNME, MIDINIT,   LASTNAME, ADMRDEPT) AS SELECT ALL DEPTNO, DEPTNAME, EMPNO, FIRSTNME, MIDINIT,   LASTNAME, ADMRDEPT FROM FIREDAC.DEPT LEFT OUTER  JOIN FIREDAC.EMP ON MGRNO = EMPNO
;
CREATE VIEW FIREDAC.VEMPDPT1 (DEPTNO, DEPTNAME, EMPNO, FRSTINIT, MIDINIT,   LASTNAME, WORKDEPT) AS SELECT ALL DEPTNO, DEPTNAME, EMPNO, SUBSTR(FIRSTNME, 1, 1), MIDINIT,   LASTNAME, WORKDEPT FROM FIREDAC.DEPT  RIGHT OUTER JOIN FIREDAC.EMP ON WORKDEPT = DEPTNO
;
CREATE VIEW FIREDAC.VASTRDE2   (DEPT1NO,DEPT1NAM,EMP1NO,EMP1FN,EMP1MI,EMP1LN,TYPE2,   DEPT2NO,DEPT2NAM,EMP2NO,EMP2FN,EMP2MI,EMP2LN) AS SELECT ALL   D1.DEPTNO,D1.DEPTNAME,D1.MGRNO,D1.FIRSTNME,D1.MIDINIT,   D1.LASTNAME,'2',   D1.DEPTNO,D1.DEPTNAME,E2.EMPNO,E2.FIRSTNME,E2.MIDINIT,   E2.LASTNAME FROM FIREDAC.VDEPMG1 D1, FIREDAC.EMP E2 WHERE D1.DEPTNO = E2.WORKDEPT
;
CREATE VIEW FIREDAC.VPROJRE1   (PROJNO,PROJNAME,PROJDEP,RESPEMP,FIRSTNME,MIDINIT,   LASTNAME,MAJPROJ) AS SELECT ALL   PROJNO,PROJNAME,DEPTNO,EMPNO,FIRSTNME,MIDINIT,   LASTNAME,MAJPROJ FROM FIREDAC.PROJ, FIREDAC.EMP WHERE RESPEMP = EMPNO
;
CREATE VIEW FIREDAC.VSTAFAC2 (PROJNO, ACTNO, ACTDESC, EMPNO, FIRSTNME, MIDINIT, LASTNAME, EMPTIME,STDATE, ENDATE, TYPE) AS SELECT ALL EP.PROJNO, EP.ACTNO, AC.ACTDESC, EP.EMPNO,EM.FIRSTNME, EM.MIDINIT, EM.LASTNAME, EP.EMPTIME, EP.EMSTDATE,   EP.EMENDATE,'2' FROM FIREDAC.EMPPROJACT EP, FIREDAC.ACT AC, FIREDAC.EMP EM WHERE EP.ACTNO = AC.ACTNO AND EP.EMPNO = EM.EMPNO
;
CREATE VIEW FIREDAC.VPHONE   (LASTNAME,   FIRSTNAME,   MIDDLEINITIAL,   PHONENUMBER,   EMPLOYEENUMBER,   DEPTNUMBER,   DEPTNAME) AS SELECT ALL LASTNAME,   FIRSTNME,   MIDINIT ,   VALUE(PHONENO,' '),   EMPNO,   DEPTNO,   DEPTNAME FROM FIREDAC.EMP, FIREDAC.DEPT WHERE WORKDEPT = DEPTNO
;
CREATE VIEW FIREDAC.VEMPLP   (EMPLOYEENUMBER,   PHONENUMBER) AS SELECT ALL EMPNO ,   PHONENO FROM FIREDAC.EMP
;

-- 
-- CREATE Indexes
-- 
CREATE INDEX FIREDAC.IFK_EMPLOYEEREPORTSTO
    ON FIREDAC.EMPLOYEE(REPORTSTO)
ALLOW REVERSE SCANS PAGE SPLIT SYMMETRIC COMPRESS NO
;

-- 
-- CREATE Functions
-- 
CREATE FUNCTION FIREDAC.RESIGN_EMPLOYEE(NUMBER CHARACTER(6))
    RETURNS TABLE(EMPNO CHARACTER(6),
                  SALARY DOUBLE,
                  DEPT CHARACTER(3))
    SPECIFIC FIREDAC.SQL160314200422718
    LANGUAGE SQL
    NOT DETERMINISTIC
    EXTERNAL ACTION
    MODIFIES SQL DATA
    NULL CALL
    INHERIT SPECIAL REGISTERS
    BEGIN ATOMIC
-- -------------------------------------------------------------------------------------
-- Routine type:  SQL table function
-- Routine name:  resign_employee
--
-- Purpose:  This procedure takes in an employee number, then removes that
--           employee from the EMPLOYEE table.
--           A useful extension to this function would be to archive the
--           original record into an archive table.
--
-- --------------------------------------------------------------------------------------
    DECLARE l_salary DOUBLE;
    DECLARE l_job CHAR(3);

    SET (l_salary, l_job) = (SELECT salary, job
                               FROM OLD TABLE (DELETE FROM employee
                                                WHERE employee.empno = number));

    RETURN VALUES (number,l_salary, l_job);
  END
;

-- 
-- CREATE Foreign Keys
-- 
ALTER TABLE FIREDAC.CUSTOMER
    ADD CONSTRAINT FK_CUSTOMERSUPPORTREPID
    FOREIGN KEY (SUPPORTREPID)
    REFERENCES FIREDAC.EMPLOYEE (EMPLOYEEID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
;
ALTER TABLE FIREDAC.EMPLOYEE
    ADD CONSTRAINT FK_EMPLOYEEREPORTSTO
    FOREIGN KEY (REPORTSTO)
    REFERENCES FIREDAC.EMPLOYEE (EMPLOYEEID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
;

-- 
-- CREATE Tables
-- 
CREATE TABLE FIREDAC.GENRE
(
    GENREID INTEGER      NOT NULL,
    NAME    VARCHAR(120),
    CONSTRAINT PK_GENRE
    PRIMARY KEY (GENREID)
)
;
ALTER TABLE FIREDAC.GENRE DATA CAPTURE NONE
;
ALTER TABLE FIREDAC.GENRE NOT VOLATILE
;
ALTER TABLE FIREDAC.GENRE APPEND OFF
;
ALTER TABLE FIREDAC.GENRE LOCKSIZE ROW
;
ALTER TABLE FIREDAC.GENRE DROP RESTRICT ON DROP
;
CREATE TABLE FIREDAC.INVOICE
(
    INVOICEID         INTEGER       GENERATED BY DEFAULT AS IDENTITY ( START WITH 1, INCREMENT BY 1, NO CYCLE, MINVALUE 1, MAXVALUE 2147483647, CACHE 20, NO ORDER ),
    CUSTOMERID        INTEGER       NOT NULL,
    INVOICEDATE       DATE          NOT NULL,
    BILLINGADDRESS    VARCHAR(70),
    BILLINGCITY       VARCHAR(40),
    BILLINGSTATE      VARCHAR(40),
    BILLINGCOUNTRY    VARCHAR(40),
    BILLINGPOSTALCODE VARCHAR(10),
    TOTAL             DECIMAL(10,2) NOT NULL,
    CONSTRAINT PK_INVOICE
    PRIMARY KEY (INVOICEID)
)
;
ALTER TABLE FIREDAC.INVOICE DATA CAPTURE NONE
;
ALTER TABLE FIREDAC.INVOICE NOT VOLATILE
;
ALTER TABLE FIREDAC.INVOICE APPEND OFF
;
ALTER TABLE FIREDAC.INVOICE LOCKSIZE ROW
;
ALTER TABLE FIREDAC.INVOICE DROP RESTRICT ON DROP
;

-- 
-- CREATE Indexes
-- 
CREATE INDEX FIREDAC.IFK_INVOICECUSTOMERID
    ON FIREDAC.INVOICE(CUSTOMERID)
ALLOW REVERSE SCANS PAGE SPLIT SYMMETRIC COMPRESS NO
;

-- 
-- CREATE Foreign Keys
-- 
ALTER TABLE FIREDAC.INVOICE
    ADD CONSTRAINT FK_INVOICECUSTOMERID
    FOREIGN KEY (CUSTOMERID)
    REFERENCES FIREDAC.CUSTOMER (CUSTOMERID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
;

-- 
-- CREATE Tables
-- 
CREATE TABLE FIREDAC.INVOICELINE
(
    INVOICELINEID INTEGER       NOT NULL,
    INVOICEID     INTEGER       NOT NULL,
    TRACKID       INTEGER       NOT NULL,
    UNITPRICE     DECIMAL(10,2) NOT NULL,
    QUANTITY      INTEGER       NOT NULL,
    CONSTRAINT PK_INVOICELINE
    PRIMARY KEY (INVOICELINEID)
)
;
ALTER TABLE FIREDAC.INVOICELINE DATA CAPTURE NONE
;
ALTER TABLE FIREDAC.INVOICELINE NOT VOLATILE
;
ALTER TABLE FIREDAC.INVOICELINE APPEND OFF
;
ALTER TABLE FIREDAC.INVOICELINE LOCKSIZE ROW
;
ALTER TABLE FIREDAC.INVOICELINE DROP RESTRICT ON DROP
;

-- 
-- CREATE Indexes
-- 
CREATE INDEX FIREDAC.IFK_INVOICELINEINVOICEID
    ON FIREDAC.INVOICELINE(INVOICEID)
ALLOW REVERSE SCANS PAGE SPLIT SYMMETRIC COMPRESS NO
;
CREATE INDEX FIREDAC.IFK_INVOICELINETRACKID
    ON FIREDAC.INVOICELINE(TRACKID)
ALLOW REVERSE SCANS PAGE SPLIT SYMMETRIC COMPRESS NO
;

-- 
-- CREATE Foreign Keys
-- 
ALTER TABLE FIREDAC.INVOICELINE
    ADD CONSTRAINT FK_INVOICELINEINVOICEID
    FOREIGN KEY (INVOICEID)
    REFERENCES FIREDAC.INVOICE (INVOICEID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
;
ALTER TABLE FIREDAC.INVOICELINE
    ADD CONSTRAINT FK_INVOICELINETRACKID
    FOREIGN KEY (TRACKID)
    REFERENCES FIREDAC.TRACK (TRACKID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
;

-- 
-- CREATE Tables
-- 
CREATE TABLE FIREDAC.MEDIATYPE
(
    MEDIATYPEID INTEGER      NOT NULL,
    NAME        VARCHAR(120),
    CONSTRAINT PK_MEDIATYPE
    PRIMARY KEY (MEDIATYPEID)
)
;
ALTER TABLE FIREDAC.MEDIATYPE DATA CAPTURE NONE
;
ALTER TABLE FIREDAC.MEDIATYPE NOT VOLATILE
;
ALTER TABLE FIREDAC.MEDIATYPE APPEND OFF
;
ALTER TABLE FIREDAC.MEDIATYPE LOCKSIZE ROW
;
ALTER TABLE FIREDAC.MEDIATYPE DROP RESTRICT ON DROP
;
CREATE TABLE FIREDAC.PLAYLIST
(
    PLAYLISTID INTEGER      NOT NULL,
    NAME       VARCHAR(120),
    CONSTRAINT PK_PLAYLIST
    PRIMARY KEY (PLAYLISTID)
)
;
ALTER TABLE FIREDAC.PLAYLIST DATA CAPTURE NONE
;
ALTER TABLE FIREDAC.PLAYLIST NOT VOLATILE
;
ALTER TABLE FIREDAC.PLAYLIST APPEND OFF
;
ALTER TABLE FIREDAC.PLAYLIST LOCKSIZE ROW
;
ALTER TABLE FIREDAC.PLAYLIST DROP RESTRICT ON DROP
;
CREATE TABLE FIREDAC.PLAYLISTTRACK
(
    PLAYLISTID INTEGER NOT NULL,
    TRACKID    INTEGER NOT NULL,
    CONSTRAINT PK_PLAYLISTTRACK
    PRIMARY KEY (PLAYLISTID,TRACKID)
)
;
ALTER TABLE FIREDAC.PLAYLISTTRACK DATA CAPTURE NONE
;
ALTER TABLE FIREDAC.PLAYLISTTRACK NOT VOLATILE
;
ALTER TABLE FIREDAC.PLAYLISTTRACK APPEND OFF
;
ALTER TABLE FIREDAC.PLAYLISTTRACK LOCKSIZE ROW
;
ALTER TABLE FIREDAC.PLAYLISTTRACK DROP RESTRICT ON DROP
;

-- 
-- CREATE Indexes
-- 
CREATE INDEX FIREDAC.IFK_PLAYLISTTRACKTRACKID
    ON FIREDAC.PLAYLISTTRACK(TRACKID)
ALLOW REVERSE SCANS PAGE SPLIT SYMMETRIC COMPRESS NO
;

-- 
-- CREATE Foreign Keys
-- 
ALTER TABLE FIREDAC.PLAYLISTTRACK
    ADD CONSTRAINT FK_PLAYLISTTRACKPLAYLISTID
    FOREIGN KEY (PLAYLISTID)
    REFERENCES FIREDAC.PLAYLIST (PLAYLISTID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
;
ALTER TABLE FIREDAC.PLAYLISTTRACK
    ADD CONSTRAINT FK_PLAYLISTTRACKTRACKID
    FOREIGN KEY (TRACKID)
    REFERENCES FIREDAC.TRACK (TRACKID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
;

-- 
-- CREATE Tables
-- 
CREATE TABLE FIREDAC.TRACK
(
    TRACKID      INTEGER       NOT NULL,
    NAME         VARCHAR(200)  NOT NULL,
    ALBUMID      INTEGER,
    MEDIATYPEID  INTEGER       NOT NULL,
    GENREID      INTEGER,
    COMPOSER     VARCHAR(220),
    MILLISECONDS INTEGER       NOT NULL,
    BYTES        INTEGER,
    UNITPRICE    DECIMAL(10,2) NOT NULL,
    CONSTRAINT PK_TRACK
    PRIMARY KEY (TRACKID)
)
;
ALTER TABLE FIREDAC.TRACK DATA CAPTURE NONE
;
ALTER TABLE FIREDAC.TRACK NOT VOLATILE
;
ALTER TABLE FIREDAC.TRACK APPEND OFF
;
ALTER TABLE FIREDAC.TRACK LOCKSIZE ROW
;
ALTER TABLE FIREDAC.TRACK DROP RESTRICT ON DROP
;

-- 
-- CREATE Indexes
-- 
CREATE INDEX FIREDAC.IFK_TRACKALBUMID
    ON FIREDAC.TRACK(ALBUMID)
ALLOW REVERSE SCANS PAGE SPLIT SYMMETRIC COMPRESS NO
;
CREATE INDEX FIREDAC.IFK_TRACKGENREID
    ON FIREDAC.TRACK(GENREID)
ALLOW REVERSE SCANS PAGE SPLIT SYMMETRIC COMPRESS NO
;
CREATE INDEX FIREDAC.IFK_TRACKMEDIATYPEID
    ON FIREDAC.TRACK(MEDIATYPEID)
ALLOW REVERSE SCANS PAGE SPLIT SYMMETRIC COMPRESS NO
;

-- 
-- CREATE Foreign Keys
-- 
ALTER TABLE FIREDAC.TRACK
    ADD CONSTRAINT FK_TRACKALBUMID
    FOREIGN KEY (ALBUMID)
    REFERENCES FIREDAC.ALBUM (ALBUMID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
;
ALTER TABLE FIREDAC.TRACK
    ADD CONSTRAINT FK_TRACKGENREID
    FOREIGN KEY (GENREID)
    REFERENCES FIREDAC.GENRE (GENREID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
;
ALTER TABLE FIREDAC.TRACK
    ADD CONSTRAINT FK_TRACKMEDIATYPEID
    FOREIGN KEY (MEDIATYPEID)
    REFERENCES FIREDAC.MEDIATYPE (MEDIATYPEID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
;
