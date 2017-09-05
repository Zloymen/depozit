declare 
  id_adm number;
begin
  insert into role (id, name_role) values (1, '�������������');
  insert into role (id, name_role) values (2, '��������');
  insert into role (id, name_role) values (3, '��������');
  insert into role (id, name_role) values (4, '�������� ����������');
  insert into role (id, name_role) values (5, '��������');

  insert into users u (id, login_ora, fio_user, date_add, user_add)
         values (SQ_USER.Nextval, upper('adm_deposit'), '��������� ������ ��������������', sysdate, user) 
                returning u.id into id_adm;
                
  insert into rights (id, users_id, role_id) values (SQ_RIGHTS.NEXTVAL, id_adm, 1);
  insert into rights (id, users_id, role_id) values (SQ_RIGHTS.NEXTVAL, id_adm, 2);
  insert into rights (id, users_id, role_id) values (SQ_RIGHTS.NEXTVAL, id_adm, 3);
  insert into rights (id, users_id, role_id) values (SQ_RIGHTS.NEXTVAL, id_adm, 4);
  insert into rights (id, users_id, role_id) values (SQ_RIGHTS.NEXTVAL, id_adm, 5);               
  commit       ;
  exception when others then rollback;
end;        

         
         
       
