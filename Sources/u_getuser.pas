unit u_getuser;
interface

uses DB,SysUtils;

   type user_arm = record
     username: String;
     fio:string;
     pk_user:double;
     is_admin:boolean;
     is_operator:boolean;
     is_manager:boolean;
     is_reference:boolean;
     is_analitik:boolean;
   end;
   //получаем юзера
   function get_user:user_arm;
   //устанавливаем
   function set_user(GET_user: TDataSet):integer;

var
 user: user_arm;



implementation

{
      --1 -Администратор
      --2 -Оператор
      --3 -Менеджер
      --4 -Оператор справочной
      --5 -Аналитик
}
function get_user:user_arm;
begin
  get_user:=user;
end;

function set_user(GET_user: TDataSet):integer;
begin
  try
    user.username:= get_user.findfield('login_ora').value;
    user.fio:=get_user.findfield('fio_user').value;
    user.is_admin:=(get_user.findfield('id_admin').value=1);
    user.is_operator:=(get_user.findfield('id_oper').value=1);
    user.is_manager:=(get_user.findfield('id_manager').value=1);
    user.is_reference:=(get_user.findfield('id_oper_spr').value=1);
    user.is_analitik:=(get_user.findfield('id_anal').value=1);     
    set_user:=0;
  except
    set_user:=1;
end;

end;


end.
 