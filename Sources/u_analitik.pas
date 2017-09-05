unit u_analitik;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,common_all,
  Dialogs, ExtCtrls, sPanel, sSkinProvider, Series, TeeDonut, TeEngine,
  TeeDBEdit, TeeDBCrossTab, TeeProcs, Chart, ComCtrls, sPageControl,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh, StdCtrls, sButton, Mask, sMaskEdit,
  sCustomComboEdit, sToolEdit, DB, DBAccess, Ora, MemDS, sLabel, DBCtrlsEh,
  DBLookupEh;

type
  Tf_analitik = class(TForm)
    sPanel1: TsPanel;
    form_skin: TsSkinProvider;
    sPageControl1: TsPageControl;
    sTabSheet1: TsTabSheet;
    sTabSheet2: TsTabSheet;
    sPanel2: TsPanel;
    d_begin: TsDateEdit;
    d_end: TsDateEdit;
    b_view_rep1: TsButton;
    gr_report: TDBGridEh;
    GET_OTCHET1: TOraStoredProc;
    ds_GET_OTCHET1: TOraDataSource;
    sPanel3: TsPanel;
    sButton1: TsButton;
    d_start: TsDateEdit;
    d_finish: TsDateEdit;
    sPageControl3: TsPageControl;
    sTabSheet4: TsTabSheet;
    sTabSheet5: TsTabSheet;
    cb_banks: TDBLookupComboboxEh;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    gr_res: TDBGridEh;
    GET_OTCHET2: TOraStoredProc;
    GET_BANKS: TOraStoredProc;
    ds_GET_BANKS: TOraDataSource;
    ds_GET_OTCHET2: TOraDataSource;
    Chart: TChart;
    Series1: TLineSeries;
    DBCrossTabSource1: TDBCrossTabSource;
    procedure GET_OTCHET1BeforeOpen(DataSet: TDataSet);
    procedure b_view_rep1Click(Sender: TObject);
    procedure gr_reportDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure GET_OTCHET2BeforeOpen(DataSet: TDataSet);
    procedure sButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent);
  end;

var
  f_analitik: Tf_analitik;

implementation

{$R *.dfm}

constructor Tf_analitik.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  init_grid(gr_report);
  self.parent:=(AOwner as TWinControl);
  d_begin.Date:= date;
  d_start.Date:=date;
  d_finish.Date:=date+100;
  refresh_table(GET_BANKS);
  d_end.Date:= date;
  show;
end;

procedure Tf_analitik.GET_OTCHET1BeforeOpen(DataSet: TDataSet);
begin
  //deposit.ANALITIK.GET_OTCHET1(:CUR_BEGIN, :CUR_END, :CUR_OUT);
  GET_OTCHET1.ParamByName('CUR_BEGIN').Value:=d_begin.Date;
  GET_OTCHET1.ParamByName('CUR_END').Value:=d_end.Date;
end;

procedure Tf_analitik.b_view_rep1Click(Sender: TObject);
begin
  refresh_table(gr_report.datasource.dataset);
end;

procedure Tf_analitik.gr_reportDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  gr : TDBGridEh;
begin
  gr := (Sender as TDBGridEh);
  if (gr.DataSource.DataSet.FieldByName('OTKL_SUM').value>0) and (DataCol=12) then gr.Canvas.Brush.Color := clLightGreen_c;
  if (gr.DataSource.DataSet.FieldByName('OTKL_kol').value>0) and (DataCol=13) then gr.Canvas.Brush.Color := clLightGreen_c;
  if (gr.DataSource.DataSet.FieldByName('OTKL_SUM').value<0) and (DataCol=12) then gr.Canvas.Brush.Color := clLightRed_c;
  if (gr.DataSource.DataSet.FieldByName('OTKL_kol').value<0) and (DataCol=13) then gr.Canvas.Brush.Color := clLightRed_c;
  if gdSelected in State then gr.Canvas.Font.Color := clBlack;
  gr.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tf_analitik.GET_OTCHET2BeforeOpen(DataSet: TDataSet);
begin
  //deposit.ANALITIK.GET_OTCHET2(:ID_BANK, :CUR_BEGIN, :CUR_END, :CUR_OUT);
  GET_OTCHET2.ParamByName('ID_BANK').Value:=cb_banks.KeyValue;
  GET_OTCHET2.ParamByName('CUR_BEGIN').Value:=d_start.Date;
  GET_OTCHET2.ParamByName('CUR_END').Value:=d_finish.Date;

end;

procedure Tf_analitik.sButton1Click(Sender: TObject);
begin
  refresh_table(gr_res.datasource.dataset);
  //chart.Series[0].RefreshSeries;
  chart.Refresh;
end;

end.
