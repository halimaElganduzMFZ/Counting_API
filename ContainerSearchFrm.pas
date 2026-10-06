unit ContainerSearchFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, DB,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TContainerSrchFm = class(TForm)
    DBGridEh1: TDBGridEh;
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ContainerSrchFm: TContainerSrchFm;

implementation

{$R *.dfm}

uses DmdUn, shiftsUnit;

procedure TContainerSrchFm.DBGridEh1DblClick(Sender: TObject);
begin
  if (DmdFm.LshipShifts.State = dsInsert) or (DmdFm.LshipShifts.State = dsEdit)
  then
  begin
    DmdFm.LshipShiftsContainer_ID.Value := DmdFm.SHIPSHIFTSSSSContainer_ID.Value;
    close;
  end
  else
    showMessage('«› Õ “— «· ⁄œÌ· √Ê «·«÷«›… √Ê·« „‰ «·Ê«ÃÂ… «·”«»ﬁ…');

end;

procedure TContainerSrchFm.FormShow(Sender: TObject);
begin
  with DmdFm do
  begin
    SHIPSHIFTSSSS.close;
    //ShowMessage(LsortingtripnumAuto.AsString) ;
    SHIPSHIFTSSSS.ParamByName('VNum').Value := LsortingtripAutoUID.Value;
    SHIPSHIFTSSSS.Execute;
  end;
end;

end.
