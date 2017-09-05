object f_spr: Tf_spr
  Left = 299
  Top = 192
  Align = alClient
  BorderStyle = bsNone
  Caption = 'f_spr'
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
  object pc_main: TsPageControl
    Left = 0
    Top = 0
    Width = 1072
    Height = 525
    ActivePage = ts_banks
    Align = alClient
    TabOrder = 0
    SkinData.SkinSection = 'PAGECONTROL'
    object ts_val: TsTabSheet
      Caption = #1042#1072#1083#1102#1090#1072
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      OnClickBtn = ts_valClickBtn
      object nav_val: TsDBNavigator
        Left = 0
        Top = 0
        Width = 1064
        Align = alTop
        FullRepaint = False
        TabOrder = 0
        SkinData.SkinSection = 'TOOLBAR'
        DataSource = ds_GET_CURRENCY
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
      end
      object gr_val: TDBGridEh
        Left = 0
        Top = 25
        Width = 1064
        Height = 472
        Align = alClient
        DataSource = ds_GET_CURRENCY
        DynProps = <>
        IndicatorOptions = [gioShowRowIndicatorEh]
        TabOrder = 1
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'N_CURRENCY'
            Footers = <>
            Title.Caption = #1057#1086#1082#1088'. '#1090#1080#1087
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME_CURRENCY'
            Footers = <>
            Title.Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1079#1074#1072#1085#1080#1077' '#1074#1072#1083#1102#1090#1099
            Width = 130
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object ts_type: TsTabSheet
      Caption = #1058#1080#1087' '#1083#1080#1094
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      OnClickBtn = ts_typeClickBtn
      object nav_type: TsDBNavigator
        Left = 0
        Top = 0
        Width = 1064
        Align = alTop
        FullRepaint = False
        TabOrder = 0
        SkinData.SkinSection = 'TOOLBAR'
        DataSource = ds_GET_TYPE
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
      end
      object db_type: TDBGridEh
        Left = 0
        Top = 25
        Width = 1064
        Height = 472
        Align = alClient
        DataSource = ds_GET_TYPE
        DynProps = <>
        IndicatorOptions = [gioShowRowIndicatorEh]
        TabOrder = 1
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME_FACE'
            Footers = <>
            Title.Caption = #1070#1088#1080#1076#1080#1095#1077#1089#1082#1080#1081' '#1090#1080#1087' '#1083#1080#1094#1072
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object ts_banks: TsTabSheet
      Caption = #1041#1072#1085#1082#1080
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      OnClickBtn = ts_banksClickBtn
      object nav_bank: TsDBNavigator
        Left = 0
        Top = 0
        Width = 1064
        Align = alTop
        FullRepaint = False
        TabOrder = 0
        SkinData.SkinSection = 'TOOLBAR'
        DataSource = ds_GET_BANKS
      end
      object gr_banks: TDBGridEh
        Left = 0
        Top = 25
        Width = 1064
        Height = 472
        Align = alClient
        DataSource = ds_GET_BANKS
        DynProps = <>
        IndicatorOptions = [gioShowRowIndicatorEh]
        TabOrder = 1
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME_BANK'
            Footers = <>
            Title.Caption = #1041#1072#1085#1082#1080'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 150
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'DETAILS_BANK'
            Footers = <>
            Title.Caption = #1041#1072#1085#1082#1080'|'#1044#1077#1090#1072#1083#1080
            Width = 200
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object ds_GET_TYPE: TOraDataSource
    DataSet = GET_TYPE
    Left = 636
    Top = 280
  end
  object GET_TYPE: TOraStoredProc
    StoredProcName = 'deposit.CATALOG.GET_TYPE'
    SQL.Strings = (
      'begin'
      '  deposit.CATALOG.GET_TYPE(:CUR_OUT);'
      'end;')
    Options.ReturnParams = True
    Left = 676
    Top = 280
    ParamData = <
      item
        DataType = ftCursor
        Name = 'CUR_OUT'
        ParamType = ptOutput
        Value = 'Object'
      end>
    CommandStoredProcName = 'deposit.CATALOG.GET_TYPE'
  end
  object ds_GET_CURRENCY: TOraDataSource
    DataSet = GET_CURRENCY
    Left = 636
    Top = 240
  end
  object GET_CURRENCY: TOraStoredProc
    StoredProcName = 'deposit.CATALOG.GET_CURRENCY'
    SQL.Strings = (
      'begin'
      '  deposit.CATALOG.GET_CURRENCY(:CUR_OUT);'
      'end;')
    Options.ReturnParams = True
    Left = 676
    Top = 240
    ParamData = <
      item
        DataType = ftCursor
        Name = 'CUR_OUT'
        ParamType = ptOutput
        Value = 'Object'
      end>
    CommandStoredProcName = 'deposit.CATALOG.GET_CURRENCY'
  end
  object GET_BANKS: TOraStoredProc
    StoredProcName = 'deposit.CATALOG.GET_BANKS'
    SQLInsert.Strings = (
      'begin'
      '  deposit.CATALOG.insert_bank(:name_bank, :details_bank,:my_id);'
      'end;')
    SQLDelete.Strings = (
      'begin'
      '  deposit.CATALOG.delete_bank(:my_id);'
      'end;')
    SQLUpdate.Strings = (
      'begin'
      '  deposit.CATALOG.update_bank(:name_bank, :details_bank,:my_id);'
      'end;')
    SQLRefresh.Strings = (
      'begin'
      '  deposit.CATALOG.refresh_banks(:my_id,:CUR_OUT);'
      'end;')
    SQL.Strings = (
      'begin'
      '  deposit.CATALOG.GET_BANKS(:CUR_OUT);'
      'end;')
    Left = 676
    Top = 328
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
    Left = 636
    Top = 328
  end
end
