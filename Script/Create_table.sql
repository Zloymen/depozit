-- Generated by Oracle SQL Developer Data Modeler 4.1.0.881
--   at:        2015-06-27 13:12:13 YEKT
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g




CREATE TABLE Banks
  (
    id           NUMBER NOT NULL ,
    name_bank    VARCHAR2 (50) NOT NULL ,
    details_bank VARCHAR2 (100) NOT NULL ,
    Date_add     DATE ,
    User_add NVARCHAR2 (30)
  ) ;
COMMENT ON TABLE Banks
IS
  '�����' ;
  COMMENT ON COLUMN Banks.id
IS
  '��' ;
  COMMENT ON COLUMN Banks.name_bank
IS
  '�������� �����' ;
  COMMENT ON COLUMN Banks.details_bank
IS
  '��������� �����' ;
  COMMENT ON COLUMN Banks.Date_add
IS
  '���� �����' ;
  COMMENT ON COLUMN Banks.User_add
IS
  '�������� �����' ;
  ALTER TABLE Banks ADD CONSTRAINT Banks_PK PRIMARY KEY ( id ) ;

CREATE TABLE Rights
  (
    id       NUMBER NOT NULL ,
    Users_id NUMBER NOT NULL ,
    role_id  NUMBER NOT NULL
  ) ;
COMMENT ON TABLE Rights
IS
  '�����' ;
  COMMENT ON COLUMN Rights.id
IS
  '��' ;
  ALTER TABLE Rights ADD CONSTRAINT Rights_PK PRIMARY KEY ( id ) ;

CREATE TABLE Users
  (
    id NUMBER NOT NULL ,
    login_ora NVARCHAR2 (30) ,
    Fio_User NVARCHAR2 (100) ,
    Date_add DATE ,
    User_add NVARCHAR2 (30)
  ) ;
COMMENT ON TABLE Users
IS
  '������������' ;
  COMMENT ON COLUMN Users.id
IS
  '��' ;
  COMMENT ON COLUMN Users.login_ora
IS
  '����� Oracle' ;
  COMMENT ON COLUMN Users.Fio_User
IS
  '��� ���������' ;
  COMMENT ON COLUMN Users.Date_add
IS
  '���� �����' ;
  COMMENT ON COLUMN Users.User_add
IS
  '�������� �����' ;
  ALTER TABLE Users ADD CONSTRAINT Users_PK PRIMARY KEY ( id ) ;

CREATE TABLE course
  (
    id        NUMBER NOT NULL ,
    date_b    DATE ,
    date_e    DATE ,
    cost      NUMBER ,
    type_cost NUMBER ,
    Date_add  DATE ,
    User_add NVARCHAR2 (30) ,
    user_annul NVARCHAR2 (50) ,
    date_annul       DATE ,
    type_currency_id NUMBER NOT NULL
  ) ;
COMMENT ON TABLE course
IS
  '���� �����' ;
  COMMENT ON COLUMN course.id
IS
  '��' ;
  COMMENT ON COLUMN course.date_b
IS
  '���� ������' ;
  COMMENT ON COLUMN course.date_e
IS
  '���� �����' ;
  COMMENT ON COLUMN course.cost
IS
  '������' ;
  COMMENT ON COLUMN course.type_cost
IS
  '� ���' ;
  COMMENT ON COLUMN course.Date_add
IS
  '���� �����' ;
  COMMENT ON COLUMN course.User_add
IS
  '�������� �����' ;
  COMMENT ON COLUMN course.user_annul
IS
  '���������' ;
  COMMENT ON COLUMN course.date_annul
IS
  '���� ��������' ;
  ALTER TABLE course ADD CONSTRAINT course_PK PRIMARY KEY ( id ) ;

CREATE TABLE deposit
  (
    id            NUMBER NOT NULL ,
    Date_open     DATE ,
    depositor_id  NUMBER NOT NULL ,
    summa_deposit NUMBER ,
    Date_close    DATE ,
    User_open NVARCHAR2 (30) ,
    user_close NVARCHAR2 (30) ,
    view_deposit_id NUMBER NOT NULL
  ) ;
COMMENT ON TABLE deposit
IS
  '������' ;
  COMMENT ON COLUMN deposit.id
IS
  '��' ;
  COMMENT ON COLUMN deposit.Date_open
IS
  '���� ��������' ;
  COMMENT ON COLUMN deposit.summa_deposit
IS
  '����� ��������' ;
  COMMENT ON COLUMN deposit.Date_close
IS
  '���� ��������' ;
  COMMENT ON COLUMN deposit.User_open
IS
  '�������� �������� ������' ;
  COMMENT ON COLUMN deposit.user_close
IS
  '�������� �������� ������' ;
  ALTER TABLE deposit ADD CONSTRAINT deposit_PK PRIMARY KEY ( id, depositor_id ) ;

CREATE TABLE depositor
  (
    id NUMBER NOT NULL ,
    name_depositor NVARCHAR2 (100) ,
    detail_depositor NVARCHAR2 (100) ,
    Date_add DATE ,
    User_add NVARCHAR2 (30) ,
    type_depositor_id NUMBER NOT NULL
  ) ;
COMMENT ON TABLE depositor
IS
  '��������' ;
  COMMENT ON COLUMN depositor.name_depositor
IS
  '������������ ���������' ;
  COMMENT ON COLUMN depositor.detail_depositor
IS
  '�������� ���������' ;
  COMMENT ON COLUMN depositor.Date_add
IS
  '���� �����' ;
  COMMENT ON COLUMN depositor.User_add
IS
  '�������� �����' ;
  ALTER TABLE depositor ADD CONSTRAINT depositor_PK PRIMARY KEY ( id ) ;

CREATE TABLE role
  ( id NUMBER NOT NULL , Name_role NVARCHAR2 (40)
  ) ;
COMMENT ON TABLE role
IS
  '����' ;
  COMMENT ON COLUMN role.id
IS
  '��' ;
  COMMENT ON COLUMN role.Name_role
IS
  '�������� ����' ;
  ALTER TABLE role ADD CONSTRAINT role_PK PRIMARY KEY ( id ) ;

CREATE TABLE tax
  (
    id       NUMBER NOT NULL ,
    percent  NUMBER ,
    date_b   DATE ,
    date_e   DATE ,
    Date_add DATE ,
    User_add NVARCHAR2 (30) ,
    user_annul NVARCHAR2 (50) ,
    date_annul DATE
  ) ;
COMMENT ON TABLE tax
IS
  '�����' ;
  COMMENT ON COLUMN tax.id
IS
  '��' ;
  COMMENT ON COLUMN tax.percent
IS
  '�������' ;
  COMMENT ON COLUMN tax.date_b
IS
  '������ �������� ������' ;
  COMMENT ON COLUMN tax.date_e
IS
  '����� �������� ������' ;
  COMMENT ON COLUMN tax.Date_add
IS
  '���� �����' ;
  COMMENT ON COLUMN tax.User_add
IS
  '�������� �����' ;
  COMMENT ON COLUMN tax.user_annul
IS
  '���������' ;
  COMMENT ON COLUMN tax.date_annul
IS
  '���� ��������' ;
  ALTER TABLE tax ADD CONSTRAINT tax_PK PRIMARY KEY ( id ) ;

CREATE TABLE type_currency
  ( id NUMBER NOT NULL , name_tax NVARCHAR2 (30)
  ) ;
COMMENT ON TABLE type_currency
IS
  '������' ;
  COMMENT ON COLUMN type_currency.id
IS
  '��' ;
  COMMENT ON COLUMN type_currency.name_tax
IS
  '�������� ������' ;
  ALTER TABLE type_currency ADD CONSTRAINT type_currency_PK PRIMARY KEY ( id ) ;

CREATE TABLE type_depositor
  ( id NUMBER NOT NULL , name_face VARCHAR2 (20)
  ) ;
COMMENT ON TABLE type_depositor
IS
  '��� ��������� ��� ������' ;
  COMMENT ON COLUMN type_depositor.id
IS
  '��' ;
  COMMENT ON COLUMN type_depositor.name_face
IS
  '�������� ����' ;
  ALTER TABLE type_depositor ADD CONSTRAINT type_depositor_PK PRIMARY KEY ( id ) ;

CREATE TABLE view_deposit
  (
    id           NUMBER NOT NULL ,
    name_deposit VARCHAR2 (100) ,
    limit        NUMBER ,
    percent      NUMBER ,
    Data_open    DATE ,
    Date_close   DATE ,
    Date_create  DATE ,
    User_create  VARCHAR2 (30) ,
    date_update  DATE ,
    user_update NVARCHAR2 (30) ,
    Banks_id          NUMBER NOT NULL ,
    type_depositor_id NUMBER NOT NULL ,
    type_currency_id  NUMBER NOT NULL
  ) ;
COMMENT ON TABLE view_deposit
IS
  '��� ������' ;
  COMMENT ON COLUMN view_deposit.id
IS
  '��' ;
  COMMENT ON COLUMN view_deposit.name_deposit
IS
  '�������� ��������' ;
  COMMENT ON COLUMN view_deposit.limit
IS
  '���� ������' ;
  COMMENT ON COLUMN view_deposit.percent
IS
  '�������(�������)' ;
  COMMENT ON COLUMN view_deposit.Data_open
IS
  '������ �������� �����������' ;
  COMMENT ON COLUMN view_deposit.Date_close
IS
  '����� �������� �����������' ;
  COMMENT ON COLUMN view_deposit.Date_create
IS
  '���� �����' ;
  COMMENT ON COLUMN view_deposit.User_create
IS
  '�������� �����' ;
  COMMENT ON COLUMN view_deposit.date_update
IS
  '���� ����� �������� �����������' ;
  COMMENT ON COLUMN view_deposit.user_update
IS
  '�������� ��������� �����������' ;
  ALTER TABLE view_deposit ADD CONSTRAINT view_deposit_PK PRIMARY KEY ( id ) ;

ALTER TABLE Rights ADD CONSTRAINT Rights_Users_FK FOREIGN KEY ( Users_id ) REFERENCES Users ( id ) ;

ALTER TABLE Rights ADD CONSTRAINT Rights_role_FK FOREIGN KEY ( role_id ) REFERENCES role ( id ) ;

ALTER TABLE course ADD CONSTRAINT course_type_currency_FK FOREIGN KEY ( type_currency_id ) REFERENCES type_currency ( id ) ;

ALTER TABLE deposit ADD CONSTRAINT deposit_depositor_FK FOREIGN KEY ( depositor_id ) REFERENCES depositor ( id ) ;

ALTER TABLE deposit ADD CONSTRAINT deposit_view_deposit_FK FOREIGN KEY ( view_deposit_id ) REFERENCES view_deposit ( id ) ;

ALTER TABLE depositor ADD CONSTRAINT depositor_type_depositor_FK FOREIGN KEY ( type_depositor_id ) REFERENCES type_depositor ( id ) ;

ALTER TABLE view_deposit ADD CONSTRAINT view_deposit_Banks_FK FOREIGN KEY ( Banks_id ) REFERENCES Banks ( id ) ;

ALTER TABLE view_deposit ADD CONSTRAINT view_deposit_type_currency_FK FOREIGN KEY ( type_currency_id ) REFERENCES type_currency ( id ) ;

ALTER TABLE view_deposit ADD CONSTRAINT view_deposit_type_depositor_FK FOREIGN KEY ( type_depositor_id ) REFERENCES type_depositor ( id ) ;


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                            11
-- CREATE INDEX                             0
-- ALTER TABLE                             20
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
