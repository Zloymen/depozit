unit u_spr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  GridsEh, DBAxisGridsEh, DBGridEh, ExtCtrls, sPanel, sDBNavigator,
  ComCtrls, sPageControl, DB, MemDS, DBAccess, Ora , common_all;

type
  Tf_spr = class(TForm)
    pc_main: TsPageControl;
    ts_val: TsTabSheet;
    ts_type: TsTabSheet;
    nav_type: TsDBNavigator;
    nav_val: TsDBNavigator;
    gr_val: TDBGridEh;
    db_type: TDBGridEh;
    ds_GET_TYPE: TOraDataSource;
    GET_TYPE: TOraStoredProc;
    ds_GET_CURRENCY: TOraDataSource;
    GET_CURRENCY: TOraStoredProc;
    ts_banks: TsTabSheet;
    nav_bank: TsDBNavigator;
    gr_banks: TDBGridEh;
    GET_BANKS: TOraStoredProc;
    ds_GET_BANKS: TOraDataSource;
    procedure ts_typeClickBtn(Sender: TObject);
    procedure ts_valClickBtn(Sender: TObject);
    procedure ts_banksClickBtn(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent);
  end;

var
  f_spr: Tf_spr;

implementation

{$R *.dfm}

constructor Tf_spr.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  init_grid(db_type);
  init_grid(gr_val);
  init_grid(gr_banks);
  self.parent:=(AOwner as TWinControl);
  refresh_table(db_type.datasource.dataset);
  refresh_table(gr_val.datasource.dataset);
  refresh_table(gr_banks.datasource.dataset);
  pc_main.ActivePage:=ts_val;
  show;

end;

procedure Tf_spr.ts_typeClickBtn(Sender: TObject);
begin
  refresh_table(db_type.datasource.dataset);
end;

procedure Tf_spr.ts_valClickBtn(Sender: TObject);
begin
  refresh_table(gr_val.datasource.dataset);
end;

procedure Tf_spr.ts_banksClickBtn(Sender: TObject);
begin
  refresh_table(gr_banks.datasource.dataset);
end;

end.
