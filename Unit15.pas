unit Unit15;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, sGroupBox, Vcl.StdCtrls, sLabel,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, acPNG, Vcl.ExtCtrls;

type
  TContainrtLists = class(TForm)
    GroupBox1: TGroupBox;
    sGroupBox1: TsGroupBox;
    sGroupBox3: TsGroupBox;
    sLabel3: TsLabel;
    DBGridEh2: TDBGridEh;
    Image3: TImage;
    DBGridEh1: TDBGridEh;
    sGroupBox2: TsGroupBox;
    sLabel1: TsLabel;
    procedure Image3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ContainrtLists: TContainrtLists;

implementation

{$R *.dfm}

uses DataModuleUn;

procedure TContainrtLists.Image3Click(Sender: TObject);
begin
CLOSE;
end;

end.
