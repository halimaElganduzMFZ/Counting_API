unit shiftsUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls,
  sDBLookupComboBox, Vcl.StdCtrls, Vcl.Mask, sDBEdit, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, DBAdvNavigator, acPNG, DBAdvGlowNavigator, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinTheBezier, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinWXI, dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit,
  cxSpinEdit, cxTimeEdit, cxDBEdit, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons,
  sBitBtn, System.ImageList, Vcl.ImgList, acAlphaImageList, sGroupBox,
  sDBRadioGroup, sLabel, sDBMemo, sMaskEdit, sCustomComboEdit, sToolEdit,
  sDBDateEdit;

type
  TshiftsFm = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    DBRadioGroup1: TDBRadioGroup;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image1: TImage;
    Image3: TImage;
    Label7: TLabel;
    DBAdvGlowNavigator1: TDBAdvGlowNavigator;
    sDBEdit2: TsDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    cxDBTimeEdit1: TcxDBTimeEdit;
    cxDBTimeEdit2: TcxDBTimeEdit;
    Query1: TUniQuery;
    sAlphaImageList2: TsAlphaImageList;
    DBEdit1: TDBEdit;
    Panel2: TPanel;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup5: TDBRadioGroup;
    sLabel8: TsLabel;
    sLabel7: TsLabel;
    sLabel6: TsLabel;
    sLabel5: TsLabel;
    sLabel4: TsLabel;
    sLabel3: TsLabel;
    sLabel2: TsLabel;
    sLabel1: TsLabel;
    sLabel9: TsLabel;
    DBGridEh1: TDBGridEh;
    sDBMemo1: TsDBMemo;
    GroupBox2: TGroupBox;
    DBGridEh2: TDBGridEh;
    sDBEdit1: TsDBEdit;
    Edit1: TEdit;
    Query2: TUniQuery;
    Label1: TLabel;
    sDBDateEdit1: TsDBDateEdit;
    procedure FormShow(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure DBGridEh2DblClick(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  shiftsFm: TshiftsFm;

implementation

{$R *.dfm}

uses DataModuleUn, DmdUn, UFEnterPass, Unit14, ContainerSearchFrm;

procedure TshiftsFm.DBGridEh2DblClick(Sender: TObject);
begin
  with DmdFm do
  begin
    LshipShiftsContainer_ID.Value := SHIPSHIFTSSSSContainer_ID.Value;
    LshipShiftscontainertype.Value := SHIPSHIFTSSSScontainertype.Value;
    LshipShiftstype1.Value:= SHIPSHIFTSSSStype1.Value;
    LshipShiftstype2.Value:= SHIPSHIFTSSSStype1.Value;
  end;
end;

procedure TshiftsFm.DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
var
  SQLText: string;
  Numm: Integer;
  RGBColor: TColor;
  FGBColor: TColor;
begin



// case DmdFm.LshipShiftsnumOFVisible.Value of
//    0:
//      begin
//
//        DBGridEh2.Canvas.Brush.Color := clred;
//        DBGridEh2.Canvas.Font.Color := clWhite;
//      end;
//
//    1:
//      begin
//
//        DBGridEh2.Canvas.Brush.Color := clWebDarkOrange;
//        DBGridEh2.Canvas.Font.Color := clWhite;
//
//      end;
//    2:
//      begin
//
//        DBGridEh2.Canvas.Brush.Color := clGreen;
//        DBGridEh2.Canvas.Font.Color := clWhite;
//
//      end;
//
//  end;
//     DBGridEh2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
////    DmdFm.LshipShifts.Refresh;
end;

procedure TshiftsFm.FormShow(Sender: TObject);
var
  SQLText: string;
  Numm: Integer;
  survivor: Integer;
  i: Integer;
  survivorStr: String;
  idx: TAdvNavigateBtn;
begin
  sDBMemo1.TextHint := '«œŒ· „·«Õ«Ÿ ﬂ Â‰« ....';
  with DmdFm do
  begin

    // Mid.Text := LsortingtripAutoUID.Value;


    SQLText := 'SELECT Max(numAuto) as MN from hraktemp where NumList=' +
      IntToStr(LsortingtripnumAuto.Value) + '';

    // Set up the query
    shiftsFm.Query1.Close;
    shiftsFm.Query1.SQL.Text := SQLText;

    // try
    // Execute the query
    shiftsFm.Query1.Execute;

    // Check if any results were returned
    if not shiftsFm.Query1.IsEmpty then
    begin
      while not shiftsFm.Query1.Eof do
      begin

        Numm := shiftsFm.Query1.FieldByName('MN').AsInteger;
         //ShowMessage( Query1.Connection.Database);
        shiftsFm.Query1.Next;

      end;
    end;
    // finally
    //
    // end;
    SQLText :=
      'SELECT  N_Amber , N_sidewalk , N_bandsupervisor , N_crane , N_craneoperator from hraktemp where numAuto= '
      + IntToStr(Numm) + '';

    // Set up the query
    shiftsFm.Query1.Close;
    shiftsFm.Query1.SQL.Text := SQLText;

    // try
    // Execute the query
    shiftsFm.Query1.Open;

    // Check if any results were returned
    if not shiftsFm.Query1.IsEmpty then
    begin
      while not shiftsFm.Query1.Eof do
      begin

        survivor := shiftsFm.Query1.FieldByName('N_bandsupervisor').AsInteger;
        // LshipShiftsN_bandsupervisor.Value:= survivor;
        shiftsFm.Query1.Next;

      end;
    end;

    // finally
    //
    // end;
    SQLText := 'SELECT  NameBandSupervisor from bandsupervisor where NumAuto=' +
      IntToStr(survivor) + '';

    // Set up the query
    shiftsFm.Query1.Close;
    shiftsFm.Query1.SQL.Text := SQLText;

    // try
    // Execute the query
    shiftsFm.Query1.Open;

    // Check if any results were returned
    if not shiftsFm.Query1.IsEmpty then
    begin
      while not shiftsFm.Query1.Eof do
      begin

        survivorStr := shiftsFm.Query1.FieldByName('NameBandSupervisor').Value;
        // survivorTxt.Text := survivorStr;
        shiftsFm.Query1.Next;

      end;
    end;

    // finally
    //
    // end;
  end;

end;

procedure TshiftsFm.Image3Click(Sender: TObject);
begin
  Close;
end;

procedure TshiftsFm.sBitBtn1Click(Sender: TObject);
begin

  ContainerSrchFm.ShowModal;
end;

procedure TshiftsFm.sBitBtn3Click(Sender: TObject);
begin
  with SearchTxt do
  begin
    DBGridEh3.DataSource := DmdFm.DLbandsupervisor;
    SearchTxt.Label1.Caption := '9';
  end;

  SearchTxt.ShowModal;
end;

end.
