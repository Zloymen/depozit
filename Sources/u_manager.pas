unit u_manager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,common_all,
  Dialogs, ComCtrls, sPageControl, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh,
  cxControls, cxSplitter, ExtCtrls, sSplitter, sMonthCalendar, sPanel,
  sDBNavigator, DB, DBAccess, Ora, MemDS, DBCtrls, sDBLookupComboBox;

type
  Tf_manager = class(TForm)
    sPageControl1: TsPageControl;
    sTabSheet1: TsTabSheet;
    sTabSheet2: TsTabSheet;
    sTabSheet3: TsTabSheet;
    p_main_top: TsPanel;
    calendar: TsMonthCalendar;
    sSplitter1: TsSplitter;
    spl_hist: TcxSplitter;
    sPanel2: TsPanel;
    p_hist_top: TsPanel;
    gr_hist: TDBGridEh;
    sPanel3: TsPanel;
    p_find: TsPanel;
    gr_cource: TDBGridEh;
    p_deposit_top: TsPanel;
    gr_view_deposit: TDBGridEh;
    GET_COURSE: TOraStoredProc;
    HIST_COURSE: TOraStoredProc;
    ds_GET_COURSE: TOraDataSource;
    ds_HIST_COURSE: TOraDataSource;
    GET_VAL: TOraStoredProc;
    ds_GET_VAL: TOraDataSource;
    curr_val: TsDBLookupComboBox;
    GET_VIEW_DEPOSIT: TOraStoredProc;
    ds_GET_VIEW_DEPOSIT: TOraDataSource;
    nav_view_deposit: TsDBNavigator;
    p_info: TsPanel;
    sp_full_info: TcxSplitter;
    procedure GET_COURSEBeforeOpen(DataSet: TDataSet);
    procedure HIST_COURSEBeforeOpen(DataSet: TDataSet);
    procedure GET_COURSEAfterScroll(DataSet: TDataSet);
    procedure calendarChange(Sender: TObject);
    procedure sp_full_infoBeforeOpen(Sender: TObject; var NewSize: Integer;
      var AllowOpen: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sp_full_infoBeforeClose(Sender: TObject;
      var AllowClose: Boolean);
    procedure curr_valCloseUp(Sender: TObject);
  private
    f_edit:Tform;
  public
    constructor Create(AOwner: TComponent);
  end;

var
  f_manager: Tf_manager;

implementation

uses u_tender;

{$R *.dfm}

constructor Tf_manager.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  init_grid(gr_hist);
  init_grid(gr_cource);
  init_grid(gr_view_deposit);
  self.parent:=(AOwner as TWinControl);
  refresh_table(curr_val.ListSource.dataset);
  refresh_table(gr_view_deposit.datasource.dataset);
  curr_val.KeyValue:=4;
  spl_hist.CloseSplitter;
  sp_full_info.CloseSplitter;
  calendar.CalendarDate:=Date;
  refresh_table(gr_cource.datasource.dataset);
  show;
end;

procedure Tf_manager.GET_COURSEBeforeOpen(DataSet: TDataSet);
begin
  //deposit.MANAGER.GET_COURSE(:FROM_DATE, :T_COST, :CUR_OUT);
  GET_COURSE.ParamByName('FROM_DATE').Value:=calendar.CalendarDate;
  GET_COURSE.ParamByName('T_COST').Value:=curr_val.KeyValue;
end;

procedure Tf_manager.HIST_COURSEBeforeOpen(DataSet: TDataSet);
begin
  //MANAGER.HIST_COURSE(:FROM_DATE, :T_COST, :CURR_VAL, :CUR_OUT);
  HIST_COURSE.ParamByName('FROM_DATE').Value:=calendar.CalendarDate;;
  HIST_COURSE.ParamByName('T_COST').Value:=curr_val.KeyValue;
  HIST_COURSE.ParamByName('CURR_VAL').Value:=GET_COURSE.findfield('type_val').value;
end;

procedure Tf_manager.GET_COURSEAfterScroll(DataSet: TDataSet);
begin
  refresh_table(gr_hist.datasource.dataset);
end;

procedure Tf_manager.calendarChange(Sender: TObject);
begin
  refresh_table(gr_cource.datasource.dataset);
end;

procedure Tf_manager.sp_full_infoBeforeOpen(Sender: TObject;  var NewSize: Integer; var AllowOpen: Boolean);
begin
   f_edit:=Tf_tender.Create(p_info);
end;

procedure Tf_manager.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(f_edit) then freeandnil(f_edit);
end;

procedure Tf_manager.sp_full_infoBeforeClose(Sender: TObject;  var AllowClose: Boolean);
begin
   if Assigned(f_edit) then freeandnil(f_edit);
end;

procedure Tf_manager.curr_valCloseUp(Sender: TObject);
begin
   refresh_table(gr_cource.datasource.dataset);
end;

end.
