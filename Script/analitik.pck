create or replace package analitik is

  -- Author  : ZLOYMEN
  -- Created : 28.06.2015 10:44:20
  -- Purpose : для аналитика


  procedure get_otchet1(cur_begin in date,cur_end in date ,cur_out out sys_refcursor); 
  procedure get_otchet2(id_bank in number ,cur_begin in date,cur_end in date ,cur_out out sys_refcursor);
  function table_date (date_begin in date,date_end in date ) return DATE_for$table pipelined;
  function get_oper (id_bank in number, date_begin in date,date_end in date )
    return bank_oper$table pipelined;
    
end analitik;
/
create or replace package body analitik is

  procedure get_otchet1(cur_begin in date,cur_end in date ,cur_out out sys_refcursor) as
  begin    
    open cur_out for select view_deposit_id, b_sum, b_kol, e_sum, e_kol, pr_sum, pr_kol, rh_sum, rh_kol, 
                            rh_sum_perc ,vd.name_deposit, b.name_bank,td.name_face,(e_sum-b_sum)otkl_sum, (e_kol-b_kol)otkl_kol   from
      (select view_deposit_id,sum(case when(date_open<cur_begin) then summa_deposit else 0 end) b_sum,
                                      sum(case when(date_open<cur_begin) then 1 else 0 end) b_kol,
                                      sum(case when(date_open+vd.limit>cur_end) then summa_deposit else 0 end) e_sum,
                                      sum(case when(date_open+vd.limit>cur_end) then 1 else 0 end) e_kol, 
                                      sum(case when(date_open>=cur_begin) then summa_deposit else 0 end) pr_sum,
                                      sum(case when(date_open>=cur_begin) then 1 else 0 end) pr_kol,
                                      sum(case when(date_open+limit<cur_end) then summa_deposit else 0 end) rh_sum,
                                      sum(case when(date_open+limit<cur_end) then 1 else 0 end) rh_kol, 
                                      sum(case when(date_open+limit<cur_end) then trunc((summa_deposit*percent*vd.limit)/(365*100),2) else 0 end) rh_sum_perc
                                        
             from deposits d 
             inner join view_deposit vd on(d.view_deposit_id=vd.id)
                   where (date_open between cur_begin and cur_end) or(date_open+vd.limit >= cur_begin)
                          group by view_deposit_id) 
                             inner join view_deposit vd on (view_deposit_id=vd.id) 
                             inner join banks b on (b.id=vd.banks_id)
                             inner join type_depositor td on(vd.type_depositor_id=td.id) order by  b.name_bank,td.name_face,vd.name_deposit  ;
  end get_otchet1; 

  procedure get_otchet2(id_bank in number ,cur_begin in date,cur_end in date ,cur_out out sys_refcursor) as 
    begin 
      open cur_out for select date_for,sum_all from
                          (select date_for,date_oper,sum_all,row_number()over (partition by date_for order by date_oper desc ) rn from table(analitik.table_date(cur_begin,cur_end))a cross join 
                          (select date_oper,sum_all from 
                          (select t.date_oper,sum(case when(o_type=3) then -sum_oper else sum_oper end)over (order by date_oper,id_deposit asc) sum_all,
                                 row_number() over(partition by date_oper order by id_deposit desc) rn 
                                  from table(analitik.get_oper(id_bank,cur_begin,cur_end)) t )where rn=1) b where date_for>=date_oper ) where rn=1;
    end get_otchet2;
    
  
  function table_date (date_begin in date,date_end in date )
        return DATE_for$table pipelined as
     curr_date date;
  begin
    curr_date:=date_begin;
    loop
      pipe row (DATE_for$object(trunc(curr_date,'dd')));

      exit when (curr_date = date_end);
      curr_date:=curr_date+1;	
	  end loop;
  end table_date;
  
  function get_oper (id_bank in number, date_begin in date,date_end in date )
        return bank_oper$table pipelined as
  begin
  --начальные данные
  for tt in 
      (select banks_id,date_begin date_oper,1 otype,sum(d.summa_deposit) sum_oper,0 perc,view_deposit_id id_deposit from deposits d 
             inner join view_deposit vd on(d.view_deposit_id=vd.id)
                   where vd.banks_id=id_bank and(date_begin between date_open and date_open+vd.limit)
                          group by view_deposit_id,banks_id) loop
                                pipe row (bank_oper$object(tt.banks_id,trunc(date_begin),tt.otype,tt.sum_oper,tt.perc,tt.id_deposit));
                          end loop;
  --приходы
  for tt in 
      (select banks_id,d.date_open,2 otype,sum(d.summa_deposit) sum_oper,0 perc,view_deposit_id id_deposit from deposits d 
             inner join view_deposit vd on(d.view_deposit_id=vd.id)
                   where vd.banks_id=id_bank and(date_open between date_begin and date_end)
                          group by view_deposit_id,banks_id,d.date_open) loop
                                pipe row (bank_oper$object(tt.banks_id,tt.date_open,tt.otype,tt.sum_oper,tt.perc,tt.id_deposit));
                          end loop;  
  --расходы
  for tt in 
      (select banks_id,d.date_open+vd.limit d_end,3 otype,sum(d.summa_deposit) sum_oper,sum(trunc((summa_deposit*percent*vd.limit)/(365*100),2)) perc,view_deposit_id id_deposit from deposits d 
             inner join view_deposit vd on(d.view_deposit_id=vd.id)
                   where vd.banks_id=id_bank and(d.date_open+vd.limit between date_begin and date_end)
                          group by view_deposit_id,banks_id,d.date_open+vd.limit) loop
                                pipe row (bank_oper$object(tt.banks_id,tt.d_end,tt.otype,tt.sum_oper,tt.perc,tt.id_deposit));
                          end loop;
  end get_oper;        

end analitik;
/
