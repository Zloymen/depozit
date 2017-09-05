unit u_new_deposit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,u_view_depositor,
  Dialogs, DBCtrls, sDBLookupComboBox, StdCtrls, sGroupBox, ExtCtrls,
  sPanel, sDBEdit, sEdit, sLabel, Mask, sMaskEdit, sCustomComboEdit,common_all,
  sToolEdit, sDBDateEdit, DBCtrlsEh, sButton, DB, MemDS, DBAccess, Ora,
  DBGridEh, DBLookupEh;

type
  Tf_new_deposit = class(TForm)
    p_buttom: TsPanel;
    p_main: TsPanel;
    sGroupBox1: TsGroupBox;
    sGroupBox2: TsGroupBox;
    sGroupBox3: TsGroupBox;
    e_fio: TDBEditEh;
    cb_course: TsDBLookupComboBox;
    sLabel1: TsLabel;
    e_sum: TsEdit;
    e_dbsum: TsDBEdit;
    e_course: TsDBEdit;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    b_add: TsButton;
    b_cancel: TsButton;
    sGroupBox4: TsGroupBox;
    GET_VIEW_DEPOSIT_WITH_BANK: TOraStoredProc;
    GET_BANKS: TOraStoredProc;
    REFRESH_VIEW_DEPOSIT: TOraStoredProc;
    ds_GET_BANKS: TOraDataSource;
    ds_GET_VIEW_DEPOSIT_WITH_BANK: TOraDataSource;
    ds_REFRESH_VIEW_DEPOSIT: TOraDataSource;
    sDBEdit3: TsDBEdit;
    sDBEdit4: TsDBEdit;
    sDBDateEdit2: TsDBDateEdit;
    sDBDateEdit3: TsDBDateEdit;
    sDBEdit5: TsDBEdit;
    sDBEdit6: TsDBEdit;
    sDBEdit7: TsDBEdit;
    sLabel4: TsLabel;
    cb_deposit: TDBLookupComboboxEh;
    cb_banks: TDBLookupComboboxEh;
    GET_COURSE: TOraStoredProc;
    ds_GET_COURSE: TOraDataSource;
    REFRESH_VIEW_DEPOSITID: TFloatField;
    REFRESH_VIEW_DEPOSITNAME_DEPOSIT: TStringField;
    REFRESH_VIEW_DEPOSITLIMIT: TFloatField;
    REFRESH_VIEW_DEPOSITPERCENT: TFloatField;
    REFRESH_VIEW_DEPOSITDATA_OPEN: TDateTimeField;
    REFRESH_VIEW_DEPOSITDATE_CLOSE: TDateTimeField;
    REFRESH_VIEW_DEPOSITBANKS_ID: TFloatField;
    REFRESH_VIEW_DEPOSITTYPE_DEPOSITOR_ID: TFloatField;
    REFRESH_VIEW_DEPOSITTYPE_CURRENCY_ID: TFloatField;
    REFRESH_VIEW_DEPOSITNAME_BANK: TStringField;
    REFRESH_VIEW_DEPOSITNAME_FACE: TStringField;
    REFRESH_VIEW_DEPOSITN_CURRENCY: TStringField;
    REFRESH_VIEW_DEPOSITNAME_CURRENCY: TStringField;
    sGroupBox5: TsGroupBox;
    cb_type: TsDBLookupComboBox;
    GET_TYPE: TOraStoredProc;
    ds_GET_TYPE: TOraDataSource;
    sLabel5: TsLabel;
    INSERT_DEPOSIT: TOraStoredProc;
    d_edit: TsDateEdit;
    procedure DBEditEh1EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure GET_VIEW_DEPOSIT_WITH_BANKBeforeOpen(DataSet: TDataSet);
    procedure REFRESH_VIEW_DEPOSITBeforeOpen(DataSet: TDataSet);
    procedure cb_depositChange(Sender: TObject);
    procedure cb_banksChange(Sender: TObject);
    procedure GET_COURSEBeforeOpen(DataSet: TDataSet);
    procedure REFRESH_VIEW_DEPOSITAfterOpen(DataSet: TDataSet);
    procedure e_sumChange(Sender: TObject);
    procedure cb_courseCloseUp(Sender: TObject);
    procedure cb_typeEnter(Sender: TObject);
    procedure b_addClick(Sender: TObject);
    procedure b_cancelClick(Sender: TObject);
    procedure INSERT_DEPOSITBeforeExecute(Sender: TObject);
  private
    id_client: double;
  public
    constructor Create(AOwner: TComponent);
  end;

var
  f_new_deposit: Tf_new_deposit;

implementation

{$R *.dfm}

constructor Tf_new_deposit.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  refresh_table(GET_BANKS);
  refresh_table(GET_TYPE);
  d_edit.Date:=Date;
  id_client:=-1;
end;

procedure Tf_new_deposit.DBEditEh1EditButtons0Click(Sender: TObject; var Handled: Boolean);
var f_client:Tf_view_depositor;
begin
  if (cb_type.Text='') then
  begin
    ShowMessage('Выбери Тип!');
    exit;
  end;
  try
    f_client:=Tf_view_depositor.Create(self,cb_type.KeyValue);
    f_client.ShowModal;
    e_fio.Text:=f_client.get_str_depositor;
    id_client:=f_client.get_id_depositor;
  finally
    FreeAndNil(f_client);
  end;
end;

procedure Tf_new_deposit.GET_VIEW_DEPOSIT_WITH_BANKBeforeOpen(DataSet: TDataSet);
begin
  //deposit.OPERATOR.GET_VIEW_DEPOSIT_WITH_BANK(:B_ID, :CUR_OUT);
  GET_VIEW_DEPOSIT_WITH_BANK.ParamByName('B_ID').Value:=cb_banks.KeyValue;
end;

procedure Tf_new_deposit.REFRESH_VIEW_DEPOSITBeforeOpen(DataSet: TDataSet);
begin
  //deposit.MANAGER.REFRESH_VIEW_DEPOSIT(:ID, :CUR_OUT);
  REFRESH_VIEW_DEPOSIT.ParamByName('ID').Value:=cb_deposit.KeyValue;
end;

procedure Tf_new_deposit.cb_depositChange(Sender: TObject);
begin
  if not(cb_deposit.Text='') then refresh_table(REFRESH_VIEW_DEPOSIT);
end;

procedure Tf_new_deposit.cb_banksChange(Sender: TObject);
begin
  refresh_table(GET_VIEW_DEPOSIT_WITH_BANK);
  cb_deposit.Clear;
  REFRESH_VIEW_DEPOSIT.Close;
end;

procedure Tf_new_deposit.GET_COURSEBeforeOpen(DataSet: TDataSet);
begin
  //deposit.MANAGER.GET_COURSE(:FROM_DATE, :T_COST, :CUR_OUT);
  GET_COURSE.ParamByName('FROM_DATE').Value:=d_edit.Date;
  GET_COURSE.ParamByName('T_COST').Value:=REFRESH_VIEW_DEPOSIT.findfield('TYPE_CURRENCY_ID').Value;

end;

procedure Tf_new_deposit.REFRESH_VIEW_DEPOSITAfterOpen(DataSet: TDataSet);
begin
  refresh_table(GET_COURSE);
  cb_course.KeyValue:=REFRESH_VIEW_DEPOSIT.findfield('TYPE_CURRENCY_ID').Value;
end;

procedure Tf_new_deposit.e_sumChange(Sender: TObject);
begin
  //
  if(REFRESH_VIEW_DEPOSIT.findfield('TYPE_CURRENCY_ID').Value=cb_course.KeyValue)
      then e_dbsum.Text:= e_sum.Text
      else begin
         GET_COURSE.Locate('type_val',cb_course.KeyValue,[]);
         if  (GET_COURSE.FindField('cost').IsNull) then e_dbsum.Text:='Нет курса!'
            else e_dbsum.Text:=FloatToStr(GET_COURSE.FindField('cost').Value*StrToFloat(e_sum.Text));

      end;
end;

procedure Tf_new_deposit.cb_courseCloseUp(Sender: TObject);
begin
   GET_COURSE.Locate('type_val',cb_course.KeyValue,[]);
   if  (GET_COURSE.FindField('cost').IsNull) then error(Application,'Нету нужного курса!');
end;

procedure Tf_new_deposit.cb_typeEnter(Sender: TObject);
begin
  id_client:=-1;
  e_fio.Clear;
  cb_banks.Clear;
  cb_deposit.Clear;
  REFRESH_VIEW_DEPOSIT.Close;
end;

procedure Tf_new_deposit.b_addClick(Sender: TObject);
begin
  try
    if(cb_type.Text='') then begin
      ShowMessage('Выберите тип!');
      exit;
    end;
    if(id_client=-1) then begin
      ShowMessage('Выберите вкладчика!');
      exit;
    end;
    if(cb_deposit.Text='') then begin
      ShowMessage('Выберите вклад!');
      exit;
    end;
    INSERT_DEPOSIT.Execute;
    close;
  except
    ShowMessage('Проблема!');
  end;
end;

procedure Tf_new_deposit.b_cancelClick(Sender: TObject);
begin
  close;
end;

procedure Tf_new_deposit.INSERT_DEPOSITBeforeExecute(Sender: TObject);
begin
  //deposit.OPERATOR.INSERT_DEPOSIT(:ID, :V_DATE_OPEN, :V_DEPOSITOR_ID, :V_SUMMA_DEPOSIT, :V_VIEW_DEPOSIT_ID);
  INSERT_DEPOSIT.ParamByName('V_DEPOSITOR_ID').Value:=id_client;
  INSERT_DEPOSIT.ParamByName('V_DATE_OPEN').AsDate:=d_edit.Date;
  INSERT_DEPOSIT.ParamByName('V_SUMMA_DEPOSIT').Value:=StrToFloat (e_dbsum.Text);
  INSERT_DEPOSIT.ParamByName('V_VIEW_DEPOSIT_ID').Value:=cb_deposit.KeyValue;
end;

end.
