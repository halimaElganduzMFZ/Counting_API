unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ExtCtrls, sPanel, Vcl.StdCtrls, Vcl.DBCtrls, sDBMemo, DBAdvGlowNavigator,
  Vcl.Mask, DBCtrlsEh, Vcl.ComCtrls,
  System.ImageList, Vcl.ImgList, acAlphaImageList, acImage, Vcl.Buttons, sBitBtn,
  AdvDateTimePicker, AdvDBDateTimePicker, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlueprint, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2007Black,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinWXI, cxTextEdit, cxMaskEdit, cxSpinEdit, cxTimeEdit,
  cxDBEdit, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringtime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, acPNG,
  sGroupBox, sLabel;
   type
  TForm2 = class(TForm)
    DBGridEh1: TDBGridEh;
    sPanel1: TsPanel;
    DBRadioGroup3: TDBRadioGroup;
    Label9: TLabel;
    GroupBox1: TGroupBox;
    DBAdvGlowNavigator1: TDBAdvGlowNavigator;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
    sAlphaImageList1: TsAlphaImageList;
    DBRadioGroup1: TDBRadioGroup;
    sGroupBox1: TsGroupBox;
    sDBMemo1: TsDBMemo;
    GroupBox2: TGroupBox;
    sImage1: TsImage;
    Image3: TImage;
    cxDBTimeEdit1: TcxDBTimeEdit;
    cxDBTimeEdit2: TcxDBTimeEdit;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    sLabel10: TsLabel;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    sLabel5: TsLabel;
    sLabel6: TsLabel;
    sLabel7: TsLabel;
    sLabel8: TsLabel;
    sLabel9: TsLabel;
   // cxDBTimeEdit1: TcxDBTimeEdit;
  //  cxDBTimeEdit2: TcxDBTimeEdit;

    procedure FormShow(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses DmdUn;

procedure TForm2.FormShow(Sender: TObject);
begin
 sImage1.BringToFront;
DBMemo1.Text:='1';
end;

procedure TForm2.Image3Click(Sender: TObject);
begin
close;
end;

procedure TForm2.sBitBtn2Click(Sender: TObject);
begin
Close;
end;

end.
