create or replace package operator is

  -- Author  : ZLOYMEN
  -- Created : 28.06.2015 16:20:54
  -- Purpose : Для операциониста
  
  procedure get_depositor(type_dep in number default -1, cur_out out sys_refcursor);
  procedure refresh_depositor(id in number, cur_out out sys_refcursor);
  procedure get_one_depositor(id in number, cur_out out sys_refcursor);
  procedure insert_depositor(id out number, v_name_depositor in varchar2, v_detail_depositor in varchar2, v_type_depositor_id in number);
  procedure update_depositor(v_id in number, v_name_depositor in varchar2, v_detail_depositor in varchar2, v_type_depositor_id in number);
  procedure get_view_deposit_with_bank(b_id in number, cur_out out sys_refcursor);
  procedure insert_deposit(id out number,v_date_open in date,  v_depositor_id in number, v_summa_deposit in number,  v_view_deposit_id in number);
  procedure get_deposits(cur_begin in date default sysdate, cur_end in date default sysdate, cur_out out sys_refcursor) ;
  
end operator;
/
create or replace package body operator is

procedure get_depositor(type_dep in number default -1, cur_out out sys_refcursor) as
  begin
    open cur_out for select d.id, name_depositor, detail_depositor, type_depositor_id,td.name_face from depositor d 
                    inner join type_depositor td on td.id=d.type_depositor_id 
                          where d.type_depositor_id=decode(type_dep,-1,d.type_depositor_id,type_dep)
                                order by 2;
  end get_depositor;
  
procedure get_deposits(cur_begin in date default sysdate, cur_end in date default sysdate, cur_out out sys_refcursor) as
  begin
    open cur_out for select d.id, date_open, depositor_id, summa_deposit, d.date_close, user_open, user_close, view_deposit_id,
       vd.name_deposit,dd.name_depositor,b.name_bank,td.name_face,tc.n_currency, tc.name_currency
       from deposits d 
       inner join view_deposit vd on(d.view_deposit_id=vd.id)
       inner join depositor dd on(d.depositor_id=dd.id)
       inner join banks b on(b.id=vd.banks_id)
       inner join type_depositor td on(vd.type_depositor_id=td.id)
       inner join type_currency tc on(vd.type_currency_id=tc.id) where date_open between cur_begin and cur_end;
  end get_deposits;  

procedure refresh_depositor(id in number, cur_out out sys_refcursor) as
  begin
    open cur_out for select d.id, name_depositor, detail_depositor, type_depositor_id,td.name_face from depositor d 
                    inner join type_depositor td on td.id=d.type_depositor_id 
                          where d.id=refresh_depositor.id;
  end refresh_depositor;  
  
procedure get_one_depositor(id in number, cur_out out sys_refcursor) as
  begin
    open cur_out for select d.id, name_depositor, detail_depositor, type_depositor_id from depositor d 
                            where d.id=get_one_depositor.id;
  end get_one_depositor;

procedure insert_depositor(id out number, v_name_depositor in varchar2, v_detail_depositor in varchar2, v_type_depositor_id in number) as
  begin
    insert into depositor
          (id, name_depositor, detail_depositor, type_depositor_id)
        values
          (sq_depositor.nextval, v_name_depositor, v_detail_depositor, v_type_depositor_id) returning depositor.id into insert_depositor.id ;
    commit;      
    exception when others then 
      rollback;
      raise;      
  end insert_depositor;
  
procedure insert_deposit(id out number,v_date_open in date,  v_depositor_id in number, v_summa_deposit in number,  v_view_deposit_id in number) as
  begin
    insert into deposits
        (id, depositor_id, summa_deposit, view_deposit_id ,date_open)
      values
        (SQ_DEPOSITS.Nextval, v_depositor_id, v_summa_deposit, v_view_deposit_id, v_date_open) returning deposits.id  into insert_deposit.id;
    commit;      
    exception when others then 
      rollback;
      id:=-1;
      raise;      
  end insert_deposit;  

procedure update_depositor(v_id in number, v_name_depositor in varchar2, v_detail_depositor in varchar2, v_type_depositor_id in number) as
  begin
  update depositor
     set name_depositor = v_name_depositor,
         detail_depositor = v_detail_depositor,
         type_depositor_id = v_type_depositor_id
                           where id = v_id;
    commit;      
    exception when others then 
      rollback;
      raise;      
  end update_depositor;      

procedure get_view_deposit_with_bank(b_id in number, cur_out out sys_refcursor) as
  begin    
    open cur_out for select vd.id, name_deposit, limit, percent, data_open, date_close, banks_id, type_depositor_id, type_currency_id, b.name_bank, td.name_face,tc.n_currency,tc.name_currency from view_deposit vd
                                   inner join  banks b on b.id=vd.banks_id
                                   inner join type_depositor td on vd.type_depositor_id=td.id
                                   inner join type_currency tc on vd.type_currency_id=tc.id where banks_id=b_id and vd.date_annul>sysdate
                                         order by b.name_bank, td.name_face, vd.name_deposit;
  end get_view_deposit_with_bank;
   
end operator;
/
