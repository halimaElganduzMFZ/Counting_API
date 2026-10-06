object ContainerSrchFm: TContainerSrchFm
  Left = 136
  Top = 68
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1588#1575#1588#1577' '#1575#1604#1576#1581#1579' '#1581#1575#1608#1610#1575#1578
  ClientHeight = 693
  ClientWidth = 881
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 881
    Height = 693
    Align = alClient
    BiDiMode = bdRightToLeft
    Color = clWhite
    DataSource = DmdFm.SHIPSHIFTSSSSDS
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNone
    Font.Height = -41
    Font.Name = 'Tajawal'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    ReadOnly = True
    SearchPanel.Enabled = True
    TabOrder = 0
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Container_ID'
        Footers = <>
        Width = 432
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'containertype'
        Footers = <>
        Width = 413
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
end
