object f_analitik: Tf_analitik
  Left = 510
  Top = 169
  Align = alClient
  BorderStyle = bsNone
  Caption = 'f_analitik'
  ClientHeight = 525
  ClientWidth = 1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 1072
    Height = 525
    Align = alClient
    Caption = 'sPanel1'
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object sPageControl1: TsPageControl
      Left = 1
      Top = 1
      Width = 1070
      Height = 523
      ActivePage = sTabSheet2
      Align = alClient
      TabOrder = 0
      SkinData.SkinSection = 'PAGECONTROL'
      object sTabSheet1: TsTabSheet
        Caption = #1044#1080#1085#1072#1084#1080#1082#1072
        SkinData.CustomColor = False
        SkinData.CustomFont = False
        object sPanel2: TsPanel
          Left = 0
          Top = 0
          Width = 1062
          Height = 57
          Align = alTop
          TabOrder = 0
          SkinData.SkinSection = 'PANEL'
          object d_begin: TsDateEdit
            Left = 24
            Top = 16
            Width = 86
            Height = 21
            AutoSize = False
            Color = clWhite
            EditMask = '!99/99/9999;1; '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4473924
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 0
            Text = '  .  .    '
            BoundLabel.Active = True
            BoundLabel.Caption = #1089
            BoundLabel.Indent = 0
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.Layout = sclLeft
            BoundLabel.MaxWidth = 0
            BoundLabel.UseSkinColor = True
            SkinData.SkinSection = 'EDIT'
            GlyphMode.Blend = 0
            GlyphMode.Grayed = False
          end
          object d_end: TsDateEdit
            Left = 136
            Top = 16
            Width = 86
            Height = 21
            AutoSize = False
            Color = clWhite
            EditMask = '!99/99/9999;1; '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4473924
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 1
            Text = '  .  .    '
            BoundLabel.Active = True
            BoundLabel.Caption = #1087#1086
            BoundLabel.Indent = 0
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.Layout = sclLeft
            BoundLabel.MaxWidth = 0
            BoundLabel.UseSkinColor = True
            SkinData.SkinSection = 'EDIT'
            GlyphMode.Blend = 0
            GlyphMode.Grayed = False
          end
          object b_view_rep1: TsButton
            Left = 248
            Top = 16
            Width = 75
            Height = 25
            Caption = #1055#1086#1082#1072#1079#1072#1090#1100
            TabOrder = 2
            OnClick = b_view_rep1Click
            SkinData.SkinSection = 'BUTTON'
          end
        end
        object gr_report: TDBGridEh
          Left = 0
          Top = 57
          Width = 1062
          Height = 438
          Align = alClient
          DataSource = ds_GET_OTCHET1
          DynProps = <>
          IndicatorOptions = [gioShowRowIndicatorEh]
          TabOrder = 1
          OnDrawColumnCell = gr_reportDrawColumnCell
          Columns = <
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'NAME_BANK'
              Footers = <>
              Title.Caption = #1041#1072#1085#1082
              Width = 111
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'NAME_FACE'
              Footers = <>
              Title.Caption = #1042#1082#1083#1072#1076'|'#1090#1080#1087
              Width = 65
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'NAME_DEPOSIT'
              Footers = <>
              Title.Caption = #1042#1082#1083#1072#1076'|'#1085#1072#1079#1074#1072#1085#1080#1077
              Width = 123
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'B_SUM'
              Footers = <>
              Title.Caption = #1053#1072#1095#1072#1083#1086' '#1087#1077#1088#1080#1086#1076#1072'|'#1057#1091#1084#1084#1072
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'B_KOL'
              Footers = <>
              Title.Caption = #1053#1072#1095#1072#1083#1086' '#1087#1077#1088#1080#1086#1076#1072'|'#1082#1086#1083'-'#1074#1086
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'PR_SUM'
              Footers = <>
              Title.Caption = #1055#1088#1080#1093#1086#1076'|'#1057#1091#1084#1084#1072
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'PR_KOL'
              Footers = <>
              Title.Caption = #1055#1088#1080#1093#1086#1076'|'#1082#1086#1083'-'#1074#1086
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'RH_SUM'
              Footers = <>
              Title.Caption = #1056#1072#1089#1093#1086#1076'|'#1057#1091#1084#1084#1072
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'RH_SUM_PERC'
              Footers = <>
              Title.Caption = #1056#1072#1089#1093#1086#1076'|'#1057#1091#1084#1084#1072' '#1087#1088#1086#1094#1077#1085#1090#1086#1074
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'RH_KOL'
              Footers = <>
              Title.Caption = #1056#1072#1089#1093#1086#1076'|'#1082#1086#1083'-'#1074#1086
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'E_SUM'
              Footers = <>
              Title.Caption = #1050#1086#1085#1077#1094' '#1087#1077#1088#1080#1086#1076#1072'|'#1057#1091#1084#1084#1072
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'E_KOL'
              Footers = <>
              Title.Caption = #1050#1086#1085#1077#1094' '#1087#1077#1088#1080#1086#1076#1072'|'#1082#1086#1083'-'#1074#1086
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'OTKL_SUM'
              Footers = <>
              Title.Caption = #1044#1080#1085#1072#1084#1080#1082#1072'|'#1057#1091#1084#1084#1072
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'OTKL_KOL'
              Footers = <>
              Title.Caption = #1044#1080#1085#1072#1084#1080#1082#1072'|'#1082#1086#1083'-'#1074#1086
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object sTabSheet2: TsTabSheet
        Caption = #1051#1080#1082#1074#1080#1076#1085#1086#1089#1090#1100
        SkinData.CustomColor = False
        SkinData.CustomFont = False
        object sPanel3: TsPanel
          Left = 0
          Top = 0
          Width = 1062
          Height = 73
          Align = alTop
          TabOrder = 0
          SkinData.SkinSection = 'PANEL'
          object sLabel1: TsLabel
            Left = 8
            Top = 16
            Width = 38
            Height = 13
            Caption = #1055#1077#1088#1080#1086#1076
          end
          object sLabel2: TsLabel
            Left = 248
            Top = 16
            Width = 25
            Height = 13
            Caption = #1041#1072#1085#1082
          end
          object sButton1: TsButton
            Left = 464
            Top = 24
            Width = 75
            Height = 25
            Caption = #1055#1086#1082#1072#1079#1072#1090#1100
            TabOrder = 0
            OnClick = sButton1Click
            SkinData.SkinSection = 'BUTTON'
          end
          object d_start: TsDateEdit
            Left = 16
            Top = 32
            Width = 86
            Height = 21
            AutoSize = False
            Color = clWhite
            EditMask = '!99/99/9999;1; '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4473924
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 1
            Text = '  .  .    '
            BoundLabel.Active = True
            BoundLabel.Caption = #1089
            BoundLabel.Indent = 0
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.Layout = sclLeft
            BoundLabel.MaxWidth = 0
            BoundLabel.UseSkinColor = True
            SkinData.SkinSection = 'EDIT'
            GlyphMode.Blend = 0
            GlyphMode.Grayed = False
          end
          object d_finish: TsDateEdit
            Left = 128
            Top = 32
            Width = 86
            Height = 21
            AutoSize = False
            Color = clWhite
            EditMask = '!99/99/9999;1; '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4473924
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 2
            Text = '  .  .    '
            BoundLabel.Active = True
            BoundLabel.Caption = #1087#1086
            BoundLabel.Indent = 0
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.Layout = sclLeft
            BoundLabel.MaxWidth = 0
            BoundLabel.UseSkinColor = True
            SkinData.SkinSection = 'EDIT'
            GlyphMode.Blend = 0
            GlyphMode.Grayed = False
          end
          object cb_banks: TDBLookupComboboxEh
            Left = 248
            Top = 32
            Width = 121
            Height = 19
            Ctl3D = True
            EditButtons = <>
            Flat = True
            KeyField = 'MY_ID'
            ListField = 'NAME_BANK'
            ListSource = ds_GET_BANKS
            ParentCtl3D = False
            TabOrder = 3
            Visible = True
          end
        end
        object sPageControl3: TsPageControl
          Left = 0
          Top = 73
          Width = 1062
          Height = 422
          ActivePage = sTabSheet5
          Align = alClient
          TabOrder = 1
          SkinData.SkinSection = 'PAGECONTROL'
          object sTabSheet4: TsTabSheet
            Caption = #1058#1072#1073#1083#1080#1094#1072
            SkinData.CustomColor = False
            SkinData.CustomFont = False
            object gr_res: TDBGridEh
              Left = 0
              Top = 0
              Width = 1054
              Height = 394
              Align = alClient
              DataSource = ds_GET_OTCHET2
              DynProps = <>
              IndicatorOptions = [gioShowRowIndicatorEh]
              TabOrder = 0
              Columns = <
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'DATE_FOR'
                  Footers = <>
                  Title.Caption = #1044#1072#1090#1072
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'SUM_ALL'
                  Footers = <>
                  Title.Caption = #1057#1091#1084#1084#1072' '#1090#1077#1082#1091#1097#1080#1093' '#1074#1082#1083#1072#1076#1086#1074
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
          object sTabSheet5: TsTabSheet
            Caption = #1043#1088#1072#1092#1080#1082
            SkinData.CustomColor = False
            SkinData.CustomFont = False
            object Chart: TChart
              Left = 0
              Top = 0
              Width = 1054
              Height = 394
              Title.Text.Strings = (
                'TChart')
              CustomAxes = <
                item
                  Horizontal = False
                  OtherSide = False
                end>
              Align = alClient
              TabOrder = 0
              ColorPaletteIndex = 13
              object Series1: TLineSeries
                Marks.Arrow.Visible = True
                Marks.Callout.Brush.Color = clBlack
                Marks.Callout.Arrow.Visible = True
                Marks.Visible = False
                DataSource = DBCrossTabSource1
                Pointer.InflateMargins = True
                Pointer.Style = psRectangle
                Pointer.Visible = False
                XValues.Name = 'X'
                XValues.Order = loAscending
                YValues.Name = 'Y'
                YValues.Order = loNone
              end
            end
          end
        end
      end
    end
  end
  object form_skin: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'MS Sans Serif'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Left = 992
    Top = 40
  end
  object GET_OTCHET1: TOraStoredProc
    StoredProcName = 'deposit.ANALITIK.GET_OTCHET1'
    SQL.Strings = (
      'begin'
      '  deposit.ANALITIK.GET_OTCHET1(:CUR_BEGIN, :CUR_END, :CUR_OUT);'
      'end;')
    BeforeOpen = GET_OTCHET1BeforeOpen
    Left = 861
    Top = 385
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'CUR_BEGIN'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'CUR_END'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CUR_OUT'
        ParamType = ptOutput
        Value = 'Object'
      end>
    CommandStoredProcName = 'deposit.ANALITIK.GET_OTCHET1'
  end
  object ds_GET_OTCHET1: TOraDataSource
    DataSet = GET_OTCHET1
    Left = 893
    Top = 385
  end
  object GET_OTCHET2: TOraStoredProc
    StoredProcName = 'deposit.ANALITIK.GET_OTCHET2'
    SQL.Strings = (
      'begin'
      
        '  deposit.ANALITIK.GET_OTCHET2(:ID_BANK, :CUR_BEGIN, :CUR_END, :' +
        'CUR_OUT);'
      'end;')
    BeforeOpen = GET_OTCHET2BeforeOpen
    Left = 589
    Top = 57
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_BANK'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'CUR_BEGIN'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'CUR_END'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CUR_OUT'
        ParamType = ptOutput
        Value = 'Object'
      end>
    CommandStoredProcName = 'deposit.ANALITIK.GET_OTCHET2'
  end
  object GET_BANKS: TOraStoredProc
    StoredProcName = 'deposit.CATALOG.GET_BANKS'
    SQL.Strings = (
      'begin'
      '  deposit.CATALOG.GET_BANKS(:CUR_OUT);'
      'end;')
    Left = 629
    Top = 57
    ParamData = <
      item
        DataType = ftCursor
        Name = 'CUR_OUT'
        ParamType = ptOutput
        Value = 'Object'
      end>
    CommandStoredProcName = 'deposit.CATALOG.GET_BANKS'
  end
  object ds_GET_BANKS: TOraDataSource
    DataSet = GET_BANKS
    Left = 421
    Top = 81
  end
  object ds_GET_OTCHET2: TOraDataSource
    DataSet = GET_OTCHET2
    Left = 461
    Top = 81
  end
  object DBCrossTabSource1: TDBCrossTabSource
    Active = True
    DataSet = GET_OTCHET2
    LabelField = 'DATE_FOR'
    Series = Series1
    ValueField = 'SUM_ALL'
  end
end
