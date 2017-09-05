create or replace package Catalog is
  --получить валюту     
  procedure get_currency(cur_out out sys_refcursor);
  --Получить типы
  procedure get_type(cur_out out sys_refcursor);
  
  procedure get_banks(cur_out out sys_refcursor);
  procedure refresh_banks(my_id in number,cur_out out sys_refcursor);
  procedure insert_bank(name_bank in varchar2, details_bank in varchar2 ,my_id out number);
  procedure update_bank(name_bank in varchar2, details_bank in varchar2 ,my_id in number);
  procedure delete_bank(my_id in number);
end Catalog;
/
create or replace package body Catalog is

  procedure get_currency(cur_out out sys_refcursor) as
  begin
    open cur_out for select id, n_currency, name_currency from type_currency order by 2;
  end get_currency;
  
  procedure get_type(cur_out out sys_refcursor) as
  begin    
    open cur_out for select id, name_face from type_depositor order by 2;
  end get_type;
    
  procedure get_banks(cur_out out sys_refcursor) as
  begin    
    open cur_out for select id my_id, name_bank, details_bank, date_add, user_add from banks order by 2;
  end get_banks; 
  
  procedure refresh_banks(my_id in number,cur_out out sys_refcursor) as
  begin    
    open cur_out for select id my_id, name_bank, details_bank, date_add, user_add from banks where id=refresh_banks.my_id;
  end refresh_banks;  
  
  procedure insert_bank(name_bank in varchar2, details_bank in varchar2 ,my_id out number) as
  begin    
    insert into banks (id, name_bank, details_bank)
           values (SQ_BANKS.Nextval, Upper(insert_bank.name_bank), insert_bank.details_bank) returning banks.id into my_id;    
    commit;
    exception when others then
      rollback;     
      raise;          
  end insert_bank; 
  
  procedure update_bank(name_bank in varchar2, details_bank in varchar2 ,my_id in number) as
  begin 
    update banks
       set 
           name_bank = name_bank,
           details_bank = details_bank,
           date_add = sysdate,
           user_add = user
     where id = my_id;
    commit;
    exception when others then
      rollback;     
      raise;          
  end update_bank; 
  
  procedure delete_bank(my_id in number) as
  begin 
    delete banks where id = my_id;
    commit;
    exception when others then
      rollback;     
      raise;          
  end delete_bank; 
   
end Catalog;
/
