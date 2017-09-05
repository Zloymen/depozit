object f_manager: Tf_manager
  Left = 192
  Top = 124
  Align = alClient
  BorderStyle = bsNone
  Caption = 'f_manager'
  ClientHeight = 525
  ClientWidth = 1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object sPageControl1: TsPageControl
    Left = 0
    Top = 0
    Width = 1072
    Height = 525
    ActivePage = sTabSheet1
    Align = alClient
    TabOrder = 0
    SkinData.SkinSection = 'PAGECONTROL'
    object sTabSheet1: TsTabSheet
      Caption = #1050#1091#1088#1089#1099' '#1074#1072#1083#1102#1090
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      object sSplitter1: TsSplitter
        Left = 178
        Top = 41
        Height = 456
        SkinData.SkinSection = 'SPLITTER'
      end
      object p_main_top: TsPanel
        Left = 0
        Top = 0
        Width = 1064
        Height = 41
        Align = alTop
        TabOrder = 0
        SkinData.SkinSection = 'PANEL'
      end
      object calendar: TsMonthCalendar
        Left = 0
        Top = 41
        Height = 456
        Align = alLeft
        BevelWidth = 1
        BorderWidth = 3
        Caption = ' '
        TabOrder = 1
        SkinData.SkinSection = 'PANEL'
        OnChange = calendarChange
      end
      object spl_hist: TcxSplitter
        Left = 752
        Top = 41
        Width = 8
        Height = 456
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salRight
        Control = sPanel2
      end
      object sPanel2: TsPanel
        Left = 760
        Top = 41
        Width = 304
        Height = 456
        Align = alRight
        Caption = 'sPanel2'
        TabOrder = 3
        SkinData.SkinSection = 'PANEL'
        object p_hist_top: TsPanel
          Left = 1
          Top = 1
          Width = 302
          Height = 41
          Align = alTop
          TabOrder = 0
          SkinData.SkinSection = 'PANEL'
        end
        object gr_hist: TDBGridEh
          Left = 1
          Top = 42
          Width = 302
          Height = 413
          Align = alClient
          DataSource = ds_HIST_COURSE
          DynProps = <>
          IndicatorOptions = [gioShowRowIndicatorEh]
          TabOrder = 1
          Columns = <
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'COST'
              Footers = <>
              Title.Caption = #1050#1091#1088#1089
              Width = 45
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'DATE_ADD'
              Footers = <>
              Title.Caption = #1042#1074#1077#1083'|'#1044#1072#1090#1072
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'USER_ADD'
              Footers = <>
              Title.Caption = #1042#1074#1077#1083'|'#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'DATE_ANNUL'
              Footers = <>
              Title.Caption = #1040#1085#1085#1091#1083#1080#1088#1086#1074#1072#1083'|'#1044#1072#1090#1072
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'USER_ANNUL'
              Footers = <>
              Title.Caption = #1040#1085#1085#1091#1083#1080#1088#1086#1074#1072#1083'|'#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object sPanel3: TsPanel
        Left = 184
        Top = 41
        Width = 568
        Height = 456
        Align = alClient
        Caption = 'sPanel3'
        TabOrder = 4
        SkinData.SkinSection = 'PANEL'
        object p_find: TsPanel
          Left = 1
          Top = 1
          Width = 566
          Height = 48
          Align = alTop
          TabOrder = 0
          SkinData.SkinSection = 'PANEL'
          object curr_val: TsDBLookupComboBox
            Left = 8
            Top = 20
            Width = 145
            Height = 21
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4473924
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'ID'
            ListField = 'N_CURRENCY'
            ListSource = ds_GET_VAL
            ParentFont = False
            TabOrder = 0
            OnCloseUp = curr_valCloseUp
            BoundLabel.Active = True
            BoundLabel.Caption = #1041#1072#1079#1086#1074#1072#1103' '#1074#1072#1083#1102#1090#1072':'
            BoundLabel.Indent = 0
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -11
            BoundLabel.Font.Name = 'MS Sans Serif'
            BoundLabel.Font.Style = []
            BoundLabel.Layout = sclTopLeft
            BoundLabel.MaxWidth = 0
            BoundLabel.UseSkinColor = True
            SkinData.SkinSection = 'COMBOBOX'
          end
        end
        object gr_cource: TDBGridEh
          Left = 1
          Top = 49
          Width = 566
          Height = 406
          Align = alClient
          DataSource = ds_GET_COURSE
          DynProps = <>
          IndicatorOptions = [gioShowRowIndicatorEh]
          TabOrder = 1
          Columns = <
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'N_CURRENCY'
              Footers = <>
              Title.Caption = #1042#1072#1083#1102#1090#1072'|'#1050#1086#1088#1086#1090#1082#1086#1077
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'NAME_CURRENCY'
              Footers = <>
              Title.Caption = #1042#1072#1083#1102#1090#1072'|'#1055#1086#1083#1085#1086#1077
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'COST'
              Footers = <>
              Title.Caption = #1050#1059#1056#1057
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
    object sTabSheet2: TsTabSheet
      Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1074#1082#1083#1072#1076#1086#1074
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      object p_deposit_top: TsPanel
        Left = 0
        Top = 0
        Width = 1064
        Height = 57
        Align = alTop
        TabOrder = 0
        SkinData.SkinSection = 'PANEL'
      end
      object gr_view_deposit: TDBGridEh
        Left = 0
        Top = 82
        Width = 624
        Height = 415
        Align = alClient
        DataSource = ds_GET_VIEW_DEPOSIT
        DynProps = <>
        IndicatorOptions = [gioShowRowIndicatorEh]
        TabOrder = 1
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME_BANK'
            Footers = <>
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077'|'#1041#1072#1085#1082#1072
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME_FACE'
            Footers = <>
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077'|'#1058#1080#1087#1072
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME_DEPOSIT'
            Footers = <>
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077'|'#1042#1082#1083#1072#1076#1072
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'DATA_OPEN'
            Footers = <>
            Title.Caption = #1044#1072#1090#1072'| '#1085#1072#1095#1072#1083#1072' '#1076#1077#1081#1089#1090#1074#1080#1103
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'DATE_CLOSE'
            Footers = <>
            Title.Caption = #1050#1086#1085#1094#1072'| '#1085#1072#1095#1072#1083#1072' '#1076#1077#1081#1089#1090#1074#1080#1103
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME_CURRENCY'
            Footers = <>
            Title.Caption = #1042#1072#1083#1102#1090#1072
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'PERCENT'
            Footers = <>
            Title.Caption = '%'
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'LIMIT'
            Footers = <>
            Title.Caption = #1057#1056#1054#1050
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object nav_view_deposit: TsDBNavigator
        Left = 0
        Top = 57
        Width = 1064
        Align = alTop
        FullRepaint = False
        TabOrder = 2
        SkinData.SkinSection = 'TOOLBAR'
        DataSource = ds_GET_VIEW_DEPOSIT
      end
      object p_info: TsPanel
        Left = 632
        Top = 82
        Width = 432
        Height = 415
        Align = alRight
        Caption = 'p_info'
        TabOrder = 3
        SkinData.SkinSection = 'PANEL'
      end
      object sp_full_info: TcxSplitter
        Left = 624
        Top = 82
        Width = 8
        Height = 415
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salRight
        Control = p_info
        OnBeforeOpen = sp_full_infoBeforeOpen
        OnBeforeClose = sp_full_infoBeforeClose
      end
    end
    object sTabSheet3: TsTabSheet
      Caption = #1053#1072#1083#1086#1075#1080
      SkinData.CustomColor = False
      SkinData.CustomFont = False
    end
  end
  object GET_COURSE: TOraStoredProc
    StoredProcName = 'deposit.MANAGER.GET_COURSE'
    SQLUpdate.Strings = (
      'begin'
      
        '  deposit.MANAGER.insert_course(:date_In, :T_COST,:type_val, :co' +
        'st);'
      'end;')
    SQLRefresh.Strings = (
      'begin'
      
        '  deposit.MANAGER.refresh_course(:FROM_DATE, :T_COST,:type_val, ' +
        ':CUR_OUT);'
      'end;')
    SQL.Strings = (
      'begin'
      '  deposit.MANAGER.GET_COURSE(:FROM_DATE, :T_COST, :CUR_OUT);'
      'end;')
    BeforeOpen = GET_COURSEBeforeOpen
    AfterScroll = GET_COURSEAfterScroll
    Left = 44
    Top = 41
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'FROM_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'T_COST'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CUR_OUT'
        ParamType = ptOutput
        Value = 'Object'
      end>
    CommandStoredProcName = 'deposit.MANAGER.GET_COURSE'
  end
  object HIST_COURSE: TOraStoredProc
    StoredProcName = 'MANAGER.HIST_COURSE'
    SQL.Strings = (
      'begin'
      '  MANAGER.HIST_COURSE(:FROM_DATE, :T_COST, :CURR_VAL, :CUR_OUT);'
      'end;')
    BeforeOpen = HIST_COURSEBeforeOpen
    Left = 44
    Top = 73
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'FROM_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'T_COST'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURR_VAL'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CUR_OUT'
        ParamType = ptOutput
        Value = 'Object'
      end>
    CommandStoredProcName = 'MANAGER.HIST_COURSE'
  end
  object ds_GET_COURSE: TOraDataSource
    DataSet = GET_COURSE
    Left = 100
    Top = 41
  end
  object ds_HIST_COURSE: TOraDataSource
    DataSet = HIST_COURSE
    Left = 100
    Top = 73
  end
  object GET_VAL: TOraStoredProc
    StoredProcName = 'deposit.MANAGER.GET_VAL'
    SQL.Strings = (
      'begin'
      '  deposit.MANAGER.GET_VAL(:CUR_OUT);'
      'end;')
    Left = 44
    Top = 113
    ParamData = <
      item
        DataType = ftCursor
        Name = 'CUR_OUT'
        ParamType = ptOutput
        Value = 'Object'
      end>
    CommandStoredProcName = 'deposit.MANAGER.GET_VAL'
  end
  object ds_GET_VAL: TOraDataSource
    DataSet = GET_VAL
    Left = 100
    Top = 113
  end
  object GET_VIEW_DEPOSIT: TOraStoredProc
    StoredProcName = 'deposit.MANAGER.GET_VIEW_DEPOSIT'
    SQLInsert.Strings = (
      'begin'
      
        '  deposit.MANAGER.insert_view_deposit( :name_deposit , :limit , ' +
        ':percent, :data_open, :date_close, :banks_id, :type_depositor_id' +
        ', :type_currency_id,:id);'
      'end;')
    SQLUpdate.Strings = (
      'begin'
      
        '  deposit.MANAGER.update_view_deposit( :name_deposit , :limit , ' +
        ':percent, :data_open, :date_close, :banks_id, :type_depositor_id' +
        ', :type_currency_id,:id);'
      'end;')
    SQLRefresh.Strings = (
      'begin'
      '  deposit.MANAGER.refresh_view_deposit(:id, :cur_out);'
      'end;')
    SQL.Strings = (
      'begin'
      '  deposit.MANAGER.GET_VIEW_DEPOSIT(:CUR_OUT);'
      'end;')
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    Options.ReturnParams = True
    Left = 356
    Top = 256
    ParamData = <
      item
        DataType = ftCursor
        Name = 'CUR_OUT'
        ParamType = ptOutput
        Value = 'Object'
      end>
    CommandStoredProcName = 'deposit.MANAGER.GET_VIEW_DEPOSIT'
  end
  object ds_GET_VIEW_DEPOSIT: TOraDataSource
    DataSet = GET_VIEW_DEPOSIT
    Left = 444
    Top = 248
  end
end
