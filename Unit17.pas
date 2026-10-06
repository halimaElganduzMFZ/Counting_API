unit Unit17;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, acPNG,
  sGroupBox, Data.DB, MemDS, DBAccess, Uni;

type
  TForm17 = class(TForm)
    Panel2: TPanel;
    Label7: TLabel;
    Image1: TImage;
    sGroupBox1: TsGroupBox;
    Label1: TLabel;
    Image2: TImage;
    Label2: TLabel;
    Image3: TImage;
    Image5: TImage;
    Label4: TLabel;
    Image7: TImage;
    Label6: TLabel;
    Query1: TUniQuery;
    sGroupBox2: TsGroupBox;
    Image8: TImage;
    Label23: TLabel;
    Image4: TImage;
    Image6: TImage;
    Image9: TImage;
    L1: TLabel;
    Label12: TLabel;
    L3: TLabel;
    L4: TLabel;
    L2: TLabel;
    Label11: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Image10: TImage;
    procedure FormShow(Sender: TObject);
    procedure Image10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form17: TForm17;

implementation

{$R *.dfm}

uses DataModuleUn, DmdUn;

procedure TForm17.FormShow(Sender: TObject);
var
  SQLText: string;
begin
/////////////////// ÍÇæíÉ 20 /////////////
  SQLText :=
    'SELECT COUNT(*) AS L1 FROM submenucounter WHERE NumMainList=:NM AND  (Handling_type = 1 or Handling_type= 3 or Handling_type=6) and  Status_type=1 ';

  // Set up the query
  Query1.Close;
  Query1.SQL.Text := SQLText;

  try
    // Execute the query
    Query1.ParamByName('NM').Value := DmdFm.LsortingtripnumAuto.Value;
    Query1.Open;

    // Check if any results were returned
    if not Query1.IsEmpty then
    begin
      while not Query1.Eof do
      begin

        L1.Caption := '   ' + ' ' + Query1.FieldByName('L1').AsString;

        Query1.Next;

      end;
    end;
  finally

  end;
  SQLText :=
    'SELECT COUNT(*) AS L2 FROM submenucounter WHERE NumMainList=:NM AND  (Handling_type = 1 or Handling_type= 3 or Handling_type=6) and  Status_type=2 ';

  // Set up the query
  Query1.Close;
  Query1.SQL.Text := SQLText;

  try
    // Execute the query
    Query1.ParamByName('NM').Value := DmdFm.LsortingtripnumAuto.Value;
    Query1.Open;

    // Check if any results were returned
    if not Query1.IsEmpty then
    begin
      while not Query1.Eof do
      begin

        L2.Caption := '   ' + ' ' + Query1.FieldByName('L2').AsString;

        Query1.Next;

      end;
    end;
  finally

  end;
  SQLText :=
    'SELECT COUNT(*) AS L3 FROM submenucounter WHERE NumMainList=:NM AND  (Handling_type = 2 or Handling_type= 4 ) and  Status_type=2 ';
  // Set up the query
  Query1.Close;
  Query1.SQL.Text := SQLText;

  try
    // Execute the query
    Query1.ParamByName('NM').Value := DmdFm.LsortingtripnumAuto.Value;
    Query1.Open;

    // Check if any results were returned
    if not Query1.IsEmpty then
    begin
      while not Query1.Eof do
      begin

        L3.Caption := '   ' + ' ' + Query1.FieldByName('L3').AsString;

        Query1.Next;

      end;
    end;
  finally

  end;

  SQLText :=
    'SELECT COUNT(*) AS L4 FROM submenucounter WHERE NumMainList=:NM AND  (Handling_type = 2 or Handling_type= 4) and  Status_type=1 ';
  // Set up the query
  Query1.Close;
  Query1.SQL.Text := SQLText;

  try
    // Execute the query
    Query1.ParamByName('NM').Value := DmdFm.LsortingtripnumAuto.Value;
    Query1.Open;

    // Check if any results were returned
    if not Query1.IsEmpty then
    begin
      while not Query1.Eof do
      begin

        L4.Caption := '   ' + ' ' + Query1.FieldByName('L4').AsString;

        Query1.Next;

      end;
    end;
  finally

  end;




  ///

end;

procedure TForm17.Image10Click(Sender: TObject);
begin
Close;
end;

end.
