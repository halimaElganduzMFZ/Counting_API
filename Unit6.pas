unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ExtCtrls, Vcl.StdCtrls, acPNG;

type
  TForm6 = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Label7: TLabel;
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses DataModuleUn, DmdUn;

procedure TForm6.Image2Click(Sender: TObject);
begin
close;
end;

end.
