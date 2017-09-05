declare 
  id_adm number;
begin
  insert into role (id, name_role) values (1, 'Администратор');
  insert into role (id, name_role) values (2, 'Оператор');
  insert into role (id, name_role) values (3, 'Менеджер');
  insert into role (id, name_role) values (4, 'Оператор справочной');
  insert into role (id, name_role) values (5, 'Аналитик');

  insert into users u (id, login_ora, fio_user, date_add, user_add)
         values (SQ_USER.Nextval, upper('adm_deposit'), 'Встроеная запись администратора', sysdate, user) 
                returning u.id into id_adm;
                
  insert into rights (id, users_id, role_id) values (SQ_RIGHTS.NEXTVAL, id_adm, 1);
  insert into rights (id, users_id, role_id) values (SQ_RIGHTS.NEXTVAL, id_adm, 2);
  insert into rights (id, users_id, role_id) values (SQ_RIGHTS.NEXTVAL, id_adm, 3);
  insert into rights (id, users_id, role_id) values (SQ_RIGHTS.NEXTVAL, id_adm, 4);
  insert into rights (id, users_id, role_id) values (SQ_RIGHTS.NEXTVAL, id_adm, 5);               
  commit       ;
  exception when others then rollback;
end;        

         
         
       
