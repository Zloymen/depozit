unit u_oper;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,common_all,u_new_deposit,
  Dialogs, ComCtrls, sPageControl, ExtCtrls, sPanel, DBGridEhGrouping,u_add_client,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, StdCtrls, Buttons, sBitBtn,
  DB, DBAccess, Ora, MemDS, GridsEh, DBAxisGridsEh, DBGridEh, sButton,
  Mask, sMaskEdit, sCustomComboEdit, sToolEdit;

type
  Tf_oper = class(TForm)
    sPanel1: TsPanel;
    sPageControl1: TsPageControl;
    sTabSheet1: TsTabSheet;
    sTabSheet2: TsTabSheet;
    sPanel2: TsPanel;
    gr_client: TDBGridEh;
    GET_DEPOSITOR: TOraStoredProc;
    ds_GET_DEPOSITOR: TOraDataSource;
    b_add: TsBitBtn;
    b_edit: TsBitBtn;
    sPanel3: TsPanel;
    gr_deposits: TDBGridEh;
    b_add_deposit: TsButton;
    GET_DEPOSITS: TOraStoredProc;
    ds_GET_DEPOSITS: TOraDataSource;
    sPanel4: TsPanel;
    d_begin: TsDateEdit;
    d_end: TsDateEdit;
    sButton1: TsButton;
    procedure b_addClick(Sender: TObject);
    procedure b_editClick(Sender: TObject);
    procedure GET_DEPOSITORAfterOpen(DataSet: TDataSet);
    procedure b_add_depositClick(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure GET_DEPOSITSBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent);
  end;

var
  f_oper: Tf_oper;

implementation

{$R *.dfm}

constructor Tf_oper.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  init_grid(gr_client);
  init_grid(gr_deposits);
  d_begin.Date:=date;
  d_end.Date:=date;
  self.parent:=(AOwner as TWinControl);
  refresh_table(gr_client.datasource.dataset);
  refresh_table(gr_deposits.datasource.dataset);
  show;
end;

procedure Tf_oper.b_addClick(Sender: TObject);
var
  add_user: Tf_add_client;
begin
  try
    add_user:=Tf_add_client.Create(self,-1);
    add_user.ShowModal;
    refresh_table(gr_client.datasource.dataset);
    gr_client.datasource.dataset.Locate('id',add_user.get_id,[]);
  finally
    freeandnil(add_user);
  end;
end;

procedure Tf_oper.b_editClick(Sender: TObject);
var
  add_user: Tf_add_client;
begin
  try
    add_user:=Tf_add_client.Create(self,GET_DEPOSITOR.findfield('id').AsFloat);
    add_user.ShowModal;
    refresh_record(gr_client.datasource.dataset);
  finally
    freeandnil(add_user);
  end;
end;

procedure Tf_oper.GET_DEPOSITORAfterOpen(DataSet: TDataSet);
begin
  b_edit.Enabled:=not(GET_DEPOSITOR.RecordCount=0);
end;

procedure Tf_oper.b_add_depositClick(Sender: TObject);
var
  add_deposit: Tf_new_deposit;
begin
  try
    add_deposit:=Tf_new_deposit.Create(self);
    add_deposit.ShowModal;
    refresh_table(gr_client.datasource.dataset);
  finally
    freeandnil(add_deposit);
  end;
end;

procedure Tf_oper.sButton1Click(Sender: TObject);
begin
  refresh_table(gr_deposits.datasource.dataset);
end;

procedure Tf_oper.GET_DEPOSITSBeforeOpen(DataSet: TDataSet);
begin
  //deposit.OPERATOR.GET_DEPOSITS(:CUR_BEGIN, :CUR_END, :CUR_OUT);
  GET_DEPOSITS.ParamByName('CUR_BEGIN').AsDate:=d_begin.Date;
  GET_DEPOSITS.ParamByName('CUR_END').AsDate:=d_end.Date;
end;

end.
