unit u_view_depositor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,u_add_client,
  GridsEh, DBAxisGridsEh, DBGridEh, StdCtrls, sButton, ExtCtrls, sPanel,common_all, DB, DBAccess, Ora, MemDS;

type
  Tf_view_depositor = class(TForm)
    gr_depositor: TDBGridEh;
    sPanel1: TsPanel;
    b_add: TsButton;
    GET_DEPOSITOR: TOraStoredProc;
    ds_GET_DEPOSITOR: TOraDataSource;
    procedure b_addClick(Sender: TObject);
    procedure GET_DEPOSITORBeforeOpen(DataSet: TDataSet);
    procedure gr_depositorDblClick(Sender: TObject);
  private
    id: double;
    id_depositor: double;
  public
    constructor Create(AOwner: TComponent; id_in : double);
    function get_id_depositor : double;
    function get_str_depositor : String;
  end;

var
  f_view_depositor: Tf_view_depositor;

implementation

{$R *.dfm}

constructor Tf_view_depositor.Create(AOwner: TComponent; id_in : double);
begin
  inherited Create(AOwner);
  id:=id_in;
  init_grid(gr_depositor);
  refresh_table(gr_depositor.datasource.dataset);
  id_depositor:=-1;
end;

function Tf_view_depositor.get_id_depositor : double;
begin
  if (GET_DEPOSITOR.RecordCount =0) then get_id_depositor:=-1
    else get_id_depositor:=GET_DEPOSITOR.findfield('id').AsFloat;
end;

function Tf_view_depositor.get_str_depositor : String;
begin
  if (GET_DEPOSITOR.RecordCount =0) then get_str_depositor:=''
    else get_str_depositor:=GET_DEPOSITOR.findfield('NAME_DEPOSITOR').AsString;
end;

procedure Tf_view_depositor.b_addClick(Sender: TObject);
var
  add_user: Tf_add_client;
begin
  try
    add_user:=Tf_add_client.Create(self,-1);
    add_user.ShowModal;
    refresh_table(gr_depositor.datasource.dataset);
    gr_depositor.datasource.dataset.Locate('id',add_user.get_id,[]);
  finally
    freeandnil(add_user);
  end;
end;

procedure Tf_view_depositor.GET_DEPOSITORBeforeOpen(DataSet: TDataSet);
begin
  //deposit.OPERATOR.GET_DEPOSITOR(:TYPE_DEP, :CUR_OUT);
  GET_DEPOSITOR.ParamByName('TYPE_DEP').Value:=id;
end;

procedure Tf_view_depositor.gr_depositorDblClick(Sender: TObject);
begin
  close;
end;

end.
