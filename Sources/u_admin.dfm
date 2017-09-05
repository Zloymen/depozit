object f_admin: Tf_admin
  Left = 413
  Top = 173
  Align = alClient
  BorderStyle = bsNone
  Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 499
  ClientWidth = 728
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object p_top: TsPanel
    Left = 0
    Top = 0
    Width = 728
    Height = 41
    Align = alTop
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
  end
  object p_all: TsPanel
    Left = 0
    Top = 41
    Width = 728
    Height = 458
    Align = alClient
    TabOrder = 1
    SkinData.SkinSection = 'PANEL'
    object sSplitter1: TsSplitter
      Left = 545
      Top = 1
      Height = 456
      SkinData.SkinSection = 'SPLITTER'
    end
    object p_user: TsPanel
      Left = 1
      Top = 1
      Width = 544
      Height = 456
      Align = alLeft
      TabOrder = 0
      SkinData.SkinSection = 'PANEL'
      object gr_user: TDBGridEh
        Left = 1
        Top = 25
        Width = 542
        Height = 430
        Align = alClient
        DataSource = ds_GET_USERS
        DynProps = <>
        IndicatorOptions = [gioShowRowIndicatorEh]
        TabOrder = 0
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'LOGIN_ORA'
            Footers = <>
            Title.Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100'| '#1051#1054#1043#1048#1053
            Width = 100
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'FIO_USER'
            Footers = <>
            Title.Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100'| '#1060#1048#1054
            Width = 300
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object sDBNavigator1: TsDBNavigator
        Left = 1
        Top = 1
        Width = 542
        Height = 24
        Align = alTop
        FullRepaint = False
        TabOrder = 1
        SkinData.SkinSection = 'TOOLBAR'
        DataSource = ds_GET_USERS
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbRefresh]
      end
    end
    object p_rights: TsPanel
      Left = 551
      Top = 1
      Width = 176
      Height = 456
      Align = alClient
      TabOrder = 1
      SkinData.SkinSection = 'PANEL'
      object cb_admin: TsCheckBox
        Left = 16
        Top = 16
        Width = 104
        Height = 19
        Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088
        TabOrder = 0
        OnClick = cb_adminClick
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
      end
      object cb_oper: TsCheckBox
        Left = 16
        Top = 48
        Width = 74
        Height = 19
        Caption = #1054#1087#1077#1088#1072#1090#1086#1088
        TabOrder = 1
        OnClick = cb_adminClick
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
      end
      object cb_manager: TsCheckBox
        Left = 16
        Top = 80
        Width = 78
        Height = 19
        Caption = #1052#1077#1085#1077#1076#1078#1077#1088
        TabOrder = 2
        OnClick = cb_adminClick
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
      end
      object cb_oper_spr: TsCheckBox
        Left = 16
        Top = 112
        Width = 145
        Height = 19
        Caption = #1054#1087#1077#1088#1072#1090#1086#1088' '#1089#1087#1088'. '#1080#1085#1092'-'#1094#1080#1081' '
        TabOrder = 3
        OnClick = cb_adminClick
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
      end
      object cb_analitik: TsCheckBox
        Left = 16
        Top = 144
        Width = 73
        Height = 19
        Caption = #1040#1085#1072#1083#1080#1090#1080#1082
        TabOrder = 4
        OnClick = cb_adminClick
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
      end
    end
  end
  object skin_form: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'MS Sans Serif'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Left = 816
    Top = 96
  end
  object GET_USERS: TOraStoredProc
    StoredProcName = 'deposit.SECURITY.GET_USERS'
    SQLInsert.Strings = (
      'begin'
      ' deposit.security.insert_user(:login_ora,:fio_user,:id);'
      'end;')
    SQLUpdate.Strings = (
      'begin'
      ' deposit.security.update_user(:fio_user,:id);'
      'end;')
    SQLRefresh.Strings = (
      'begin'
      ' deposit.security.refresh_users(:id,:cur_out);'
      'end;')
    SQL.Strings = (
      'begin'
      '  deposit.SECURITY.GET_USERS(:CUR_OUT);'
      'end;')
    Options.ReturnParams = True
    AfterPost = GET_USERSAfterPost
    AfterScroll = GET_USERSAfterScroll
    Left = 591
    Top = 434
    ParamData = <
      item
        DataType = ftCursor
        Name = 'CUR_OUT'
        ParamType = ptOutput
        Value = 'Object'
      end>
    CommandStoredProcName = 'deposit.SECURITY.GET_USERS'
  end
  object ds_GET_USERS: TOraDataSource
    DataSet = GET_USERS
    Left = 639
    Top = 434
  end
  object GET_RIGHTS: TOraStoredProc
    StoredProcName = 'deposit.SECURITY.GET_RIGHTS'
    SQL.Strings = (
      'begin'
      '  deposit.SECURITY.GET_RIGHTS(:ID, :CUR_OUT);'
      'end;')
    BeforeOpen = GET_RIGHTSBeforeOpen
    AfterOpen = GET_RIGHTSAfterOpen
    Left = 591
    Top = 386
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
    CommandStoredProcName = 'deposit.SECURITY.GET_RIGHTS'
  end
  object SET_RIGHT: TOraStoredProc
    StoredProcName = 'deposit.SECURITY.SET_RIGHT'
    SQL.Strings = (
      'begin'
      '  deposit.SECURITY.SET_RIGHT(:ID, :ID_PARAM, :CHECK_IN);'
      'end;')
    Left = 639
    Top = 386
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ID_PARAM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CHECK_IN'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'deposit.SECURITY.SET_RIGHT'
  end
end
