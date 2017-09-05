

insert into type_currency (id, n_currency, name_currency)
       values (SQ_type_currency.Nextval, 'USD', 'доллар США');
insert into type_currency (id, n_currency, name_currency)
       values (SQ_type_currency.Nextval, 'EUR', 'евро');  
insert into type_currency (id, n_currency, name_currency)
       values (SQ_type_currency.Nextval, 'GBR', 'фунт стерлингов'); 
insert into type_currency (id, n_currency, name_currency)
       values (SQ_type_currency.Nextval, 'RUB', 'Российский рубль');  
insert into type_currency (id, n_currency, name_currency)
       values (SQ_type_currency.Nextval, 'UAH', 'Украинская гривна'); 
insert into type_currency (id, n_currency, name_currency)
       values (SQ_type_currency.Nextval, 'BYR', 'Белорусский рубль');
insert into type_currency (id, n_currency, name_currency)
       values (SQ_type_currency.Nextval, 'GEL', 'Грузинский лари');  
insert into type_currency (id, n_currency, name_currency)
       values (SQ_type_currency.Nextval, 'AMD', 'Армянский драм'); 
insert into type_currency (id, n_currency, name_currency)
       values (SQ_type_currency.Nextval, 'KZT', 'Казакский тенге');  
insert into type_currency (id, n_currency, name_currency)
       values (SQ_type_currency.Nextval, 'KZS', 'Киргизский сом'); 
insert into type_currency (id, n_currency, name_currency)
       values (SQ_type_currency.Nextval, 'CNY', 'Китайские юань');                            
commit;     

insert into type_depositor (id, name_face)
       values (sq_type_depositor.nextval, 'Физ. лицо');
insert into type_depositor (id, name_face)
       values (sq_type_depositor.nextval, 'Юр. лицо');  
commit;       
