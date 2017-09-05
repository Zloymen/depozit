create or replace package Manager is

  -- Author  : ZLOYMEN
  -- Created : 28.06.2015 11:25:49
  -- Purpose : Все для менеджера
  
  procedure get_val(cur_out out sys_refcursor);
  --курс за дату к определеному типу валюты
  procedure get_course(from_date in date,t_cost in number ,cur_out out sys_refcursor);
  procedure refresh_course(from_date in date,t_cost in number,curr_val in number ,cur_out out sys_refcursor);
  procedure hist_course(from_date in date,t_cost in number,curr_val in number ,cur_out out sys_refcursor);
  -- вставка курса
  procedure insert_course(from_date in date,t_cost in number,curr_val in number, new_cost in number);
  --
  procedure get_view_deposit(cur_out out sys_refcursor);
  procedure refresh_view_deposit(id in number, cur_out out sys_refcursor);
  procedure insert_view_deposit( v_name_deposit in varchar2, v_limit in number, v_percent in number, v_data_open in date, v_date_close in date,  v_banks_id in number, v_type_depositor_id in number, v_type_currency_id in number,id out number);
  procedure update_view_deposit( v_name_deposit in varchar2, v_limit in number, v_percent in number, v_data_open in date, v_date_close in date,  v_banks_id in number, v_type_depositor_id in number, v_type_currency_id in number,v_id in number);
end Manager;
/
create or replace package body Manager is

  procedure get_val(cur_out out sys_refcursor) as
  begin    
    open cur_out for select t.id,t.n_currency from TYPE_CURRENCY t order by 2;
  end get_val; 
  
  procedure get_view_deposit(cur_out out sys_refcursor) as
  begin    
    open cur_out for select vd.id, name_deposit, limit, percent, data_open, date_close, banks_id, type_depositor_id, type_currency_id, b.name_bank, td.name_face,tc.n_currency,tc.name_currency from view_deposit vd
                                   inner join  banks b on b.id=vd.banks_id
                                   inner join type_depositor td on vd.type_depositor_id=td.id 
                                   inner join type_currency tc on vd.type_currency_id=tc.id where vd.date_annul>sysdate
                                         order by b.name_bank, td.name_face, vd.name_deposit ;
  end get_view_deposit;
  
  procedure refresh_view_deposit(id in number, cur_out out sys_refcursor) as
  begin    
    open cur_out for select vd.id, name_deposit, limit, percent, data_open, date_close, banks_id, type_depositor_id, type_currency_id, b.name_bank, td.name_face,tc.n_currency,tc.name_currency from view_deposit vd
                                   inner join  banks b on b.id=vd.banks_id
                                   inner join type_depositor td on vd.type_depositor_id=td.id 
                                   inner join type_currency tc on vd.type_currency_id=tc.id where vd.id=refresh_view_deposit.id and vd.date_annul>sysdate;
  end refresh_view_deposit; 
  
  procedure insert_view_deposit( v_name_deposit in varchar2, v_limit in number, v_percent in number, v_data_open in date, v_date_close in date,  v_banks_id in number, v_type_depositor_id in number, v_type_currency_id in number,id out number) as
  begin    
     insert into view_deposit
        (id, name_deposit, limit, percent, data_open, date_close,  banks_id, type_depositor_id, type_currency_id)
      values
        (sq_view_deposit.nextval, v_name_deposit, v_limit, v_percent, v_data_open, v_date_close,  v_banks_id, v_type_depositor_id, v_type_currency_id) returning view_deposit.id into insert_view_deposit.id; 
      commit;
     exception when others then 
       rollback;
       raise;   
  end insert_view_deposit; 
  
  procedure update_view_deposit( v_name_deposit in varchar2, v_limit in number, v_percent in number, v_data_open in date, v_date_close in date,  v_banks_id in number, v_type_depositor_id in number, v_type_currency_id in number,v_id in number) as
  begin    
  update view_deposit
     set name_deposit = v_name_deposit,
         limit = v_limit,
         percent = v_percent,
         data_open = v_data_open,
         date_close = v_date_close,
         banks_id = v_banks_id,
         type_depositor_id = v_type_depositor_id,
         type_currency_id = v_type_currency_id
   where id = v_id;
      commit;
     exception when others then 
       rollback;
       raise;   
  end update_view_deposit;
  
  procedure get_course(from_date in date,t_cost in number ,cur_out out sys_refcursor) as
  begin    
    open cur_out for select t_m.id type_val, n_currency, name_currency,case when (t_m.id=t_cost) then 1 else cc.cost end cost,cc.id id_course, from_date date_in,get_course.t_cost t_cost from type_currency t_m 
         left join(select round(case when (c.type_cost= t_cost) then c.cost else 1/c.cost  end,5) cost,c.id ,case when (c.type_cost= t_cost) then c.type_currency_id else c.type_cost end type_currency_id from course c where from_date between c.date_b and c.date_e and (c.type_cost= t_cost or c.type_currency_id=t_cost) and c.date_annul>sysdate)cc on cc.type_currency_id=t_m.id
              order by 2;
  end get_course; 
  
  procedure refresh_course(from_date in date,t_cost in number,curr_val in number ,cur_out out sys_refcursor) as
  begin    
    open cur_out for 
      select t_m.id type_val, n_currency, name_currency,cc.cost,cc.id id_course from type_currency t_m 
         left join(select round(case when (c.type_cost= t_cost) then c.cost else 1/c.cost end,5) cost,c.id ,case when (c.type_cost= t_cost) then c.type_currency_id else c.type_cost end type_currency_id from course c where from_date between c.date_b and c.date_e and (c.type_cost= t_cost or c.type_currency_id=t_cost) and c.date_annul>sysdate)cc on cc.type_currency_id=t_m.id
              where t_m.id=curr_val; 
  end refresh_course;  
  
  procedure hist_course(from_date in date,t_cost in number,curr_val in number ,cur_out out sys_refcursor) as
  begin    
    open cur_out for select round(case when (c.type_cost= t_cost) then c.cost else 1/c.cost end,5) cost,c.id id_course,c.date_add,c.user_add,c.date_annul,c.user_annul from type_currency t_m left join course c on (c.type_currency_id=t_m.id or c.type_cost=t_m.id)
       where from_date between c.date_b and c.date_e and (c.type_cost= t_cost or c.type_currency_id=t_cost) and t_m.id=curr_val order by 3;
  end hist_course; 
  
  procedure insert_course(from_date in date,t_cost in number,curr_val in number, new_cost in number) as
  begin    
    --аннулируем текущию
    update course c set c.date_annul=sysdate,c.user_annul=user 
                  where from_date between c.date_b and c.date_e and c.date_annul>sysdate
                    and ((c.type_cost= t_cost and c.type_currency_id=curr_val) 
                        or (c.type_cost=curr_val  and c.type_currency_id= t_cost));
    --добавляем новую
    insert into course c
        (c.id, c.date_b, c.date_e, c.cost, c.type_cost,  c.type_currency_id)
      values
        (sq_course.nextval, TO_TIMESTAMP(from_date, 'dd.mm.yy HH:MI:SS'), TO_TIMESTAMP(from_date+1, 'dd.mm.yy HH:MI:SS')-(1/24/60/60), new_cost, t_cost,  curr_val);
    commit;
    exception when others then 
      rollback;
      raise;
  end insert_course; 

end Manager;
/
