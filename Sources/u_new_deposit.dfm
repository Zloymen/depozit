object f_new_deposit: Tf_new_deposit
  Left = 455
  Top = 179
  Width = 654
  Height = 488
  Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103' '#1074#1082#1083#1072#1076#1072
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
    Top = 406
    Width = 638
    Height = 44
    Align = alBottom
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object b_add: TsButton
      Left = 160
      Top = 8
      Width = 105
      Height = 25
      Caption = #1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 0
      OnClick = b_addClick
      SkinData.SkinSection = 'BUTTON'
    end
    object b_cancel: TsButton
      Left = 272
      Top = 8
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = b_cancelClick
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object p_main: TsPanel
    Left = 0
    Top = 0
    Width = 638
    Height = 406
    Align = alClient
    TabOrder = 1
    SkinData.SkinSection = 'PANEL'
    object sGroupBox1: TsGroupBox
      Left = 1
      Top = 57
      Width = 636
      Height = 64
      Align = alTop
      Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1074#1082#1083#1072#1076#1095#1080#1082#1072':'
      TabOrder = 0
      SkinData.SkinSection = 'GROUPBOX'
      object e_fio: TDBEditEh
        Left = 16
        Top = 24
        Width = 121
        Height = 19
        DynProps = <>
        EditButtons = <
          item
            Style = ebsEllipsisEh
            OnClick = DBEditEh1EditButtons0Click
          end>
        Flat = True
        TabOrder = 0
        Visible = True
      end
    end
    object sGroupBox2: TsGroupBox
      Left = 1
      Top = 121
      Width = 636
      Height = 72
      Align = alTop
      Caption = #1042#1099#1073#1077#1088#1080' '#1074#1082#1083#1072#1076
      TabOrder = 1
      SkinData.SkinSection = 'GROUPBOX'
      object cb_deposit: TDBLookupComboboxEh
        Left = 168
        Top = 32
        Width = 121
        Height = 19
        EditButtons = <>
        Flat = True
        KeyField = 'ID'
        ListField = 'NAME_DEPOSIT'
        ListSource = ds_GET_VIEW_DEPOSIT_WITH_BANK
        TabOrder = 0
        Visible = True
        OnChange = cb_depositChange
      end
      object cb_banks: TDBLookupComboboxEh
        Left = 24
        Top = 32
        Width = 121
        Height = 19
        EditButtons = <>
        Flat = True
        KeyField = 'MY_ID'
        ListField = 'NAME_BANK'
        ListSource = ds_GET_BANKS
        TabOrder = 1
        Visible = True
        OnChange = cb_banksChange
      end
    end
    object sGroupBox3: TsGroupBox
      Left = 1
      Top = 298
      Width = 636
      Height = 107
      Align = alClient
      Caption = #1054#1087#1077#1088#1072#1094#1080#1103
      TabOrder = 2
      SkinData.SkinSection = 'GROUPBOX'
      object sLabel1: TsLabel
        Left = 376
        Top = 34
        Width = 6
        Height = 13
        Caption = '='
      end
      object sLabel2: TsLabel
        Left = 392
        Top = 18
        Width = 76
        Height = 13
        Caption = #1057#1091#1084#1084#1072' '#1074#1082#1083#1072#1076#1072':'
      end
      object sLabel3: TsLabel
        Left = 522
        Top = 19
        Width = 41
        Height = 13
        Caption = #1042#1072#1083#1102#1090#1072':'
      end
      object sLabel5: TsLabel
        Left = 17
        Top = 20
        Width = 29
        Height = 13
        Caption = #1044#1072#1090#1072':'
      end
      object cb_course: TsDBLookupComboBox
        Left = 280
        Top = 32
        Width = 89
        Height = 21
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4473924
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'TYPE_VAL'
        ListField = 'N_CURRENCY'
        ListSource = ds_GET_COURSE
        ParentFont = False
        TabOrder = 0
        OnCloseUp = cb_courseCloseUp
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
      object e_sum: TsEdit
        Left = 144
        Top = 32
        Width = 121
        Height = 21
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4473924
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = '0'
        OnChange = e_sumChange
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Active = True
        BoundLabel.Caption = #1042#1085#1077#1089#1077#1085#1085#1072#1103' '#1089#1091#1084#1084#1072':'
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
      object e_dbsum: TsDBEdit
        Left = 392
        Top = 32
        Width = 121
        Height = 21
        Color = clWhite
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4473924
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        SkinData.SkinSection = 'EDIT'
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
      object e_course: TsDBEdit
        Left = 520
        Top = 32
        Width = 81
        Height = 21
        Color = clWhite
        DataField = 'N_CURRENCY'
        DataSource = ds_REFRESH_VIEW_DEPOSIT
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4473924
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        SkinData.SkinSection = 'EDIT'
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
      object d_edit: TsDateEdit
        Left = 16
        Top = 32
        Width = 113
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
        TabOrder = 4
        Text = '  .  .    '
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
    end
    object sGroupBox4: TsGroupBox
      Left = 1
      Top = 193
      Width = 636
      Height = 105
      Align = alTop
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1074#1082#1083#1072#1076#1077'.'
      TabOrder = 3
      SkinData.SkinSection = 'GROUPBOX'
      object sLabel4: TsLabel
        Left = 296
        Top = 11
        Width = 124
        Height = 13
        Caption = #1044#1077#1081#1089#1090#1074#1080#1077' '#1087#1088#1077#1076#1083#1086#1078#1077#1085#1080#1103':'
      end
      object sDBEdit3: TsDBEdit
        Left = 16
        Top = 24
        Width = 121
        Height = 21
        Color = clWhite
        DataField = 'NAME_FACE'
        DataSource = ds_REFRESH_VIEW_DEPOSIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4473924
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Active = True
        BoundLabel.Caption = #1058#1080#1087':'
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
      object sDBEdit4: TsDBEdit
        Left = 152
        Top = 24
        Width = 121
        Height = 21
        Color = clWhite
        DataField = 'NAME_DEPOSIT'
        DataSource = ds_REFRESH_VIEW_DEPOSIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4473924
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Active = True
        BoundLabel.Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
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
      object sDBDateEdit2: TsDBDateEdit
        Left = 296
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
        TabOrder = 2
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
        DataSource = ds_REFRESH_VIEW_DEPOSIT
      end
      object sDBDateEdit3: TsDBDateEdit
        Left = 408
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
        TabOrder = 3
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
        DataSource = ds_REFRESH_VIEW_DEPOSIT
      end
      object sDBEdit5: TsDBEdit
        Left = 16
        Top = 64
        Width = 121
        Height = 21
        Color = clWhite
        DataField = 'LIMIT'
        DataSource = ds_REFRESH_VIEW_DEPOSIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4473924
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
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
      object sDBEdit6: TsDBEdit
        Left = 152
        Top = 64
        Width = 121
        Height = 21
        Color = clWhite
        DataField = 'PERCENT'
        DataSource = ds_REFRESH_VIEW_DEPOSIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4473924
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
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
      object sDBEdit7: TsDBEdit
        Left = 296
        Top = 64
        Width = 89
        Height = 21
        Color = clWhite
        DataField = 'N_CURRENCY'
        DataSource = ds_REFRESH_VIEW_DEPOSIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4473924
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        SkinData.SkinSection = 'EDIT'
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
      end
    end
    object sGroupBox5: TsGroupBox
      Left = 1
      Top = 1
      Width = 636
      Height = 56
      Align = alTop
      Caption = #1058#1080#1087' '#1074#1082#1083#1072#1076#1095#1080#1082#1072
      TabOrder = 4
      SkinData.SkinSection = 'GROUPBOX'
      object cb_type: TsDBLookupComboBox
        Left = 16
        Top = 24
        Width = 145
        Height = 21
        Color = clWhite
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
        OnEnter = cb_typeEnter
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
  object GET_VIEW_DEPOSIT_WITH_BANK: TOraStoredProc
    StoredProcName = 'deposit.OPERATOR.GET_VIEW_DEPOSIT_WITH_BANK'
    SQL.Strings = (
      'begin'
      '  deposit.OPERATOR.GET_VIEW_DEPOSIT_WITH_BANK(:B_ID, :CUR_OUT);'
      'end;')
    BeforeOpen = GET_VIEW_DEPOSIT_WITH_BANKBeforeOpen
    Left = 409
    Top = 105
    ParamData = <
      item
        DataType = ftFloat
        Name = 'B_ID'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CUR_OUT'
        ParamType = ptOutput
        Value = 'Object'
      end>
    CommandStoredProcName = 'deposit.OPERATOR.GET_VIEW_DEPOSIT_WITH_BANK'
  end
  object GET_BANKS: TOraStoredProc
    StoredProcName = 'deposit.CATALOG.GET_BANKS'
    SQL.Strings = (
      'begin'
      '  deposit.CATALOG.GET_BANKS(:CUR_OUT);'
      'end;')
    Left = 449
    Top = 105
    ParamData = <
      item
        DataType = ftCursor
        Name = 'CUR_OUT'
        ParamType = ptOutput
        Value = 'Object'
      end>
    CommandStoredProcName = 'deposit.CATALOG.GET_BANKS'
  end
  object REFRESH_VIEW_DEPOSIT: TOraStoredProc
    StoredProcName = 'deposit.MANAGER.REFRESH_VIEW_DEPOSIT'
    SQL.Strings = (
      'begin'
      '  deposit.MANAGER.REFRESH_VIEW_DEPOSIT(:ID, :CUR_OUT);'
      'end;')
    BeforeOpen = REFRESH_VIEW_DEPOSITBeforeOpen
    AfterOpen = REFRESH_VIEW_DEPOSITAfterOpen
    Left = 497
    Top = 105
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CUR_OUT'
        ParamType = ptOutput
        Value = 'Object'
      end>
    CommandStoredProcName = 'deposit.MANAGER.REFRESH_VIEW_DEPOSIT'
    object REFRESH_VIEW_DEPOSITID: TFloatField
      FieldName = 'ID'
    end
    object REFRESH_VIEW_DEPOSITNAME_DEPOSIT: TStringField
      FieldName = 'NAME_DEPOSIT'
      Size = 100
    end
    object REFRESH_VIEW_DEPOSITLIMIT: TFloatField
      FieldName = 'LIMIT'
    end
    object REFRESH_VIEW_DEPOSITPERCENT: TFloatField
      FieldName = 'PERCENT'
    end
    object REFRESH_VIEW_DEPOSITDATA_OPEN: TDateTimeField
      FieldName = 'DATA_OPEN'
    end
    object REFRESH_VIEW_DEPOSITDATE_CLOSE: TDateTimeField
      FieldName = 'DATE_CLOSE'
    end
    object REFRESH_VIEW_DEPOSITBANKS_ID: TFloatField
      FieldName = 'BANKS_ID'
    end
    object REFRESH_VIEW_DEPOSITTYPE_DEPOSITOR_ID: TFloatField
      FieldName = 'TYPE_DEPOSITOR_ID'
    end
    object REFRESH_VIEW_DEPOSITTYPE_CURRENCY_ID: TFloatField
      FieldName = 'TYPE_CURRENCY_ID'
    end
    object REFRESH_VIEW_DEPOSITNAME_BANK: TStringField
      FieldName = 'NAME_BANK'
      Size = 50
    end
    object REFRESH_VIEW_DEPOSITNAME_FACE: TStringField
      FieldName = 'NAME_FACE'
    end
    object REFRESH_VIEW_DEPOSITN_CURRENCY: TStringField
      FieldName = 'N_CURRENCY'
      Size = 40
    end
    object REFRESH_VIEW_DEPOSITNAME_CURRENCY: TStringField
      FieldName = 'NAME_CURRENCY'
      Size = 200
    end
  end
  object ds_GET_BANKS: TOraDataSource
    DataSet = GET_BANKS
    Left = 409
    Top = 73
  end
  object ds_GET_VIEW_DEPOSIT_WITH_BANK: TOraDataSource
    DataSet = GET_VIEW_DEPOSIT_WITH_BANK
    Left = 449
    Top = 73
  end
  object ds_REFRESH_VIEW_DEPOSIT: TOraDataSource
    DataSet = REFRESH_VIEW_DEPOSIT
    Left = 497
    Top = 73
  end
  object GET_COURSE: TOraStoredProc
    StoredProcName = 'deposit.MANAGER.GET_COURSE'
    SQL.Strings = (
      'begin'
      '  deposit.MANAGER.GET_COURSE(:FROM_DATE, :T_COST, :CUR_OUT);'
      'end;')
    BeforeOpen = GET_COURSEBeforeOpen
    Left = 449
    Top = 154
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
  object ds_GET_COURSE: TOraDataSource
    DataSet = GET_COURSE
    Left = 489
    Top = 154
  end
  object GET_TYPE: TOraStoredProc
    StoredProcName = 'deposit.CATALOG.GET_TYPE'
    SQL.Strings = (
      'begin'
      '  deposit.CATALOG.GET_TYPE(:CUR_OUT);'
      'end;')
    Left = 361
    Top = 17
    ParamData = <
      item
        DataType = ftCursor
        Name = 'CUR_OUT'
        ParamType = ptOutput
        Value = 'Object'
      end>
    CommandStoredProcName = 'deposit.CATALOG.GET_TYPE'
  end
  object ds_GET_TYPE: TOraDataSource
    DataSet = GET_TYPE
    Left = 401
    Top = 17
  end
  object INSERT_DEPOSIT: TOraStoredProc
    StoredProcName = 'deposit.OPERATOR.INSERT_DEPOSIT'
    SQL.Strings = (
      'begin'
      
        '  deposit.OPERATOR.INSERT_DEPOSIT(:ID, :V_DATE_OPEN, :V_DEPOSITO' +
        'R_ID, :V_SUMMA_DEPOSIT, :V_VIEW_DEPOSIT_ID);'
      'end;')
    BeforeExecute = INSERT_DEPOSITBeforeExecute
    Left = 449
    Top = 257
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftDateTime
        Name = 'V_DATE_OPEN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'V_DEPOSITOR_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'V_SUMMA_DEPOSIT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'V_VIEW_DEPOSIT_ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'deposit.OPERATOR.INSERT_DEPOSIT'
  end
end
