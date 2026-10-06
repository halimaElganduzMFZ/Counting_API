unit shipCoversUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  DBAdvGlowNavigator, acPNG, Vcl.Mask, Vcl.DBCtrls, sDBEdit, sDBLookupComboBox,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, DBAdvNavigator, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinWXI, dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit,
  cxSpinEdit, cxTimeEdit, cxDBEdit, System.ImageList, Vcl.ImgList,
  acAlphaImageList, Vcl.Buttons, sBitBtn, Data.DB, MemDS, DBAccess, Uni, sLabel,
  Vcl.CheckLst, sGroupBox, sEdit;

type
  TshipCoversFm = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Image1: TImage;
    Label7: TLabel;
    DBAdvGlowNavigator1: TDBAdvGlowNavigator;
    Label2: TLabel;
    DBGridEh1: TDBGridEh;
    Image3: TImage;
    DBRadioGroup1: TDBRadioGroup;
    Label5: TLabel;
    Label6: TLabel;
    cxDBTimeEdit1: TcxDBTimeEdit;
    cxDBTimeEdit2: TcxDBTimeEdit;
    sAlphaImageList2: TsAlphaImageList;
    DBEdit1: TDBEdit;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    sLabel5: TsLabel;
    sLabel6: TsLabel;
    sLabel7: TsLabel;
    sLabel8: TsLabel;
    sLabel9: TsLabel;
    sLabel10: TsLabel;
    sGroupBox1: TsGroupBox;
    DBListBox1: TDBListBox;
    Query1: TUniQuery;
    sEdit1: TsEdit;
    sEdit2: TsEdit;
    Label1: TLabel;
    Label3: TLabel;
    procedure Image3Click(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  shipCoversFm: TshipCoversFm;

implementation

{$R *.dfm}

uses DataModuleUn, DmdUn, Unit14;

procedure TshipCoversFm.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  SQLText: string;
  Numm: Integer;
  RGBColor: TColor;
  FGBColor: TColor;
begin

  case DmdFm.LshipCoversOperatoinType.Value of


    1:
      begin

        DBGridEh1.Canvas.Brush.Color := clRed;
        DBGridEh1.Canvas.Font.Color := clWhite;

      end;
    2:
      begin

        DBGridEh1.Canvas.Brush.Color := clGreen;
        DBGridEh1.Canvas.Font.Color := clWhite;

      end;

  end;
   DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  //  DmdFm.LshipCovers.Refresh;
end;


procedure TshipCoversFm.FormShow(Sender: TObject);
var
  SQLText: string;
  Numm: Integer;
  survivor: Integer;
  survivorStr: String;
begin
  SQLText :=
    'SELECT SUM(numberofcovers) as MN from shipcovers   where M_AutoUID=''' +
    DmdFm.LsortingtripAutoUID.Value + ''' AND OperatoinType=1';

  DmdFm.Query1.Close;
  DmdFm.Query1.SQL.Text := SQLText;

  // try
  // Execute the query
  DmdFm.Query1.Open;

  // Check if any results were returned
  if not DmdFm.Query1.IsEmpty then
  begin
    while not DmdFm.Query1.Eof do
    begin

      sEdit1.Text := DmdFm.Query1.FieldByName('MN').AsString;
      // ShowMessage(inttostr(Numm));
      DmdFm.Query1.Next;

    end;
  end;
  SQLText :=
    'SELECT SUM(numberofcovers) as MN from shipcovers   where M_AutoUID=''' +
    DmdFm.LsortingtripAutoUID.Value + ''' AND OperatoinType=2';

  DmdFm.Query1.Close;
  DmdFm.Query1.SQL.Text := SQLText;

  // try
  // Execute the query
 DmdFm.Query1.Open;

  // Check if any results were returned
  if not DmdFm.Query1.IsEmpty then
  begin
    while not DmdFm.Query1.Eof do
    begin

      sEdit2.Text := DmdFm.Query1.FieldByName('MN').AsString;
      // ShowMessage(inttostr(Numm));
      DmdFm.Query1.Next;

    end;
  end;
  with DmdFm do
  begin
    // Mid.Text := LsortingtripAutoUID.Value;
    SQLText := 'SELECT Max(numAuto) as MN from hraktemp where NumList=' +
      inttostr(LsortingtripnumAuto.Value) + '';

    // Set up the query
    shipCoversFm.Query1.Close;
    shipCoversFm.Query1.SQL.Text := SQLText;

    // try
    // Execute the query
    shipCoversFm.Query1.Open;

    // Check if any results were returned
    if not shipCoversFm.Query1.IsEmpty then
    begin
      while not shipCoversFm.Query1.Eof do
      begin

        Numm := shipCoversFm.Query1.FieldByName('MN').AsInteger;
        //ShowMessage(inttostr(Numm));
        shipCoversFm.Query1.Next;

      end;
    end;
    // finally
    //
    // end;
    SQLText :=
      'SELECT  N_Amber , N_sidewalk , N_bandsupervisor , N_crane , N_craneoperator from hraktemp where numAuto= '
      + inttostr(Numm) + '';

    // Set up the query
    shipCoversFm.Query1.Close;
    shipCoversFm.Query1.SQL.Text := SQLText;

    // try
    // Execute the query
    shipCoversFm.Query1.Open;

    // Check if any results were returned
    if not shipCoversFm.Query1.IsEmpty then
    begin
      while not shipCoversFm.Query1.Eof do
      begin

        survivor :=shipCoversFm.Query1.FieldByName('N_bandsupervisor').AsInteger;
        // LshipCoversN_bandsupervisor.Value:=  survivor;
        shipCoversFm.Query1.Next;

      end;
    end;

    // finally
    //
    // end;
    SQLText := 'SELECT  NameBandSupervisor from bandsupervisor where NumAuto=' +
      inttostr(survivor) + '';

    // Set up the query
    shipCoversFm.Query1.Close;
    shipCoversFm.Query1.SQL.Text := SQLText;

    // try
    // Execute the query
    shipCoversFm.Query1.Open;

    // Check if any results were returned
    if not shipCoversFm.Query1.IsEmpty then
    begin
      while not shipCoversFm.Query1.Eof do
      begin

        survivorStr := shipCoversFm.Query1.FieldByName('NameBandSupervisor').Value;
        //LshipCoversN_bandsupervisor_Nm.Value:= survivorStr;
        //survivorTxt.Text := survivorStr;
        shipCoversFm.Query1.Next;

      end;
    end;

    // finally
    //
    // end;
  end;

end;

procedure TshipCoversFm.Image3Click(Sender: TObject);
begin
  Close;
end;

procedure TshipCoversFm.sBitBtn3Click(Sender: TObject);
begin
  with SearchTxt do
  begin
    DBGridEh3.DataSource := DmdFm.DLbandsupervisor;
    SearchTxt.Label1.Caption := '11';
  end;

  SearchTxt.ShowModal;
end;

end.
