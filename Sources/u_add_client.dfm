object f_add_client: Tf_add_client
  Left = 666
  Top = 244
  Width = 530
  Height = 292
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1083#1080#1077#1085#1090#1072
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
  object p_buttom: TsPanel
    Left = 0
    Top = 192
    Width = 514
    Height = 62
    Align = alBottom
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object b_save: TsButton
      Left = 136
      Top = 24
      Width = 75
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 0
      OnClick = b_saveClick
      SkinData.SkinSection = 'BUTTON'
    end
    object b_cancel: TsButton
      Left = 232
      Top = 24
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
    Width = 514
    Height = 192
    Align = alClient
    TabOrder = 1
    SkinData.SkinSection = 'PANEL'
    object sGroupBox1: TsGroupBox
      Left = 1
      Top = 1
      Width = 512
      Height = 56
      Align = alTop
      Caption = #1058#1080#1087' '#1082#1083#1080#1077#1085#1090#1072
      TabOrder = 0
      SkinData.SkinSection = 'GROUPBOX'
      object sDBLookupComboBox1: TsDBLookupComboBox
        Left = 12
        Top = 24
        Width = 485
        Height = 21
        Color = clWhite
        DataField = 'TYPE_DEPOSITOR_ID'
        DataSource = ds_GET_ONE_DEPOSITOR
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
    object sGroupBox2: TsGroupBox
      Left = 1
      Top = 57
      Width = 512
      Height = 64
      Align = alTop
      Caption = #1060#1048#1054
      TabOrder = 1
      SkinData.SkinSection = 'GROUPBOX'
      DesignSize = (
        512
        64)
      object sDBEdit2: TsDBEdit
        Left = 8
        Top = 16
        Width = 489
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Color = clWhite
        DataField = 'NAME_DEPOSITOR'
        DataSource = ds_GET_ONE_DEPOSITOR
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
      Top = 121
      Width = 512
      Height = 70
      Align = alClient
      Caption = #1054#1087#1080#1089#1072#1085#1080#1077
      TabOrder = 2
      SkinData.SkinSection = 'GROUPBOX'
      DesignSize = (
        512
        70)
      object sDBEdit1: TsDBEdit
        Left = 8
        Top = 16
        Width = 489
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Color = clWhite
        DataField = 'DETAIL_DEPOSITOR'
        DataSource = ds_GET_ONE_DEPOSITOR
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
  end
  object GET_TYPE: TOraStoredProc
    StoredProcName = 'deposit.CATALOG.GET_TYPE'
    SQL.Strings = (
      'begin'
      '  deposit.CATALOG.GET_TYPE(:CUR_OUT);'
      'end;')
    Left = 64
    Top = 168
    ParamData = <
      item
        DataType = ftCursor
        Name = 'CUR_OUT'
        ParamType = ptOutput
        Value = 'Object'
      end>
    CommandStoredProcName = 'deposit.CATALOG.GET_TYPE'
  end
  object GET_ONE_DEPOSITOR: TOraStoredProc
    StoredProcName = 'deposit.OPERATOR.GET_ONE_DEPOSITOR'
    SQLInsert.Strings = (
      'begin'
      
        '  deposit.OPERATOR.insert_depositor(:id, :name_depositor, :detai' +
        'l_depositor, :type_depositor_id);'
      'end;')
    SQLUpdate.Strings = (
      'begin'
      
        '  deposit.OPERATOR.update_depositor(:id, :name_depositor, :detai' +
        'l_depositor, :type_depositor_id);'
      'end;')
    SQL.Strings = (
      'begin'
      '  deposit.OPERATOR.GET_ONE_DEPOSITOR(:ID, :CUR_OUT);'
      'end;')
    Options.ReturnParams = True
    BeforeOpen = GET_ONE_DEPOSITORBeforeOpen
    Left = 24
    Top = 168
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
    CommandStoredProcName = 'deposit.OPERATOR.GET_ONE_DEPOSITOR'
  end
  object ds_GET_ONE_DEPOSITOR: TOraDataSource
    DataSet = GET_ONE_DEPOSITOR
    Left = 24
    Top = 200
  end
  object ds_GET_TYPE: TOraDataSource
    DataSet = GET_TYPE
    Left = 64
    Top = 200
  end
end
