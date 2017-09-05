object f_view_depositor: Tf_view_depositor
  Left = 328
  Top = 130
  Width = 333
  Height = 324
  Caption = #1055#1086#1080#1089#1082' '#1082#1083#1080#1077#1085#1090#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object gr_depositor: TDBGridEh
    Left = 0
    Top = 49
    Width = 317
    Height = 237
    Align = alClient
    DataSource = ds_GET_DEPOSITOR
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh]
    TabOrder = 0
    OnDblClick = gr_depositorDblClick
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAME_DEPOSITOR'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 317
    Height = 49
    Align = alTop
    TabOrder = 1
    SkinData.SkinSection = 'PANEL'
    object b_add: TsButton
      Left = 16
      Top = 8
      Width = 145
      Height = 33
      Caption = #1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1090#1100' '#1085#1086#1074#1086#1075#1086' '#1074#1082#1083#1072#1076#1095#1080#1082#1072
      TabOrder = 0
      OnClick = b_addClick
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object GET_DEPOSITOR: TOraStoredProc
    StoredProcName = 'deposit.OPERATOR.GET_DEPOSITOR'
    SQL.Strings = (
      'begin'
      '  deposit.OPERATOR.GET_DEPOSITOR(:TYPE_DEP, :CUR_OUT);'
      'end;')
    BeforeOpen = GET_DEPOSITORBeforeOpen
    Left = 160
    Top = 248
    ParamData = <
      item
        DataType = ftFloat
        Name = 'TYPE_DEP'
        ParamType = ptInput
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
    Left = 200
    Top = 248
  end
end
