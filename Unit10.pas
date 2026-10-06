unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.StdCtrls, Vcl.ExtCtrls, DBAdvGlowNavigator, Vcl.DBCtrls, sDBMemo,
  System.ImageList, Vcl.ImgList, acAlphaImageList, acImage, Vcl.Buttons,
  sBitBtn,
  acPNG, sMemo, Data.DB, MemDS, DBAccess, Uni, sLabel;

type
  TForm10 = class(TForm)
    DBGridEh1: TDBGridEh;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    sAlphaImageList1: TsAlphaImageList;
    sImage1: TsImage;
    Image3: TImage;
    sBitBtn2: TsBitBtn;
    sBitBtn3: TsBitBtn;
    sBitBtn4: TsBitBtn;
    sBitBtn5: TsBitBtn;
    GetKey: TUniQuery;
    DBAdvGlowNavigator1: TDBAdvGlowNavigator;
    sDBMemo1: TsDBMemo;
    sLabel10: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sLabel1: TsLabel;
    sLabel9: TsLabel;
    sLabel4: TsLabel;
    procedure sBitBtn2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
    procedure sBitBtn5Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

uses DataModuleUn, DmdUn;

procedure TForm10.DBGridEh1DblClick(Sender: TObject);
begin
//sMemo1.Text:=DmdFm.LNotesForThisShipNotes.Value;
end;

procedure TForm10.Image3Click(Sender: TObject);
begin
  close;
end;

procedure TForm10.sBitBtn2Click(Sender: TObject);
var
  uuid: String;
begin
  with DmdFm do
  begin
    GetKey.close;
    GetKey.SQL.Clear;
    GetKey.SQL.Text := 'CALL counting.createNewKey(@new_uuid)';

    // Execute the stored procedure
    GetKey.ExecSQL;

    // Retrieve the value of the output parameter
    GetKey.SQL.Text := 'SELECT @new_uuid AS new_uuid';
    GetKey.Open;

    // Check if the query returned a result
    if not GetKey.IsEmpty then
    begin
      uuid := GetKey.FieldByName('new_uuid').AsString;
      //DmdFm.LNotesForThisShip.FieldByName('AutoUID').AsString := uuid;
    end
    else
      uuid := '';

  {  LNotesForThisShip.Insert;
    LNotesForThisShipAutoUID.Value :=uuid;
    LNotesForThisShipNotes.Value:=sMemo1.Text;
    LNotesForThisShipEnter_User.Value:=DmdFm.Perm.FieldByName('UserName').AsString;
    LNotesForThisShipEnter_Date.Value:=now;
    LNotesForThisShipM_AutoUID.Value:= LsortingtripAutoUID.Value;
    LNotesForThisShipisUpdated.Value:=0;
    LNotesForThisShip.Post; }

  end;

end;

procedure TForm10.sBitBtn3Click(Sender: TObject);
var
 uuid:String;
begin
with DmdFm do
  begin
    GetKey.close;
    GetKey.SQL.Clear;
    GetKey.SQL.Text := 'CALL counting.createNewKey(@new_uuid)';

    // Execute the stored procedure
    GetKey.ExecSQL;

    // Retrieve the value of the output parameter
    GetKey.SQL.Text := 'SELECT @new_uuid AS new_uuid';
    GetKey.Open;

    // Check if the query returned a result
    if not GetKey.IsEmpty then
    begin
      uuid := GetKey.FieldByName('new_uuid').AsString;
      //DmdFm.LNotesForThisShip.FieldByName('AutoUID').AsString := uuid;
    end
    else
      uuid := '';

  {  LNotesForThisShip.edit;
    LNotesForThisShipAutoUID.Value :=uuid;
    LNotesForThisShipNotes.Value:=sMemo1.Text;
    LNotesForThisShipEnter_User.Value:=DmdFm.Perm.FieldByName('UserName').AsString;
    LNotesForThisShipEnter_Date.Value:=now;
    LNotesForThisShipM_AutoUID.Value:= LsortingtripAutoUID.Value;
    LNotesForThisShipisUpdated.Value:=1;
    LNotesForThisShip.Post;  }
  end;
end;

procedure TForm10.sBitBtn4Click(Sender: TObject);
begin
with DmdFm do
  begin
   LNotesForThisShip.Delete;
   LNotesForThisShip.Refresh;

  end;
end;

procedure TForm10.sBitBtn5Click(Sender: TObject);
begin
//sMemo1.Text:='';
end;

end.
