unit u_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, DBAccess, OdacVcl, DB,
  Ora, ComCtrls, sPageControl, ExtCtrls, sPanel, sSkinProvider, sSkinManager, StdCtrls, sButton, sSplitter,
  u_getuser, MemDS, common_all, DBGridEhGrouping, ToolCtrlsEh, u_admin,u_spr, u_manager, u_oper, u_analitik,
  DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh,
  DASQLMonitor, OraSQLMonitor;

type
  Tf_main = class(TForm)
    p_main: TsPanel;
    ses_main: TOraSession;
    cd: TConnectDialog;
    p_func: TsPanel;
    skin_manager: TsSkinManager;
    skin_form: TsSkinProvider;
    sSplitter1: TsSplitter;
    p_form: TsPanel;
    GET_USER: TOraStoredProc;
    OraSQLMonitor1: TOraSQLMonitor;
    procedure ses_mainAfterConnect(Sender: TObject);
    //вызов функции администратора
    procedure b_adminClick(Sender: TObject);
    //вызов функции оператора
    procedure b_operClick(Sender: TObject);
    //вызов функции менеджера
    procedure b_managerClick(Sender: TObject);
    //вызов функции оператора спр ин-вы
    procedure b_oper_sprClick(Sender: TObject);
    //вызов функции аналитика
    procedure b_analClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    b_admin:TsButton;
    b_oper:TsButton;
    b_manager:TsButton;
    b_oper_spr:TsButton;
    b_anal:TsButton;
    work_form: TForm;
    //создать кнопку
    function add_button(title: string; func : TNotifyEvent; my_top:integer) : TsButton;

  public
    { Public declarations }
  end;

var
  f_main: Tf_main;

implementation

{$R *.dfm}

procedure Tf_main.ses_mainAfterConnect(Sender: TObject);
var
i: integer;
begin
   refresh_table(GET_USER);
   if (u_getuser.set_user(GET_USER)=1) then f_main.Close;
   i:=0;
   if (u_getuser.get_user.is_admin) then
   begin
      b_admin:=add_button('Администрирование',b_adminClick,i);
      i:=i+50;
   end;
   if (u_getuser.get_user.is_operator) then
   begin
      b_oper:=add_button('Оператор',b_operClick,i);
      i:=i+50;
   end;
   if (u_getuser.get_user.is_manager) then
   begin
      b_manager:=add_button('Менеджер',b_managerClick,i);
      i:=i+50;
   end;
   if (u_getuser.get_user.is_reference) then
   begin
      b_oper_spr:=add_button('Оператор спр. ин-фы',b_oper_sprClick,i);
      i:=i+50;
   end;
   if (u_getuser.get_user.is_analitik) then
   begin
      b_anal:=add_button('Аналитик',b_analClick,i);
      i:=i+50;
   end;
end;

function Tf_main.add_button(title: string; func : TNotifyEvent; my_top:integer) : TsButton;
var t:TsButton;
begin
  t:=TsButton.Create(p_func);
  with t do
   begin
    Left := 0;
    Top := my_top;
    Width:= p_func.Width;
    Height:= 50;
    Caption:=title;
    Parent:=(p_func as TWinControl);
    OnClick:=func;
   end;
   add_button:=t;
end;

procedure Tf_main.b_adminClick(Sender: TObject);
begin
  if Assigned(work_form) then freeandnil(work_form);
  work_form:=Tf_admin.Create(p_form);
end;

procedure Tf_main.b_operClick(Sender: TObject);
begin
  if Assigned(work_form) then freeandnil(work_form);
  work_form:=Tf_oper.Create(p_form);
end;

procedure Tf_main.b_managerClick(Sender: TObject);
begin
  if Assigned(work_form) then freeandnil(work_form);
  work_form:=Tf_manager.Create(p_form);
end;

procedure Tf_main.b_oper_sprClick(Sender: TObject);
begin
  if Assigned(work_form) then freeandnil(work_form);
  work_form:=Tf_spr.Create(p_form);
end;

procedure Tf_main.b_analClick(Sender: TObject);
begin
  if Assigned(work_form) then freeandnil(work_form);
  work_form:=Tf_analitik.Create(p_form);
end;

procedure Tf_main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=caFree;
  Application.Terminate;
end;

procedure Tf_main.FormCreate(Sender: TObject);
begin
  ses_main.Open;
end;

end.
