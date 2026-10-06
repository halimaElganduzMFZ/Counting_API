unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ExtCtrls, Vcl.StdCtrls, acPNG, System.ImageList, Vcl.ImgList,
  acAlphaImageList;

type
  TForm9 = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Label7: TLabel;
    Image1: TImage;
    Image2: TImage;
    sAlphaImageList1: TsAlphaImageList;
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

uses DataModuleUn, DmdUn;

procedure TForm9.Image2Click(Sender: TObject);
begin
Close;
end;

end.
