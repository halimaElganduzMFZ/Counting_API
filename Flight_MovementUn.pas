unit Flight_MovementUn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ExtCtrls, sPanel, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, sDBEdit,
  DBAdvGlowNavigator, sLabel, sDBLookupComboBox, sDBMemo, sEdit, sCheckBox,
  sDBCheckBox, FireDAC.VCLUI.Controls, Vcl.Buttons, sBitBtn, System.ImageList,
  Vcl.ImgList, acAlphaImageList,
  Winapi.MMSystem, inifiles, acPNG, Data.DB, MemDS, DBAccess, Uni,
  VclTee.TeEngine, VclTee.TeeProcs, VclTee.Chart,
  VclTee.Series, acImage, sDBText, dxGDIPlusClasses, sGroupBox, sDBRadioGroup;

type
  TFlight_MovementFm = class(TForm)
    sPanel1: TsPanel;
    DBGridEh3: TDBGridEh;
    sPanel2: TsPanel;
    Label6: TLabel;

    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox30: TDBCheckBox;
    DBAdvGlowNavigator1: TDBAdvGlowNavigator;
    sPanel3: TsPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    DBRadioGroup3: TDBRadioGroup;
    Label9: TLabel;
    sDBCheckBox1: TsDBCheckBox;
    FDGUIxFormsPanelTree1: TFDGUIxFormsPanelTree;
    sPanel4: TsPanel;
    Label11: TLabel;
    Label3: TLabel;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup1: TDBRadioGroup;
    captureBtn: TsBitBtn;
    sAlphaImageList1: TsAlphaImageList;
    DBRadioGroup4: TDBRadioGroup;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Label7: TLabel;
    Image1: TImage;
    Label12: TLabel;
    Image2: TImage;
    Image3: TImage;
    Query1: TUniQuery;
    Panel2: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    GroupBox1: TGroupBox;
    sDBText1: TsDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    ForEdit: TEdit;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Label22: TLabel;
    DBMemo1: TDBMemo;
    DBRadioGroup6: TDBRadioGroup;
    containerType: TEdit;
    Label10: TLabel;
    sDBMemo1: TsDBMemo;
    DBRadioGroup5: TDBRadioGroup;
    conditionTxt: TsEdit;
    sBitBtn1: TsBitBtn;
    Image8: TImage;
    Label23: TLabel;
    Label25: TLabel;
    Image9: TImage;
    Label24: TLabel;
    Label26: TLabel;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    sLabel5: TsLabel;
    sLabel6: TsLabel;
    sLabel7: TsLabel;
    sLabel8: TsLabel;
    Image7: TImage;
    Label16: TLabel;
    Label20: TLabel;
    sBitBtn2: TsBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    sBitBtn4: TsBitBtn;
    sDBRadioGroup1: TsDBRadioGroup;
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure sDBCheckBox1Change(Sender: TObject);
    procedure captureBtnClick(Sender: TObject);
    procedure DBGridEh3DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    // procedure DBAdvGlowNavigator1BtnPost(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sBitBtn3Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure DBRadioGroup2Change(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
    procedure DBRadioGroup4Change(Sender: TObject);
    procedure DBRadioGroup1Change(Sender: TObject);
    procedure DBRadioGroup5Change(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Flight_MovementFm: TFlight_MovementFm;

implementation

{$R *.dfm}

uses DmdUn, DataModuleUn, Main, MainUn;

procedure TFlight_MovementFm.BitBtn1Click(Sender: TObject);
var
  CurrentDir: string;
begin
  with DmdFm do

  begin
    LgetImagesForSubMenuCounter.ParamByName('id').Value :=
      LsubmenucounterAutoUID.Value;

    LgetImagesForSubMenuCounter.Execute;
    // ShowMessage(LgetImagesForSubMenuCounter.RecordCount.ToString()+'-'+LIMIT.ToString());
    CurrentDir := GetCurrentDir + '\harm_imgs\' +
      LgetImagesForSubMenuCounterimg.Value;
    ShowMessage(CurrentDir);

    if FileExists(CurrentDir) then
    begin
      if MessageDlg(('Do you really want to delete ' +
        ExtractFileName(CurrentDir) + '?'), mtConfirmation, [mbYes, mbNo], 0,
        mbNo) = IDYes then
        DeleteFile(CurrentDir);
    end
    else
      MessageDlg(('File ' + ExtractFileName(CurrentDir) + ' does not exist.'),
        mtConfirmation, [mbOK], 0);
  end;

end;

procedure TFlight_MovementFm.captureBtnClick(Sender: TObject);
VAR
  LIMIT: Integer;
begin
  with TIniFile.Create(ChangeFileExt(ParamStr(0), '.INI')) do
  begin
    try
      LIMIT := StrToInt(ReadString('Data', 'number_of_picture_limit', ''));
    finally
      Free; // Don't forget to free the TIniFile object
    end;
  end;
  // DBAdvGlowNavigator1BtnPost(Sender);
  with DmdFm do

  begin
    LgetImagesForSubMenuCounter.ParamByName('id').Value :=
      LsubmenucounterAutoUID.Value;

    LgetImagesForSubMenuCounter.Execute;
    // ShowMessage(LgetImagesForSubMenuCounter.RecordCount.ToString()+'-'+LIMIT.ToString());
    IF LgetImagesForSubMenuCounter.RecordCount >= LIMIT THEN

    BEGIN
      ShowMessage('·« Ì„ﬂ‰ «· ﬁ«ÿ «·„“Ìœ „‰ «·’Ê— ');
      // Close;
    END
    ELSE
    BEGIN
      Application.CreateForm(TFormMain, FormMain);

      FormMain.ShowModal;
      FormMain.Free;
    END;
  end;

end;

procedure TFlight_MovementFm.DBGridEh3DblClick(Sender: TObject);
begin

  with DmdFm do

  begin
    LgetImagesForSubMenuCounter.ParamByName('id').Value :=
      LsubmenucounterAutoUID.Value;

    LgetImagesForSubMenuCounter.Execute;
    containerType.Text := LsubmenucounterContainerType.Value;
    conditionTxt.Text := inttostr(Lsubmenucountercondition.Value);

    { if Lsubmenucounter.State = dsEdit then
      begin
      if MessageDlg('·„  ﬁ„ »«·Õ›Ÿ ø!', TMsgDlgType.mtInformation,
      [TMsgDlgBtn.mbOK, TMsgDlgBtn.mbCancel], 0) = mrOk then
      begin
      // ﬂÊœ ≈⁄«œ… «·„Õ«Ê·…
      Lsubmenucounter.Post;
      end
      else
      begin
      // ﬂÊœ «·≈·€«¡
      Lsubmenucounter.Cancel;
      end;
      end; }
  end;

end;

procedure TFlight_MovementFm.DBGridEh3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  RGBColor: TColor;
  FGBColor: TColor;
begin
  case DmdFm.Lsubmenucountercondition.Value of
    1:
      begin
        RGBColor := RGB($AF, $E1, $AF);
        DBGridEh3.Canvas.Brush.Color := RGBColor;
        DBGridEh3.Canvas.Font.Color := clBlack;
      end;

    2:
      begin
        RGBColor := RGB($FF, $62, $62);
        DBGridEh3.Canvas.Brush.Color := clred;
        DBGridEh3.Canvas.Font.Color := clBlack;

      end;

  end;

  { DBGridEh3.Canvas.TextRect(Rect, Rect.Left, Rect.Top,
    Column.Field.DisplayText);
    case DmdFm.LsubmenucounterHandling_type.Value of
    1:
    RGBColor := RGB($80, $00, $00); // Color for case 1

    2:
    RGBColor := RGB($00, $00, $B3); // Color for case 2
    else
    RGBColor := clWindow; // Default color if none matched
    end; }

  // Set the canvas properties for the specific column (e.g., column index 0)

  { if DataCol = 0 then
    begin
    DBGridEh3.Canvas.Brush.Color := RGBColor;
    DBGridEh3.Canvas.Font.Color := clWhite; // Set font color as needed
    end; }

  // Draw the cell
  DBGridEh3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFlight_MovementFm.DBRadioGroup1Change(Sender: TObject);
var
  OldValue, NewValue: string;
  RecordID: Integer;
begin

  OldValue := DmdFm.Lsubmenucounter.FieldByName('condition').AsString;
  // «” »œ· FieldName »«”„ «·Õﬁ· «·›⁄·Ì
  IF OldValue = '1' THEN
    OldValue := '„” ·„…'
  ELSE
    OldValue := '⁄Ã“';

  NewValue := DBRadioGroup1.Value;
  IF NewValue = '1' THEN
    NewValue := '„” ·„…'
  ELSE
    NewValue := '⁄Ã“';

  IF OldValue <> NewValue THEN
  BEGIN
    Edit3.Text := 'ﬂ«‰  «·ﬁÌ„… «·ﬁœÌ„… ··Õﬁ· RF «·–Ì Ì„À· ‰Ê⁄ «·„⁄«„·… : ' +
      OldValue + '   ' + ' Ê√’»Õ  «·ﬁÌ„… «·ÃœÌœ… ·Â–« «·Õﬁ· : ' + NewValue;
  END;

end;

procedure TFlight_MovementFm.DBRadioGroup2Change(Sender: TObject);
var
  OldValue, NewValue: string;
  RecordID: Integer;
begin

  OldValue := DmdFm.Lsubmenucounter.FieldByName('RF').AsString;
  // «” »œ· FieldName »«”„ «·Õﬁ· «·›⁄·Ì
  IF OldValue = '1' THEN
    OldValue := '⁄«œÌ…'
  ELSE
    OldValue := 'À·«Ã…';

  NewValue := DBRadioGroup2.Value;
  IF NewValue = '1' THEN
    NewValue := '⁄«œÌ…'
  ELSE
    NewValue := 'À·«Ã…';

  IF OldValue <> NewValue THEN
  BEGIN
    Edit1.Text := 'ﬂ«‰  «·ﬁÌ„… «·ﬁœÌ„… ··Õﬁ· RF «·–Ì Ì„À· ‰Ê⁄ «·„⁄«„·… : ' +
      OldValue + '   ' + ' Ê√’»Õ  «·ﬁÌ„… «·ÃœÌœ… ·Â–« «·Õﬁ· : ' + NewValue;
  END;
end;

procedure TFlight_MovementFm.DBRadioGroup4Change(Sender: TObject);

var
  OldValue, NewValue: string;
  RecordID: Integer;
begin

  OldValue := DmdFm.Lsubmenucounter.FieldByName('Status_type').AsString;
  // «” »œ· FieldName »«”„ «·Õﬁ· «·›⁄·Ì
  IF OldValue = '1' THEN
    OldValue := '„⁄»√…'
  ELSE
    OldValue := '›«—€…';

  NewValue := DBRadioGroup4.Value;
  IF NewValue = '1' THEN
    NewValue := '„⁄»√…'
  ELSE
    NewValue := '›«—€…';

  IF OldValue <> NewValue THEN
  BEGIN
    Edit2.Text := 'ﬂ«‰  «·ﬁÌ„… «·ﬁœÌ„… ··Õﬁ· RF «·–Ì Ì„À· ‰Ê⁄ «·„⁄«„·… : ' +
      OldValue + '   ' + ' Ê√’»Õ  «·ﬁÌ„… «·ÃœÌœ… ·Â–« «·Õﬁ· : ' + NewValue;
  END;
end;

procedure TFlight_MovementFm.DBRadioGroup5Change(Sender: TObject);

var
  OldValue, NewValue: string;
  RecordID: Integer;
begin

  OldValue := DmdFm.Lsubmenucounter.FieldByName('Handling_type').AsString;
  // «” »œ· FieldName »«”„ «·Õﬁ· «·›⁄·Ì
  if OldValue = '1' then
    OldValue := ' ›—Ì€'
  else if OldValue = '2' then
    OldValue := '‘Õ‰'
  else if OldValue = '3' then
    OldValue := ' —«‰“Ì   ›—Ì€'
  else if OldValue = '4' then
    OldValue := ' —«‰“Ì  ‘Õ‰'
  else if OldValue = '5' then
    OldValue := ' —ÕÌ·'
  else if OldValue = '6' then
    OldValue := '«·ÕœÌœ Ê«·’·»'
  else if OldValue = '7' then
    OldValue := '√Œ—Ï';

  NewValue := DBRadioGroup5.Value;
  if NewValue = '1' then
    NewValue := ' ›—Ì€'
  else if NewValue = '2' then
    NewValue := '‘Õ‰'
  else if NewValue = '3' then
    NewValue := ' —«‰“Ì   ›—Ì€'
  else if NewValue = '4' then
    NewValue := ' —«‰“Ì  ‘Õ‰'
  else if NewValue = '5' then
    NewValue := ' —ÕÌ·'
  else if NewValue = '6' then
    NewValue := '«·ÕœÌœ Ê«·’·»'
  else if NewValue = '7' then
    NewValue := '√Œ—Ï';

  IF OldValue <> NewValue THEN
  BEGIN
    Edit4.Text := 'ﬂ«‰  «·ﬁÌ„… «·ﬁœÌ„… ··Õﬁ· RF «·–Ì Ì„À· ‰Ê⁄ «·„⁄«„·… : ' +
      OldValue + '   ' + ' Ê√’»Õ  «·ﬁÌ„… «·ÃœÌœ… ·Â–« «·Õﬁ· : ' + NewValue;
  END;
end;

procedure TFlight_MovementFm.Edit1Change(Sender: TObject);
begin
  { DmdFm.Lsubmenucounter.Locate('TagNumber', '%' + Edit1.Text + '%',
    [loPartialKey]); }
end;

procedure TFlight_MovementFm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ForEdit.Text := '0';
end;

procedure TFlight_MovementFm.FormShow(Sender: TObject);

var
  SQLText: string;
  Numm: Integer;
  N1, N2, N3, N4, N5: Integer;
begin
  ForEdit.Text := '1';
  with DmdFm do
  begin
    // SQLText := 'SELECT Max(numAuto) as MN from hraktemp where NumList=' +
    // inttostr(LsubmenucounterNumMainList.Value) + '';
    //
    // // Set up the query
    // Query1.Close;
    // Query1.SQL.Text := SQLText;
    //
    // try
    // // Execute the query
    // Query1.Open;
    //
    // // Check if any results were returned
    // if not Query1.IsEmpty then
    // begin
    // while not Query1.Eof do
    // begin
    //
    // Numm := Query1.FieldByName('MN').AsInteger;
    //
    // Query1.Next;
    //
    // end;
    // end;
    // finally
    //
    // end;
    //
    // SQLText := 'SELECT  N_Amber , N_sidewalk , N_bandsupervisor , N_crane , N_craneoperator from hraktemp where numAuto= ' +
    // inttostr(Numm) + '';
    //
    // // Set up the query
    // Query1.Close;
    // Query1.SQL.Text := SQLText;
    //
    // try
    // // Execute the query
    // Query1.Open;
    //
    // // Check if any results were returned
    // if not Query1.IsEmpty then
    // begin
    // while not Query1.Eof do
    // begin
    //
    // N1 := Query1.FieldByName('N_Amber').AsInteger;
    // N2 := Query1.FieldByName('N_sidewalk').AsInteger;
    // N3 := Query1.FieldByName('N_bandsupervisor').AsInteger;
    // N4 := Query1.FieldByName('N_crane').AsInteger;
    // N5 := Query1.FieldByName('N_craneoperator').AsInteger;
    //
    // Query1.Next;
    //
    // end;
    // end;
    // finally
    //
    // end;
    //
    // ////        amber
    // SQLText := 'SELECT NameAmber  FROM amber  where NumAuto=' +
    // inttostr(N1) + '';
    //
    // // Set up the query
    // Query1.Close;
    // Query1.SQL.Text := SQLText;
    //
    // try
    // // Execute the query
    // Query1.Open;
    //
    // // Check if any results were returned
    // if not Query1.IsEmpty then
    // begin
    // while not Query1.Eof do
    // begin
    //
    // DBText2.Caption:= Query1.FieldByName('NameAmber').AsString;
    //
    // Query1.Next;
    //
    // end;
    // end;
    // finally
    //
    // end;
    //
    // ///
    // ////        SideWalk
    // SQLText := 'SELECT NameSidewalk  FROM sidewalk  where NumAuto=' +
    // inttostr(N2) + '';
    //
    // // Set up the query
    // Query1.Close;
    // Query1.SQL.Text := SQLText;
    //
    // try
    // // Execute the query
    // Query1.Open;
    //
    // // Check if any results were returned
    // if not Query1.IsEmpty then
    // begin
    // while not Query1.Eof do
    // begin
    //
    // DBText6.Caption:= Query1.FieldByName('NameSidewalk').AsString;
    //
    // Query1.Next;
    //
    // end;
    // end;
    // finally
    //
    // end;
    //
    // ///
    // ////        bandsupervisor
    // SQLText := 'SELECT NameBandSupervisor  FROM bandsupervisor where NumAuto=' +
    // inttostr(N3) + '';
    //
    // // Set up the query
    // Query1.Close;
    // Query1.SQL.Text := SQLText;
    //
    // try
    // // Execute the query
    // Query1.Open;
    //
    // // Check if any results were returned
    // if not Query1.IsEmpty then
    // begin
    // while not Query1.Eof do
    // begin
    //
    // DBText3.Caption:= Query1.FieldByName('NameBandSupervisor').AsString;
    //
    // Query1.Next;
    //
    // end;
    // end;
    // finally
    //
    // end;
    //
    // ///
    // ////        CRANE
    // SQLText := 'SELECT namecrane  FROM crane  where NumAuto=' +
    // inttostr(N4) + '';
    //
    // // Set up the query
    // Query1.Close;
    // Query1.SQL.Text := SQLText;
    //
    // try
    // // Execute the query
    // Query1.Open;
    //
    // // Check if any results were returned
    // if not Query1.IsEmpty then
    // begin
    // while not Query1.Eof do
    // begin
    //
    // DBText4.Caption:= Query1.FieldByName('namecrane').AsString;
    //
    // Query1.Next;
    //
    // end;
    // end;
    // finally
    //
    // end;
    //
    // ///
    // ////             craneoperator
    // SQLText := 'SELECT NameCraneOperator  FROM craneoperator  where NumAuto=' +
    // inttostr(N5) + '';
    //
    // // Set up the query
    // Query1.Close;
    // Query1.SQL.Text := SQLText;
    //
    // try
    // // Execute the query
    // Query1.Open;
    //
    // // Check if any results were returned
    // if not Query1.IsEmpty then
    // begin
    // while not Query1.Eof do
    // begin
    //
    // DBText5.Caption:= Query1.FieldByName('NameCraneOperator').AsString;
    //
    // Query1.Next;
    //
    // end;
    // end;
    // finally
    //
    // end;
    //
    // ///
    // ///
    //
    SQLText := 'SELECT COUNT(*) AS Count FROM submenucounter WHERE NumMainList='
      + inttostr(LsubmenucounterNumMainList.Value) +
      ' AND  (`Handling_type` =2 OR  `Handling_type` =4 )';

    // Set up the query
    Query1.Close;
    Query1.SQL.Text := SQLText;

    try
      // Execute the query
      Query1.Open;

      // Check if any results were returned
      if not Query1.IsEmpty then
      begin
        while not Query1.Eof do
        begin

          Label17.Caption := '   ' + ' ' + Query1.FieldByName('Count').AsString;

          Query1.Next;

        end;
      end;
    finally

    end;
    SQLText := 'SELECT COUNT(*) AS Count FROM submenucounter WHERE NumMainList='
      + inttostr(LsubmenucounterNumMainList.Value) +
      ' AND  (`Handling_type` =1 OR  `Handling_type` =3 OR `Handling_type` =6) ';

    // Set up the query
    Query1.Close;
    Query1.SQL.Text := SQLText;

    try
      // Execute the query
      Query1.Open;

      // Check if any results were returned
      if not Query1.IsEmpty then
      begin
        while not Query1.Eof do
        begin

          Label18.Caption := '    ' + ' ' + Query1.FieldByName('Count')
            .AsString;

          Query1.Next;

        end;
      end;
    finally

    end;
    SQLText :=
      'SELECT COUNT(*)  AS Count from submenucounter WHERE NumMainList=' +
      inttostr(LsubmenucounterNumMainList.Value) +
      ' AND  (`Handling_type` =1 OR  `Handling_type` =3 OR `Handling_type` =6 ) and `condition` =1';

    // Set up the query
    Query1.Close;
    Query1.SQL.Text := SQLText;

    try
      // Execute the query
      Query1.Open;

      // Check if any results were returned
      if not Query1.IsEmpty then
      begin
        while not Query1.Eof do
        begin

          Label19.Caption := '   ' + ' ' + Query1.FieldByName('Count').AsString;

          Query1.Next;

        end;
      end;
    finally

    end;
    SQLText :=
      'SELECT COUNT(*)  AS Count from submenucounter WHERE NumMainList=' +
      inttostr(LsubmenucounterNumMainList.Value) +
      ' AND  (`Handling_type` =2 OR  `Handling_type` =4 ) and `condition` =1';

    // Set up the query
    Query1.Close;
    Query1.SQL.Text := SQLText;

    try
      // Execute the query
      Query1.Open;

      // Check if any results were returned
      if not Query1.IsEmpty then
      begin
        while not Query1.Eof do
        begin

          Label20.Caption := '     ' + ' ' + Query1.FieldByName
            ('Count').AsString;

          Query1.Next;

        end;
      end;
    finally

    end;
    SQLText :=
      'SELECT COUNT(*) - (select  COUNT(*)  FROM submenucounter WHERE NumMainList='
      + inttostr(LsubmenucounterNumMainList.Value) +
      ' AND  (`Handling_type` =2 OR  `Handling_type` =4 )AND `condition` =1) AS Count from submenucounter WHERE NumMainList='
      + inttostr(LsubmenucounterNumMainList.Value) +
      ' AND  (`Handling_type` =2 OR  `Handling_type` =4)';

    // Set up the query
    Query1.Close;
    Query1.SQL.Text := SQLText;

    try
      // Execute the query
      Query1.Open;

      // Check if any results were returned
      if not Query1.IsEmpty then
      begin
        while not Query1.Eof do
        begin

          Label25.Caption := '   ' + Query1.FieldByName('Count')
            .AsString + '   ';

          Query1.Next;

        end;
      end;
    finally

    end;

    SQLText :=
      'SELECT COUNT(*) - (select  COUNT(*)  FROM submenucounter WHERE NumMainList='
      + inttostr(LsubmenucounterNumMainList.Value) +
      ' AND  (`Handling_type` =1 OR  `Handling_type` =3 OR `Handling_type` =6  ) AND `condition` =1) AS Count from submenucounter WHERE NumMainList='
      + inttostr(LsubmenucounterNumMainList.Value) +
      ' AND  (`Handling_type` =1 OR  `Handling_type` =3 OR `Handling_type` =6 )';

    // Set up the query
    Query1.Close;
    Query1.SQL.Text := SQLText;

    try
      // Execute the query
      Query1.Open;

      // Check if any results were returned
      if not Query1.IsEmpty then
      begin
        while not Query1.Eof do
        begin

          Label26.Caption := '   ' + Query1.FieldByName('Count')
            .AsString + '   ';

          Query1.Next;

        end;
      end;
    finally

    end;

  end;
end;

procedure TFlight_MovementFm.Image3Click(Sender: TObject);
var
  SQLText: string;
  BarSeries: TBarSeries;
  BarColor: TColor;
begin
  ForEdit.Text := '0';
  with DmdFm do
  begin
    with MainFm do
    begin
      SQLText := 'SELECT COUNT(*) AS Count, ' + 'CASE ' +
        '  WHEN RF = 1 THEN ''⁄«œÌ…'' ' + '  WHEN RF = 2 THEN ''À·«Ã…'' ' +
        'END AS RFtxt ' + 'FROM submenucounter ' + 'GROUP BY RF ' +
        'HAVING RF IS NOT NULL AND   NumMainList=' +
        DmdFm.LsortingtripnumAuto.AsString + '';

      // Set up the query
      Query1.Close;
      Query1.SQL.Text := SQLText;

      try
        // Execute the query
        Query1.Open;

        // Check if any results were returned
        if not Query1.IsEmpty then
        begin
          // Display the results
          MainFm.Chart1.SeriesList.Clear;

          BarSeries := TBarSeries.Create(Self);
          MainFm.Chart1.Legend.Font.Name := 'Tajawal';
          BarSeries.Marks.Font.Name := 'Tajawal';
          MainFm.Chart1.Legend.Font.Name := 'Tajawal';
          MainFm.Chart1.Axes.Left.Title.Font.Name := 'Tajawal';
          MainFm.Chart1.Axes.Left.LabelsFont.Name := 'Tajawal';

          // Chart1.Axes.Bottom.Title.Caption := 'RF Text';
          Chart1.Axes.Bottom.Title.Font.Name := 'Tajawal';
          Chart1.Axes.Bottom.LabelsFont.Name := 'Tajawal';

          Chart1.AddSeries(BarSeries);
          Query1.First;
          while not Query1.Eof do
          begin
            if Query1.FieldByName('RFtxt').AsString = '⁄«œÌ…' then
              BarColor := clred // Color for '⁄«œÌ…'
            else if Query1.FieldByName('RFtxt').AsString = 'À·«Ã…' then
              BarColor := clGreen; // Color for 'À·«Ã…'

            BarSeries.Add(Query1.FieldByName('Count').AsInteger,
              Query1.FieldByName('RFtxt').AsString, BarColor);

            Query1.Next;
          end;
        end
        else
        begin
          // ShowMessage('No records found.');
        end;

      except
        on E: Exception do
        begin
          // ShowMessage('An error occurred: ' + E.Message);
        end;
      end;

      Query1.Close;
      SQLText :=
        'select count(*)AS Count,CASE WHEN Status_type = 1 THEN ''„⁄»√…'' WHEN Status_type =2  THEN ''›«—€…'' end AS RFtxt FROM submenucounter GROUP BY Status_type HAVING Status_type IS NOT NULL     AND NumMainList='
        + DmdFm.LsortingtripnumAuto.AsString + '';

      // Set up the query
      Query1.Close;
      Query1.SQL.Text := SQLText;

      try
        // Execute the query
        Query1.Open;

        // Check if any results were returned
        if not Query1.IsEmpty then
        begin
          // Display the results
          Chart2.SeriesList.Clear;

          BarSeries := TBarSeries.Create(Self);
          Chart2.Legend.Font.Name := 'Tajawal';
          BarSeries.Marks.Font.Name := 'Tajawal';
          Chart2.Legend.Font.Name := 'Tajawal';
          Chart2.Axes.Left.Title.Font.Name := 'Tajawal';
          Chart2.Axes.Left.LabelsFont.Name := 'Tajawal';

          // Chart1.Axes.Bottom.Title.Caption := 'RF Text';
          Chart2.Axes.Bottom.Title.Font.Name := 'Tajawal';
          Chart2.Axes.Bottom.LabelsFont.Name := 'Tajawal';

          Chart2.AddSeries(BarSeries);
          Query1.First;
          while not Query1.Eof do
          begin
            if Query1.FieldByName('RFtxt').AsString = '„⁄»√…' then
              BarColor := clYellow // Color for '⁄«œÌ…'
            else if Query1.FieldByName('RFtxt').AsString = '›«—€…' then
              BarColor := clBlue; // Color for 'À·«Ã…'

            BarSeries.Add(Query1.FieldByName('Count').AsInteger,
              Query1.FieldByName('RFtxt').AsString, BarColor);

            Query1.Next;
          end;
        end
        else
        begin
          // ShowMessage('No records found.');
        end;

      except
        on E: Exception do
        begin
          // ShowMessage('An error occurred: ' + E.Message);
        end;
      end;

      // Query1.Close;
      // SQLText :=
      // 'SELECT COUNT(*) AS Count, CASE WHEN Handling_type = 1 THEN '' ›—Ì€'' WHEN Handling_type = 2 THEN ''‘Õ‰'' WHEN Handling_type = 3 THEN '' —«‰“Ì   ›—Ì€'' WHEN Handling_type = 4 THEN '' —«‰“Ì  ‘Õ‰'' WHEN Handling_type = 5 THEN '' —ÕÌ·'' WHEN Handling_type = 6 THEN ''«·ÕœÌœ Ê«·’·»'' WHEN Handling_type = 7 THEN ''√Œ—Ï'' ELSE ''€Ì— „Õœœ'' END AS RFtxt FROM submenucounter GROUP BY Handling_type HAVING Handling_type IS NOT NULL AND  NumMainList='+DmdFm.LsortingtripnumAuto.AsString+'';

      Query1.Close;
      SQLText := 'SELECT COUNT(*) AS Count, ' +
        'CASE WHEN Handling_type = 1 THEN '' ›—Ì€'' ' +
        'WHEN Handling_type = 2 THEN ''‘Õ‰'' ' +
        'WHEN Handling_type = 3 THEN '' —«‰“Ì   ›—Ì€'' ' +
        'WHEN Handling_type = 4 THEN '' —«‰“Ì  ‘Õ‰'' ' +
        'WHEN Handling_type = 5 THEN '' —ÕÌ·'' ' +
        'WHEN Handling_type = 6 THEN ''«·ÕœÌœ Ê«·’·»'' ' +
        'WHEN Handling_type = 7 THEN ''√Œ—Ï'' ' +
        'ELSE ''€Ì— „Õœœ'' END AS RFtxt ' + 'FROM submenucounter ' +
        'GROUP BY Handling_type ' + 'HAVING Handling_type IS NOT NULL ' +
        'AND NumMainList = ' + QuotedStr(DmdFm.LsortingtripnumAuto.AsString);

      // Set up the query
      Query1.Close;
      Query1.SQL.Text := SQLText;

      try
        // Execute the query
        Query1.Open;

        // Check if any results were returned
        if not Query1.IsEmpty then
        begin
          // Display the results
          Chart3.SeriesList.Clear;

          BarSeries := TBarSeries.Create(Self);
          Chart3.Legend.Font.Name := 'Tajawal';
          BarSeries.Marks.Font.Name := 'Tajawal';
          Chart3.Legend.Font.Name := 'Tajawal';
          Chart3.Axes.Left.Title.Font.Name := 'Tajawal';
          Chart3.Axes.Left.LabelsFont.Name := 'Tajawal';

          // Chart1.Axes.Bottom.Title.Caption := 'RF Text';
          Chart3.Axes.Bottom.Title.Font.Name := 'Tajawal';
          Chart3.Axes.Bottom.LabelsFont.Name := 'Tajawal';

          Chart3.AddSeries(BarSeries);
          Query1.First;
          while not Query1.Eof do
          begin
            if Query1.FieldByName('RFtxt').AsString = ' ›—Ì€' then
              BarColor := RGB($D4, $AF, $37) // Color for '⁄«œÌ…'
            else if Query1.FieldByName('RFtxt').AsString = '‘Õ‰' then
              BarColor := RGB($B6, $0C, $26); // Color for 'À·«Ã…'

            BarSeries.Add(Query1.FieldByName('Count').AsInteger,
              Query1.FieldByName('RFtxt').AsString, BarColor);

            Query1.Next;
          end;
        end
        else
        begin
          // ShowMessage('No records found.');
        end;

      except
        on E: Exception do
        begin
          // ShowMessage('An error occurred: ' + E.Message);
        end;
      end;

      Query1.Close;
      SQLText :=
        'SELECT COUNT(*) AS Count,CASE WHEN `condition` = 1 THEN ''„ ”·„…'' WHEN `condition` = 2 THEN ''⁄Ã“'' END AS `condition` FROM submenucounter GROUP BY `condition` HAVING `condition` IS NOT NULL   AND NumMainList='
        + DmdFm.LsortingtripnumAuto.AsString + '';
      // Set up the query
      Query1.Close;
      Query1.SQL.Text := SQLText;

      try
        // Execute the query
        Query1.Open;

        // Check if any results were returned
        if not Query1.IsEmpty then
        begin
          // Display the results
          Chart4.SeriesList.Clear;

          BarSeries := TBarSeries.Create(Self);
          Chart4.Legend.Font.Name := 'Tajawal';
          BarSeries.Marks.Font.Name := 'Tajawal';
          Chart4.Legend.Font.Name := 'Tajawal';
          Chart4.Axes.Left.Title.Font.Name := 'Tajawal';
          Chart4.Axes.Left.LabelsFont.Name := 'Tajawal';

          // Chart1.Axes.Bottom.Title.Caption := 'RF Text';
          Chart4.Axes.Bottom.Title.Font.Name := 'Tajawal';
          Chart4.Axes.Bottom.LabelsFont.Name := 'Tajawal';

          Chart4.AddSeries(BarSeries);
          Query1.First;
          while not Query1.Eof do
          begin
            if Query1.FieldByName('condition').AsString = '„ ”·„…' then
              BarColor := RGB($FB, $86, $47) // Color for '⁄«œÌ…'
            else if Query1.FieldByName('condition').AsString = '⁄Ã“' then
              BarColor := RGB($47, $BB, $FB); // Color for 'À·«Ã…'

            BarSeries.Add(Query1.FieldByName('Count').AsInteger,
              Query1.FieldByName('condition').AsString, BarColor);

            Query1.Next;
          end;
        end
        else
        begin
          // ShowMessage('No records found.');
        end;

      except
        on E: Exception do
        begin
          // ShowMessage('An error occurred: ' + E.Message);
        end;
      end;

      Query1.Close;
    end;
  end;
  Close;
end;

procedure TFlight_MovementFm.Panel1Click(Sender: TObject);
begin
  Close;
end;

procedure TFlight_MovementFm.sBitBtn1Click(Sender: TObject);
begin
  DBRadioGroup5.Enabled := true;
end;

procedure TFlight_MovementFm.sBitBtn2Click(Sender: TObject);
begin
  DBRadioGroup2.Enabled := true;
end;

procedure TFlight_MovementFm.sBitBtn3Click(Sender: TObject);
begin
  DBRadioGroup1.Enabled := true;
end;

procedure TFlight_MovementFm.sBitBtn4Click(Sender: TObject);
begin
  DBRadioGroup4.Enabled := true;
end;

procedure TFlight_MovementFm.sDBCheckBox1Change(Sender: TObject);
var
  i: Integer;

begin
  IF DmdFm.Lsubmenucounter.State=dsEdit THEN
  BEGIN
    if (DmdFm.LsubmenucounterHandling_type.Value = 2) or
      (DmdFm.LsubmenucounterHandling_type.Value = 4) then
    begin
      sDBCheckBox1.Checked := false;
      DBCheckBox26.Enabled := false;
      DBCheckBox30.Enabled := false;
      DBCheckBox6.Enabled := false;
      DBCheckBox25.Enabled := false;
      DBCheckBox24.Enabled := false;
      DBCheckBox23.Enabled := false;
      DBCheckBox22.Enabled := false;
      DBCheckBox7.Enabled := false;
      DBCheckBox5.Enabled := false;
      DBCheckBox4.Enabled := false;
      DBCheckBox3.Enabled := false;
      DBRadioGroup3.Enabled := false;

      captureBtn.Enabled := false;

      Raise Exception.Create('›Ì ‰Ê⁄ «·‘Õ‰ ·« ÌÊÃœ ÷——');

    end;
  END;
  if sDBCheckBox1.Checked = true then
  begin
    DBCheckBox26.Enabled := true;
    DBCheckBox30.Enabled := true;
    DBCheckBox6.Enabled := true;
    DBCheckBox25.Enabled := true;
    DBCheckBox24.Enabled := true;
    DBCheckBox23.Enabled := true;
    DBCheckBox22.Enabled := true;
    DBCheckBox7.Enabled := true;
    DBCheckBox5.Enabled := true;
    DBCheckBox4.Enabled := true;
    DBCheckBox3.Enabled := true;
    DBRadioGroup3.Enabled := true;

    captureBtn.Enabled := true;



    // DBCheckBox5.Checked := true;

    // DBRadioGroup3.ItemIndex := 1;
    if (DmdFm.Lsubmenucounter.State = dsEdit) then
    begin
      DmdFm.LsubmenucounterCauseDamage.Value := 2;
      DmdFm.Lsubmenucounterbruises.Value := true;
    end;

    // showMessage(IntToStr( DBRadioGroup3.Items.Count));
    // Iterate through each item in the DBRadioGroup3

  end
  else if sDBCheckBox1.Checked = false then
  begin
    DBCheckBox26.Enabled := false;
    DBCheckBox30.Enabled := false;
    DBCheckBox6.Enabled := false;
    DBCheckBox25.Enabled := false;
    DBCheckBox24.Enabled := false;
    DBCheckBox23.Enabled := false;
    DBCheckBox22.Enabled := false;
    DBCheckBox7.Enabled := false;
    DBCheckBox5.Enabled := false;
    DBCheckBox4.Enabled := false;
    DBCheckBox3.Enabled := false;
    DBRadioGroup3.Enabled := false;

    captureBtn.Enabled := false;
  end;

end;

end.
