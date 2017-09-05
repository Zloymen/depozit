object f_tender: Tf_tender
  Left = 215
  Top = 264
  Align = alClient
  BorderStyle = bsNone
  ClientHeight = 317
  ClientWidth = 377
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object p_buttom: TsPanel
    Left = 0
    Top = 266
    Width = 377
    Height = 51
    Align = alBottom
    TabOrder = 0
    Visible = False
    SkinData.SkinSection = 'PANEL'
    object sButton1: TsButton
      Left = 100
      Top = 16
      Width = 75
      Height = 25
      Caption = 'sButton1'
      TabOrder = 0
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton2: TsButton
      Left = 204
      Top = 16
      Width = 75
      Height = 25
      Caption = 'sButton2'
      TabOrder = 1
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object p_top: TsPanel
    Left = 0
    Top = 0
    Width = 377
    Height = 57
    Align = alTop
    TabOrder = 1
    SkinData.SkinSection = 'PANEL'
    object sGroupBox1: TsGroupBox
      Left = 209
      Top = 1
      Width = 167
      Height = 55
      Align = alClient
      Caption = #1058#1080#1087' '#1074#1082#1083#1072#1076#1095#1080#1082#1072
      TabOrder = 0
      SkinData.SkinSection = 'GROUPBOX'
      object sDBLookupComboBox2: TsDBLookupComboBox
        Left = 8
        Top = 24
        Width = 145
        Height = 21
        Color = clWhite
        DataField = 'TYPE_DEPOSITOR_ID'
        DataSource = f_manager.ds_GET_VIEW_DEPOSIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4473924
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'ID'
        ListField = 'NAME_FACE'
        ListSource = ds_GET_TYPE
        ParentFont = False
        TabOrder = 0
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        SkinData.SkinSection = 'COMBOBOX'
      end
    end
    object sGroupBox5: TsGroupBox
      Left = 1
      Top = 1
      Width = 208
      Height = 55
      Align = alLeft
      Caption = #1041#1072#1085#1082
      TabOrder = 1
      SkinData.SkinSection = 'GROUPBOX'
      object sDBLookupComboBox1: TsDBLookupComboBox
        Left = 8
        Top = 24
        Width = 185
        Height = 21
        Color = clWhite
        DataField = 'BANKS_ID'
        DataSource = f_manager.ds_GET_VIEW_DEPOSIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4473924
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'MY_ID'
        ListField = 'NAME_BANK'
        ListSource = ds_GET_BANKS
        ParentFont = False
        TabOrder = 0
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        SkinData.SkinSection = 'COMBOBOX'
      end
    end
  end
  object p_all: TsPanel
    Left = 0
    Top = 57
    Width = 377
    Height = 209
    Align = alClient
    TabOrder = 2
    SkinData.SkinSection = 'PANEL'
    object sGroupBox2: TsGroupBox
      Left = 1
      Top = 1
      Width = 375
      Height = 48
      Align = alTop
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1074#1082#1083#1072#1076#1072
      TabOrder = 0
      SkinData.SkinSection = 'GROUPBOX'
      DesignSize = (
        375
        48)
      object sDBEdit3: TsDBEdit
        Left = 8
        Top = 16
        Width = 333
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Color = clWhite
        DataField = 'NAME_DEPOSIT'
        DataSource = f_manager.ds_GET_VIEW_DEPOSIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4473924
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
      end
    end
    object sGroupBox3: TsGroupBox
      Left = 1
      Top = 49
      Width = 375
      Height = 56
      Align = alTop
      Caption = #1057#1088#1086#1082' '#1076#1077#1081#1089#1090#1074#1080#1103' '#1087#1088#1077#1076#1083#1086#1078#1077#1085#1080#1103
      TabOrder = 1
      SkinData.SkinSection = 'GROUPBOX'
      object sDBDateEdit1: TsDBDateEdit
        Left = 24
        Top = 24
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
        BoundLabel.Caption = #1086#1090
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
        DataField = 'DATA_OPEN'
        DataSource = f_manager.ds_GET_VIEW_DEPOSIT
      end
      object sDBDateEdit2: TsDBDateEdit
        Left = 176
        Top = 24
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
        BoundLabel.Caption = #1076#1086
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
        DataField = 'DATE_CLOSE'
        DataSource = f_manager.ds_GET_VIEW_DEPOSIT
      end
    end
    object sGroupBox4: TsGroupBox
      Left = 1
      Top = 105
      Width = 375
      Height = 103
      Align = alClient
      Caption = #1059#1089#1083#1086#1074#1080#1103
      TabOrder = 2
      SkinData.SkinSection = 'GROUPBOX'
      object sDBEdit1: TsDBEdit
        Left = 184
        Top = 32
        Width = 121
        Height = 21
        Color = clWhite
        DataField = 'LIMIT'
        DataSource = f_manager.ds_GET_VIEW_DEPOSIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4473924
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Active = True
        BoundLabel.Caption = #1057#1088#1086#1082' '#1074' '#1076#1085#1103#1093':'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclTopLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
      end
      object sDBEdit2: TsDBEdit
        Left = 16
        Top = 72
        Width = 121
        Height = 21
        Color = clWhite
        DataField = 'PERCENT'
        DataSource = f_manager.ds_GET_VIEW_DEPOSIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4473924
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Active = True
        BoundLabel.Caption = #1055#1088#1086#1094#1077#1085#1090#1085#1072#1103' '#1089#1090#1072#1074#1082#1072':'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclTopLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
      end
      object sDBLookupComboBox3: TsDBLookupComboBox
        Left = 16
        Top = 32
        Width = 145
        Height = 21
        Color = clWhite
        DataField = 'TYPE_CURRENCY_ID'
        DataSource = f_manager.ds_GET_VIEW_DEPOSIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4473924
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'ID'
        ListField = 'NAME_CURRENCY'
        ListSource = ds_GET_CURRENCY
        ParentFont = False
        TabOrder = 2
        BoundLabel.Active = True
        BoundLabel.Caption = #1042#1072#1083#1102#1090#1072':'
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
  end
  object form_skin: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'MS Sans Serif'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Left = 504
    Top = 8
  end
  object GET_TYPE: TOraStoredProc
    StoredProcName = 'deposit.CATALOG.GET_TYPE'
    SQL.Strings = (
      'begin'
      '  deposit.CATALOG.GET_TYPE(:CUR_OUT);'
      'end;')
    Left = 273
    Top = 106
    ParamData = <
      item
        DataType = ftCursor
        Name = 'CUR_OUT'
        ParamType = ptOutput
        Value = 'Object'
      end>
    CommandStoredProcName = 'deposit.CATALOG.GET_TYPE'
  end
  object GET_BANKS: TOraStoredProc
    StoredProcName = 'deposit.CATALOG.GET_BANKS'
    SQL.Strings = (
      'begin'
      '  deposit.CATALOG.GET_BANKS(:CUR_OUT);'
      'end;')
    Left = 273
    Top = 74
    ParamData = <
      item
        DataType = ftCursor
        Name = 'CUR_OUT'
        ParamType = ptOutput
        Value = 'Object'
      end>
    CommandStoredProcName = 'deposit.CATALOG.GET_BANKS'
  end
  object GET_CURRENCY: TOraStoredProc
    StoredProcName = 'deposit.CATALOG.GET_CURRENCY'
    SQL.Strings = (
      'begin'
      '  deposit.CATALOG.GET_CURRENCY(:CUR_OUT);'
      'end;')
    Left = 273
    Top = 138
    ParamData = <
      item
        DataType = ftCursor
        Name = 'CUR_OUT'
        ParamType = ptOutput
        Value = 'Object'
      end>
    CommandStoredProcName = 'deposit.CATALOG.GET_CURRENCY'
  end
  object ds_GET_CURRENCY: TOraDataSource
    DataSet = GET_CURRENCY
    Left = 313
    Top = 138
  end
  object ds_GET_TYPE: TOraDataSource
    DataSet = GET_TYPE
    Left = 313
    Top = 106
  end
  object ds_GET_BANKS: TOraDataSource
    DataSet = GET_BANKS
    Left = 313
    Top = 74
  end
end
