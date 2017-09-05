object f_oper: Tf_oper
  Left = 192
  Top = 124
  Align = alClient
  BorderStyle = bsNone
  Caption = 'f_oper'
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
    Height = 33
    Align = alTop
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
  end
  object sPageControl1: TsPageControl
    Left = 0
    Top = 33
    Width = 1072
    Height = 492
    ActivePage = sTabSheet1
    Align = alClient
    TabOrder = 1
    SkinData.SkinSection = 'PAGECONTROL'
    object sTabSheet1: TsTabSheet
      Caption = #1042#1082#1083#1072#1076#1099
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      object sPanel3: TsPanel
        Left = 0
        Top = 0
        Width = 1064
        Height = 65
        Align = alTop
        TabOrder = 0
        SkinData.SkinSection = 'PANEL'
        object b_add_deposit: TsButton
          Left = 8
          Top = 16
          Width = 97
          Height = 33
          Caption = #1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1090#1100' '#1074#1082#1083#1072#1076
          TabOrder = 0
          OnClick = b_add_depositClick
          SkinData.SkinSection = 'BUTTON'
        end
      end
      object gr_deposits: TDBGridEh
        Left = 0
        Top = 115
        Width = 1064
        Height = 349
        Align = alClient
        DataSource = ds_GET_DEPOSITS
        DynProps = <>
        IndicatorOptions = [gioShowRowIndicatorEh]
        TabOrder = 1
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME_FACE'
            Footers = <>
            Title.Caption = #1058#1048#1055
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME_BANK'
            Footers = <>
            Title.Caption = #1041#1072#1085#1082
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME_DEPOSIT'
            Footers = <>
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1076#1077#1087#1086#1079#1080#1090#1072
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME_CURRENCY'
            Footers = <>
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1074#1072#1083#1102#1090#1099
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'SUMMA_DEPOSIT'
            Footers = <>
            Title.Caption = #1057#1091#1084#1084#1072
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'DATE_OPEN'
            Footers = <>
            Title.Caption = #1044#1072#1090#1072' '#1086#1090#1082#1088#1099#1090#1080#1103
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME_DEPOSITOR'
            Footers = <>
            Title.Caption = #1042#1082#1083#1072#1076#1095#1080#1082
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object sPanel4: TsPanel
        Left = 0
        Top = 65
        Width = 1064
        Height = 50
        Align = alTop
        TabOrder = 2
        SkinData.SkinSection = 'PANEL'
        object d_begin: TsDateEdit
          Left = 32
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
          Left = 144
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
        object sButton1: TsButton
          Left = 256
          Top = 16
          Width = 75
          Height = 25
          Caption = #1055#1086#1082#1072#1079#1072#1090#1100
          TabOrder = 2
          OnClick = sButton1Click
          SkinData.SkinSection = 'BUTTON'
        end
      end
    end
    object sTabSheet2: TsTabSheet
      Caption = #1042#1082#1083#1072#1076#1095#1080#1082#1080
      SkinData.CustomColor = False
      SkinData.CustomFont = False
      object sPanel2: TsPanel
        Left = 0
        Top = 0
        Width = 1064
        Height = 57
        Align = alTop
        TabOrder = 0
        SkinData.SkinSection = 'PANEL'
        object b_add: TsBitBtn
          Left = 16
          Top = 16
          Width = 105
          Height = 33
          Caption = #1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1090#1100' '#1082#1083#1080#1077#1085#1090#1072
          TabOrder = 0
          OnClick = b_addClick
          SkinData.SkinSection = 'BUTTON'
        end
        object b_edit: TsBitBtn
          Left = 128
          Top = 16
          Width = 105
          Height = 33
          Caption = #1054#1090#1088#1077#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1082#1083#1080#1077#1085#1090#1072
          TabOrder = 1
          OnClick = b_editClick
          SkinData.SkinSection = 'BUTTON'
        end
      end
      object gr_client: TDBGridEh
        Left = 0
        Top = 57
        Width = 1064
        Height = 407
        Align = alClient
        DataSource = ds_GET_DEPOSITOR
        DynProps = <>
        IndicatorOptions = [gioShowRowIndicatorEh]
        TabOrder = 1
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME_FACE'
            Footers = <>
            Title.Caption = #1050#1083#1080#1077#1085#1090'|'#1058#1080#1087
            Width = 100
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME_DEPOSITOR'
            Footers = <>
            Title.Caption = #1050#1083#1080#1077#1085#1090'|'#1060#1048#1054
            Width = 150
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'DETAIL_DEPOSITOR'
            Footers = <>
            Title.Caption = #1050#1083#1080#1077#1085#1090'|'#1054#1087#1080#1089#1072#1085#1080#1077
            Width = 250
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object GET_DEPOSITOR: TOraStoredProc
    StoredProcName = 'deposit.OPERATOR.GET_DEPOSITOR'
    SQLRefresh.Strings = (
      'begin'
      '  deposit.OPERATOR.refresh_depositor(:id, :cur_out);'
      'end;')
    SQL.Strings = (
      'begin'
      '  deposit.OPERATOR.GET_DEPOSITOR(:TYPE_DEP, :CUR_OUT);'
      'end;')
    AfterOpen = GET_DEPOSITORAfterOpen
    Left = 812
    Top = 281
    ParamData = <
      item
        DataType = ftFloat
        Name = 'TYPE_DEP'
        ParamType = ptInput
        Value = -1.000000000000000000
        HasDefault = True
      end
      item
        DataType = ftCursor
        Name = 'CUR_OUT'
        ParamType = ptOutput
        Value = 'Object'
      end>
    CommandStoredProcName = 'deposit.OPERATOR.GET_DEPOSITOR'
  end
  object ds_GET_DEPOSITOR: TOraDataSource
    DataSet = GET_DEPOSITOR
    Left = 844
    Top = 281
  end
  object GET_DEPOSITS: TOraStoredProc
    StoredProcName = 'deposit.OPERATOR.GET_DEPOSITS'
    SQL.Strings = (
      'begin'
      '  deposit.OPERATOR.GET_DEPOSITS(:CUR_BEGIN, :CUR_END, :CUR_OUT);'
      'end;')
    BeforeOpen = GET_DEPOSITSBeforeOpen
    Left = 316
    Top = 241
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'CUR_BEGIN'
        ParamType = ptInput
        HasDefault = True
      end
      item
        DataType = ftDateTime
        Name = 'CUR_END'
        ParamType = ptInput
        HasDefault = True
      end
      item
        DataType = ftCursor
        Name = 'CUR_OUT'
        ParamType = ptOutput
        Value = 'Object'
      end>
    CommandStoredProcName = 'deposit.OPERATOR.GET_DEPOSITS'
  end
  object ds_GET_DEPOSITS: TOraDataSource
    DataSet = GET_DEPOSITS
    Left = 364
    Top = 241
  end
end
