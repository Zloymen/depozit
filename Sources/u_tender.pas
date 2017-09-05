unit u_tender;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sSkinProvider, ExtCtrls, sPanel, StdCtrls, sGroupBox, u_manager,
  DBCtrls, sDBEdit, Mask, sMaskEdit, sCustomComboEdit, sToolEdit,common_all,
  sDBDateEdit, sButton, sDBComboBox, sDBLookupComboBox, DB, DBAccess, Ora,
  MemDS;

type
  Tf_tender = class(TForm)
    form_skin: TsSkinProvider;
    sGroupBox1: TsGroupBox;
    sGroupBox2: TsGroupBox;
    sGroupBox3: TsGroupBox;
    sGroupBox4: TsGroupBox;
    p_buttom: TsPanel;
    sGroupBox5: TsGroupBox;
    p_top: TsPanel;
    p_all: TsPanel;
    sButton1: TsButton;
    sButton2: TsButton;
    sDBDateEdit1: TsDBDateEdit;
    sDBDateEdit2: TsDBDateEdit;
    sDBEdit1: TsDBEdit;
    sDBEdit2: TsDBEdit;
    sDBEdit3: TsDBEdit;
    sDBLookupComboBox1: TsDBLookupComboBox;
    sDBLookupComboBox2: TsDBLookupComboBox;
    GET_TYPE: TOraStoredProc;
    GET_BANKS: TOraStoredProc;
    GET_CURRENCY: TOraStoredProc;
    ds_GET_CURRENCY: TOraDataSource;
    ds_GET_TYPE: TOraDataSource;
    ds_GET_BANKS: TOraDataSource;
    sDBLookupComboBox3: TsDBLookupComboBox;
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent);
  end;

var
  f_tender: Tf_tender;

implementation

{$R *.dfm}

constructor Tf_tender.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  self.parent:=(AOwner as TWinControl);
  refresh_table(GET_TYPE);
  refresh_table(GET_BANKS);
  refresh_table(GET_CURRENCY);
  show;
end;

end.
