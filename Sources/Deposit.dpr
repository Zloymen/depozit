program Deposit;

uses
  Forms,
  u_main in 'u_main.pas' {f_main},
  u_getuser in 'u_getuser.pas',
  u_admin in 'u_admin.pas' {f_admin},
  u_spr in 'u_spr.pas' {f_spr},
  u_manager in 'u_manager.pas' {f_manager},
  u_oper in 'u_oper.pas' {f_oper},
  u_analitik in 'u_analitik.pas' {f_analitik},
  u_tender in 'u_tender.pas' {f_tender},
  u_view_depositor in 'u_view_depositor.pas' {f_view_depositor},
  u_add_client in 'u_add_client.pas' {f_add_client},
  u_new_deposit in 'u_new_deposit.pas' {f_new_deposit};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tf_main, f_main);
  Application.Run;
end.
