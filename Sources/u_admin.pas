unit u_admin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  sDBNavigator, DB, DBAccess, Ora, MemDS, StdCtrls, sCheckBox, GridsEh,
  DBAxisGridsEh, DBGridEh, ExtCtrls, sSplitter, sSkinProvider, sPanel, common_all;

type
  Tf_admin = class(TForm)
    p_top: TsPanel;
    skin_form: TsSkinProvider;
    p_all: TsPanel;
    p_user: TsPanel;
    sSplitter1: TsSplitter;
    p_rights: TsPanel;
    gr_user: TDBGridEh;
    cb_admin: TsCheckBox;
    cb_oper: TsCheckBox;
    cb_manager: TsCheckBox;
    cb_oper_spr: TsCheckBox;
    cb_analitik: TsCheckBox;
    GET_USERS: TOraStoredProc;
    ds_GET_USERS: TOraDataSource;
    sDBNavigator1: TsDBNavigator;
    GET_RIGHTS: TOraStoredProc;
    SET_RIGHT: TOraStoredProc;
    procedure GET_USERSAfterPost(DataSet: TDataSet);
    procedure GET_USERSAfterScroll(DataSet: TDataSet);
    procedure GET_RIGHTSBeforeOpen(DataSet: TDataSet);
    procedure GET_RIGHTSAfterOpen(DataSet: TDataSet);
    procedure cb_adminClick(Sender: TObject);
  private
    procedure SETRIGHT(id_user: double; id_role: integer; ch: boolean);
  public
    constructor Create(AOwner: TComponent);
  end;

var
  f_admin: Tf_admin;

implementation

{$R *.dfm}

constructor Tf_admin.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  init_grid(gr_user);
  self.parent:=(AOwner as TWinControl);
  refresh_table(gr_user.datasource.dataset);
  show;
end;

procedure Tf_admin.GET_USERSAfterPost(DataSet: TDataSet);
begin
  refresh_record(gr_user.datasource.dataset);
end;

procedure Tf_admin.GET_USERSAfterScroll(DataSet: TDataSet);
begin
  refresh_table(GET_RIGHTS);
end;

procedure Tf_admin.GET_RIGHTSBeforeOpen(DataSet: TDataSet);
begin
  //deposit.SECURITY.GET_RIGHTS(:ID, :CUR_OUT);
  GET_RIGHTS.ParamByName('id').Value:=GET_USERS.findField('id').Value;
end;

procedure Tf_admin.GET_RIGHTSAfterOpen(DataSet: TDataSet);
begin
  if (GET_RIGHTS.RecordCount=0) then
    begin
      cb_admin.Checked:=false;
      cb_oper.Checked:=false;
      cb_manager.Checked:=false;
      cb_oper_spr.Checked:=false;
      cb_analitik.Checked:=false;
    end else
    begin
      cb_admin.Checked:=(GET_RIGHTS.FindField('id_admin').Value=1);
      cb_oper.Checked:=(GET_RIGHTS.FindField('id_oper').Value=1);
      cb_manager.Checked:=(GET_RIGHTS.FindField('id_manager').Value=1);
      cb_oper_spr.Checked:=(GET_RIGHTS.FindField('id_oper_spr').Value=1);
      cb_analitik.Checked:=(GET_RIGHTS.FindField('id_anal').Value=1);
    end;
end;

procedure Tf_admin.SETRIGHT(id_user: double; id_role: integer; ch: boolean);
begin
  //deposit.SECURITY.SET_RIGHT(:ID, :ID_PARAM, :CHECK_IN);
  SET_RIGHT.ParamByName('ID').Value:=id_user;
  SET_RIGHT.ParamByName('ID_PARAM').Value:=id_role;
  if (ch=true) then SET_RIGHT.ParamByName('CHECK_IN').Value:=1
    else SET_RIGHT.ParamByName('CHECK_IN').Value:=0;
  SET_RIGHT.Execute;
end;


procedure Tf_admin.cb_adminClick(Sender: TObject);
var
  cb:TsCheckBox;
  i:integer;
begin
  cb:=(sender as TsCheckBox);
  if (cb=cb_admin) then i:=1;
  if (cb=cb_oper) then i:=2;
  if (cb=cb_manager) then i:=3;
  if (cb=cb_oper_spr) then i:=4;
  if (cb=cb_analitik) then i:=5;
  SETRIGHT(GET_USERS.findfield('ID').Value,i,cb.checked);
end;

end.
