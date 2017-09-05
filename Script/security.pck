create or replace package security is

  -- Author  : ZLOYMEN
  -- Created : 27.06.2015 12:36:20
  -- Purpose : для администратора
  
  procedure get_user(cur_out out sys_refcursor);
  
  procedure get_users(cur_out out sys_refcursor);
  procedure refresh_users(id in number,cur_out out sys_refcursor);
  procedure insert_user(login_in in nvarchar2,fio_user in nvarchar2,id out number);
  procedure update_user(fio_user in nvarchar2,id in number);
  
  procedure get_rights(id in number,cur_out out sys_refcursor);
  procedure set_right(id in number,id_param in number, check_in in number);

    

end security;
/
create or replace package body security is

procedure get_user(cur_out out sys_refcursor) as
  begin
    open cur_out for 
      select u.id,login_ora,fio_user,
         sum(case when (role_id=1) then 1 else 0 end)  id_admin,
         sum(case when (role_id=2) then 1 else 0 end)  id_oper,
         sum(case when (role_id=3) then 1 else 0 end)  id_manager,
         sum(case when (role_id=4) then 1 else 0 end)  id_oper_spr,
         sum(case when (role_id=5) then 1 else 0 end)  id_anal 
                     from users u inner join rights r on (u.id=r.users_id) where u.login_ora=user group by u.id,login_ora,fio_user;
  end get_user;
  
procedure get_users(cur_out out sys_refcursor) as
  begin
    open cur_out for select u.id,login_ora,fio_user from users u order by 2;
  end get_users;
  
procedure refresh_users(id in number,cur_out out sys_refcursor) as
  begin
    open cur_out for select u.id,login_ora,fio_user from users u where u.id=refresh_users.id;
  end refresh_users;
  
procedure insert_user(login_in in nvarchar2,fio_user in nvarchar2,id out number) as
  cur_user nvarchar2(30);
  begin
    select username into cur_user from all_users where username=upper(login_in);
    insert into users u (id, login_ora, fio_user, date_add, user_add)
         values (SQ_USER.Nextval, upper(login_in), fio_user, sysdate, user) 
                returning u.id into insert_user.id;
    commit;            
    EXCEPTION 
      WHEN NO_DATA_FOUND then raise_application_error(-20002,'Данный логин не зарегистрирован в БД!');
      --when others then raise_application_error(-20003,'Данный логин уже есть в базе данных!');
     
  end insert_user;  
  
procedure update_user(fio_user in nvarchar2,id in number) as
  begin
    update users u set u.fio_user = update_user.fio_user where id = update_user.id;       
    commit;            
    EXCEPTION       
      when others then 
          rollback;
          raise;
  end update_user;   
  
procedure get_rights(id in number,cur_out out sys_refcursor) as
  begin
    open cur_out for select 
         sum(case when (role_id=1) then 1 else 0 end)  id_admin,
         sum(case when (role_id=2) then 1 else 0 end)  id_oper,
         sum(case when (role_id=3) then 1 else 0 end)  id_manager,
         sum(case when (role_id=4) then 1 else 0 end)  id_oper_spr,
         sum(case when (role_id=5) then 1 else 0 end)  id_anal 
                  from rights r where r.users_id=get_rights.id group by users_id;
  end get_rights; 
procedure set_right(id in number,id_param in number, check_in in number) as
  begin
    if check_in=1 then
       insert into rights (id, users_id, role_id) values (SQ_RIGHTS.NEXTVAL,set_right.id,id_param);
    else
       delete from rights where users_id=set_right.id and role_id=id_param;
    end if;
    commit;
    exception when others then
        rollback;        
  end set_right;    

end security;
/
