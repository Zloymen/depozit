unit u_add_client;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, sDBLookupComboBox, StdCtrls, Mask, sDBEdit, sButton, common_all,
  sGroupBox, ExtCtrls, sPanel, DB, DBAccess, Ora, MemDS;

type
  Tf_add_client = class(TForm)
    p_buttom: TsPanel;
    p_main: TsPanel;
    sGroupBox1: TsGroupBox;
    sGroupBox2: TsGroupBox;
    sGroupBox3: TsGroupBox;
    b_save: TsButton;
    b_cancel: TsButton;
    sDBEdit1: TsDBEdit;
    sDBEdit2: TsDBEdit;
    sDBLookupComboBox1: TsDBLookupComboBox;
    GET_TYPE: TOraStoredProc;
    GET_ONE_DEPOSITOR: TOraStoredProc;
    ds_GET_ONE_DEPOSITOR: TOraDataSource;
    ds_GET_TYPE: TOraDataSource;
    procedure GET_ONE_DEPOSITORBeforeOpen(DataSet: TDataSet);
    procedure b_cancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure b_saveClick(Sender: TObject);
  private
    id: Double;
  public
    constructor Create(AOwner: TComponent; id_in:double);
    function get_id:Double;
  end;

var
  f_add_client: Tf_add_client;

implementation

{$R *.dfm}

constructor Tf_add_client.Create(AOwner: TComponent; id_in:double);
begin
  inherited Create(AOwner);
  id:=id_in;
  refresh_table(GET_TYPE);
  refresh_table(GET_ONE_DEPOSITOR);
  if (GET_ONE_DEPOSITOR.RecordCount=0) then GET_ONE_DEPOSITOR.Insert else GET_ONE_DEPOSITOR.Edit;
end;

function Tf_add_client.get_id:Double;
begin
   get_id:=id;
end;

procedure Tf_add_client.GET_ONE_DEPOSITORBeforeOpen(DataSet: TDataSet);
begin
  //deposit.OPERATOR.GET_ONE_DEPOSITOR(:ID, :CUR_OUT);
  GET_ONE_DEPOSITOR.ParamByName('ID').Value:=id;
end;

procedure Tf_add_client.b_cancelClick(Sender: TObject);
begin
   GET_ONE_DEPOSITOR.Cancel;
   close;
end;

procedure Tf_add_client.FormClose(Sender: TObject;   var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure Tf_add_client.b_saveClick(Sender: TObject);
begin
  try
    GET_ONE_DEPOSITOR.Post;
    close;
    except
       error(Application,'Не сохранилось!');
  end;
end;

end.
