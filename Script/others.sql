create sequence SQ_USER minvalue 1 maxvalue 9999999  start with 0 increment by 1 cache 2;
create sequence SQ_RIGHTS minvalue 1 maxvalue 999999999 start with 1 increment by 1 cache 2;
create sequence SQ_type_currency minvalue 1 maxvalue 99999999 start with 1 increment by 1 cache 2;
create sequence SQ_type_depositor minvalue 1 maxvalue 99999999 start with 1 increment by 1 cache 2;
create sequence sq_course minvalue 1 maxvalue 99999999999999999999 start with 1 increment by 1 cache 2;
create sequence SQ_BANKS minvalue 1 maxvalue 99999999999999 start with 1 increment by 1 cache 2;
create sequence sq_view_deposit minvalue 1 maxvalue 999999999999999999 start with 1 increment by 1 cache 2;
create sequence SQ_DEPOSITS minvalue 1 maxvalue 9999999999999 start with 1 increment by 1 cache 2;

alter table USERS modify date_add default sysdate not null;
alter table USERS modify user_add default user not null;
alter table USERS add constraint UNQ_LOGIN unique (LOGIN_ORA);
alter table RIGHTS add constraint KEY_UNIQ_RIGHTS unique (ROLE_ID, USERS_ID);
alter table COURSE modify date_add default sysdate not null;
alter table COURSE modify user_add default user not null;
alter table COURSE modify user_annul default 'none' not null;
alter table COURSE modify date_annul default to_date('01.01.2099') not null;
alter table BANKS modify date_add default sysdate not null;
alter table BANKS modify user_add default user not null;
alter table BANKS add constraint unq_banks unique (NAME_BANK);
alter table VIEW_DEPOSIT modify date_create default sysdate not null;
alter table VIEW_DEPOSIT modify user_create default user not null;
alter table VIEW_DEPOSIT modify date_annul default to_date('01.01.2099') not null;
alter table VIEW_DEPOSIT modify date_annul default 'none' not null;
alter table DEPOSITOR modify date_add default sysdate not null;
alter table DEPOSITOR modify user_add default user not null;
alter table DEPOSITOR add constraint UNQ_DEPOSITOR unique (NAME_DEPOSITOR, TYPE_DEPOSITOR_ID);
alter table DEPOSITS modify date_open default sysdate not null;
alter table DEPOSITS modify user_open default user not null;


