unit ship_starts_and_stops;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, acPNG, Vcl.ExtCtrls, Vcl.StdCtrls,
  sLabel, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.Mask, sMaskEdit, sCustomComboEdit, sToolEdit,
  sDBDateEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, cxTimeEdit, cxDBEdit, sPanel,
  sDBNavigator, Vcl.DBCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, dxGDIPlusClasses, sEdit,
  dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinWXI,
  dxSkinXmas2008Blue;

type
  TStarts_And_Stops_QueryFm = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    cxDBTimeEdit1: TcxDBTimeEdit;
    cxDBTimeEdit2: TcxDBTimeEdit;
    sDBDateEdit1: TsDBDateEdit;
    sDBDateEdit2: TsDBDateEdit;
    sDBNavigator1: TsDBNavigator;
    DBRadioGroup5: TDBRadioGroup;
    DBGridEh1: TDBGridEh;
    Label3: TLabel;
    sEdit1: TsEdit;
    Image1: TImage;
    Image2: TImage;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    procedure Image3Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Starts_And_Stops_QueryFm: TStarts_And_Stops_QueryFm;

implementation

{$R *.dfm}

uses DataModuleUn, DmdUn;

procedure TStarts_And_Stops_QueryFm.DBGridEh1DblClick(Sender: TObject);
begin
sEdit1.Text:= DmdFm.Starts_And_Stops_QueryAutoUID.Value;
end;

procedure TStarts_And_Stops_QueryFm.FormShow(Sender: TObject);
begin
  sEdit1.Text := DmdFm.LsortingtripAutoUID.Value ;
end;

procedure TStarts_And_Stops_QueryFm.Image2Click(Sender: TObject);
begin
CLOSE;
end;

procedure TStarts_And_Stops_QueryFm.Image3Click(Sender: TObject);
begin
close;
end;

end.
