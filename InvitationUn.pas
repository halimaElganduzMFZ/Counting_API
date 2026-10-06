unit InvitationUn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, DBGrids, Db, Uni, DBAccess,
  MemDS,
  Mask, DBCtrls, dbcgrids, DADump, UniDump, Gauges, inifiles, DAScript,
  UniScript,
  FileCtrl, ShellAPI, Menus, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  CRGrid, ImgList, System.ImageList, sPanel, sEdit, acAlphaImageList, sBitBtn,
  sLabel, sDBText, Vcl.Imaging.jpeg, acImage, sMemo, DBAdvGlowNavigator,
  sMaskEdit, sCustomComboEdit, sToolEdit, sDBDateEdit,
  System.Variants, AdvPanel, acPNG, acProgressBar,
  Vcl.Imaging.GIFImg, VclTee.TeEngine, VclTee.TeeProcs, VclTee.Chart,
  VclTee.Series;

type

  TInvitationFm = class(TForm)
    rEADYfORsERVER: TDBGridEh;
    sAlphaImageList1: TsAlphaImageList;
    sBitBtn4: TsBitBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    stopsForServer: TDBGridEh;
    GroupBox3: TGroupBox;
    sBitBtn1: TsBitBtn;
    GroupBox4: TGroupBox;
    shipNotes: TDBGridEh;
    UniScript1: TUniScript;
    SourceQuery: TUniScript;
    Panel1: TPanel;
    Label2: TLabel;
    sImage1: TsImage;
    Image2: TImage;
    Image1: TImage;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    loadPanel: TAdvPanel;
    Label1: TLabel;
    sProgressBar1: TsProgressBar;
    sBitBtn2: TsBitBtn;
    M: TMemo;
    procedure DBGridEh2DblClick(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InvitationFm: TInvitationFm;

implementation

{$R *.dfm}

uses DmdUn, DataModuleUn, MainUn, Flight_MovementUn;

procedure TInvitationFm.DBGridEh2DblClick(Sender: TObject);
begin
  with DataModuleFm do
  begin

    Vsubmenucounter.Close;
    Vsubmenucounter.ParamByName('VNum').Value := VsortingtripnumAuto.Value;
    Vsubmenucounter.Execute;

  end;

end;

procedure TInvitationFm.FormShow(Sender: TObject);
var
  GIFImage: TGIFImage;
  FolderPath: string;
begin

  // GIFImage := TGIFImage.Create;
  // try
  // FolderPath := GetCurrentDir + '\icons\' + 'icon.gif';
  //
  // GIFImage.LoadFromFile(FolderPath);
  // sImage1.Picture.Assign(GIFImage);
  //
  // if GIFImage.Animate then
  // GIFImage.Animate := True;
  //
  // //sImage1.AutoSize := True;
  // sImage1.Center := True;
  // finally
  // GIFImage.Free;
  // end;
  with DmdFm do

  begin
    Label2.Caption := '„⁄·Ê„…  : ' + '«·»Ì«‰«  «·„ «Õ… ·· —ÕÌ· «· «»⁄… ··”›Ì‰… '
      + LsortingtripShipName.Value;
  end;
end;

procedure TInvitationFm.Image1Click(Sender: TObject);
var
  SQLText: string;
  BarSeries: TBarSeries;
  BarColor: TColor;
begin
  with DmdFm do
  begin
    with MainFm do
    begin
      SQLText := 'SELECT COUNT(*) AS Count, ' + 'CASE ' +
        '  WHEN RF = 1 THEN ''⁄«œÌ…'' ' + '  WHEN RF = 2 THEN ''À·«Ã…'' ' +
        'END AS RFtxt ' + 'FROM submenucounter ' + 'GROUP BY RF ' +
        'HAVING RF IS NOT NULL';

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
        'select count(*)AS Count,CASE WHEN Status_type = 1 THEN ''„⁄»√…'' WHEN Status_type =2  THEN ''›«—€…'' end AS RFtxt FROM submenucounter GROUP BY Status_type HAVING Status_type IS NOT NULL';

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

      Query1.Close;
      SQLText :=
        'select count(*)AS Count,CASE WHEN Handling_type = 1 THEN '' ›—Ì€'' WHEN Handling_type =2  THEN ''‘Õ‰'' end AS RFtxt FROM submenucounter GROUP BY Handling_type HAVING Handling_type IS NOT NULL';

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
        'SELECT COUNT(*) AS Count,CASE WHEN `condition` = 1 THEN ''„ ”·„…'' WHEN `condition` = 2 THEN ''⁄Ã“'' END AS `condition` FROM submenucounter GROUP BY `condition` HAVING `condition` IS NOT NULL;';
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

procedure TInvitationFm.Image2Click(Sender: TObject);
begin
  // close;
end;

procedure TInvitationFm.sBitBtn1Click(Sender: TObject);

var
  VProviderName, VUserNamew, VPasswordw, VServerw, VDatabasew, VPortw: string;
  SMSServer: String;
  I, J: Integer;
  SQLText, CurrentDir, DestinationPath: string;

begin

  if Application.MessageBox
    ('√‰  «·¬‰ »’œœ  —ÕÌ· ﬂ· «·»Ì«‰«  „‰ ÃÂ«“ﬂ Ê—›⁄Â« «·Ï «·—∆Ì”Ì ° Â· √‰  „ √ﬂœ „‰ ≈ „«„ «·⁄„·Ì… ø',
    ' ‰»ÌÂ', 1 + MB_DEFBUTTON2) = 2 then
    raise EAbort.Create('');
  // loadPanel.Visible := True;
  // showMessage('vvvvv');
  // showMessage('” »œ√ ⁄„·Ì…  —ÕÌ· «·»Ì«‰« ');
  with tinifile.Create(changefileext(paramstr(0), '.INI')) do
  begin
    VProviderName := readstring('Data',
      'ProviderName  for Server Alayaradat', '');
    VUserNamew := readstring('Data', 'Username for Server Alayaradat', '');
    VPasswordw := readstring('Data', 'Password for Server Alayaradat', '');
    VServerw := readstring('Data', 'Server for Server Alayaradat', '');
    VDatabasew := readstring('Data', 'Database for Server Alayaradat', '');
    VPortw := readstring('Data', 'Port for Server Alayaradat', '');
    DestinationPath := readstring('Data', 'Server_Folder_Path_For_Images', '');

    // finally

    with DataModuleFm, DmdFm do
    begin
      sBitBtn4Click(Sender);
      SourceQuery.SQL.Text := 'Delete  from shipnotes WHERE M_AutoUID=''' +
        LsortingtripAutoUID.Value + ''';' +
        'Delete from stops WHERE M_AutoUID=''' + LsortingtripAutoUID.Value +
        ''' ; ' + ' Delete from shipcovers WHERE M_AutoUID=''' +
        LsortingtripAutoUID.Value +
        '''; Delete from shipshifts WHERE  M_AutoUID=''' +
        LsortingtripAutoUID.Value +
        '''; Delete from submenucounter WHERE NumMainList=' +
        inttostr(LsortingtripnumAuto.Value) + '; ' +
        'Delete from  sortingtrip where numAuto=' +
        inttostr(LsortingtripnumAuto.Value) + ';' +
        'Delete from  ship_starts_and_ends where AutoUID=''' +
        LsortingtripAutoUID.Value +  ''' ; ';
      SourceQuery.Execute;

      UniDump1.tablenames := 'shipnotes' + ' ; ' + 'stops' + ' ; ' +
        'shipcovers' + ' ; ' + 'shipshifts' + ';submenucounter;' +
        'sortingtrip ; ' + 'ship_starts_and_ends' + ' ; ';
      UniDump1.BackupToFile('DmdFm..sql');
      UniScript1.SQL.LoadFromFile('DmdFm..sql');
      SQLText := UniScript1.SQL.Text;

      SourceQuery.SQL.Text := SQLText;
      SourceQuery.Execute;
      // lsubmenucounterForServer.Refresh;
      // LStopsForShipsForServer.Refresh;
      // Lsortingtrip.Refresh;
      rEADYfORsERVER.Refresh;
      stopsForServer.Refresh;
      // lsubmenucounterForServer.Refresh;
      // lsubmenucounterForServer.Refresh;
      LLsubmenucounterForServerForEdit.Refresh;
      LNotesForThisShipForShowInList.Refresh;
      rEADYfORsERVER.Refresh;
      stopsForServer.Refresh;
      shipNotes.Refresh;

      LshipcoversForServer.Refresh;
      LshipShiftsForServer.Refresh;
      Lsortingtrip.Close;
      Lsortingtrip.ParamByName('VNum').Value := 1;
      Lsortingtrip.Execute;

      Lsortingtrip.Refresh;

    end;

  end

end;

procedure TInvitationFm.sBitBtn2Click(Sender: TObject);
var
  S, T: String;
  s1: String;
  L, CD, Des, Ds: string;
  Yd, Md, Dd: word;
begin

  with tinifile.Create(changefileext(paramstr(0), '.INI')) do
    try
      CD := readstring('Data', 'CopyDir', '');
      Des := readstring('Data', 'CopyDir Destenation', '');

    finally
    end;

  try

    s1 := DateToStr(Date);

    s1 := Des + '\Copyes\D' + s1;
    while Pos('/', s1) > 0 do
      s1[Pos('/', s1)] := '.';

    if not DirectoryExists(s1) then
      CreateDir(s1);
    // if  CreateDir(S1)  then
    begin
      M.Lines.Clear;
      M.Lines.Add('COPY ' + CD + '    ' + s1 + '/y');
      M.Lines.SaveToFile(Des + '\Copyes\CpyFls.Bat');
    end;
    ShellExecute(handle, 'open', 'CpyFls.Bat', '', PChar(Des + '\Copyes'),
      SW_MINIMIZE);
  except
  end;
  // ShowMessage('');

  S := DateToStr(Date);
  T := DateTimeToStr(Now);
  S := Des + '\Copyes\D' + S;
  while Pos('/', S) > 0 do
    S[Pos('/', S)] := '_';
  while Pos('/', T) > 0 do
    T[Pos('/', T)] := '_';
  while Pos(':', T) > 0 do
    T[Pos(':', T)] := '_';

  if not DirectoryExists(S) then
    CreateDir(S);

  DmdFm.UniDump1.BackupToFile(S + '\Local' + T + '.sql');

end;

procedure TInvitationFm.sBitBtn4Click(Sender: TObject);
var
  VProviderName, VUserNamew, VPasswordw, VServerw, VDatabasew, VPortw: string;
  SMSServer: String;
  I, J: Integer;
  SQLText, CurrentDir, DestinationPath: string;
  CounterEdit: Integer;
  CounterInsert: Integer;
  x: string;
begin
  // loadPanel.Visible := True;
  showMessage('” »œ√ ⁄„·Ì…  —ÕÌ· «·»Ì«‰« ');
  with tinifile.Create(changefileext(paramstr(0), '.INI')) do
  begin
    VProviderName := readstring('Data',
      'ProviderName  for Server Alayaradat', '');
    VUserNamew := readstring('Data', 'Username for Server Alayaradat', '');
    VPasswordw := readstring('Data', 'Password for Server Alayaradat', '');
    VServerw := readstring('Data', 'Server for Server Alayaradat', '');
    VDatabasew := readstring('Data', 'Database for Server Alayaradat', '');
    VPortw := readstring('Data', 'Port for Server Alayaradat', '');
    DestinationPath := readstring('Data', 'Server_Folder_Path_For_Images', '');
    // finally

    with DataModuleFm do
    begin
      try
        With DBServer do
        begin
          Connected := False;
          ProviderName := VProviderName;
          Username := VUserNamew;
          Password := VPasswordw;
          Server := VServerw;
          Database := VDatabasew;
          Port := StrToInt(VPortw);
          Connect;

          J := 0;
          for I := 0 to DataModuleFm.ComponentCount - 1 do
            if (DataModuleFm.Components[I] is TUniTable) and
              ((DataModuleFm.Components[I] as TUniTable).Name <> 'Years') then
            begin

              J := J + 1;
              // SplashFm.sProgressBar1.StepIt;
              (DataModuleFm.Components[I] as TUniTable).Open;
            end;

          // ShowMessage(VDatabase);
          // IF not Connected THEN
          // Raise Exception.Create
          // ('·« ÌÊÃœ « ’«· »«·ÃÂ«“ «·—∆Ì”Ì Ì« ⁄“Ì“Ì «—ÃÊÊ «·« ’«· »«ﬁ—» ‘»ﬂ… œ«Œ·Ì… ');



          // CopyTableData(SourceTable, TargetTable);
          // CopyTableData(SourceTable, TargetTable);

        End;
      except
        ;
        Raise Exception.Create
          ('·« ÌÊÃœ « ’«· »«·ÃÂ«“ «·—∆Ì”Ì Ì« ⁄“Ì“Ì «—ÃÊÊ «·« ’«· »«ﬁ—» ‘»ﬂ… œ«Œ·Ì… ');

        // end;
        // end;
        { except
          ;
          Raise Exception.Create('·« ÌÊÃœ « ’«· »«·ÃÂ«“ «·—∆Ì”Ì Ì« ⁄“Ì“Ì «—ÃÊÊ «·« ’«· »«ﬁ—» ‘»ﬂ… œ«Œ·Ì… ');
        }
      End;

      with DataModuleFm, DmdFm do
      begin
        /// //////-------------------------------------/////
        if not Starts_And_Stops_Query.Active then

          Starts_And_Stops_Query.Open;

        Starts_And_Stops_Query.ParamByName('VNum').Value :=
          LsortingtripAutoUID.Value;

        Starts_And_Stops_Query.Execute;

        // Check if Lsubmenucounter has records
        if not Starts_And_Stops_Query.IsEmpty then
        begin
          Starts_And_Stops_Query.First; // Move to the first record
          // Open Vsubmenucounter_GetNewData if it's not already open
          while not Starts_And_Stops_Query.Eof do
          begin
            if not Vstarts_And_Stops.Active then
              Vstarts_And_Stops.Open;

            // LLsubmenucounterForServerForEditTagNumber.Value +
            // '-«·Ï «·—∆Ì”Ì ' + Vsubmenucounter_GetNewDataTagNumber.Value);
            Vstarts_And_Stops.insert;
            // try

            // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
            for I := 1 to 7 do
            begin
              // CounterEdit:= CounterEdit+1;
              // showMessage(Starts_And_Stops_Query.Fields[I].AsString);
              Vstarts_And_Stops.Fields[I].Value :=
                Starts_And_Stops_Query.Fields[I].Value;
            end;
            Vstarts_And_Stops.Post;
            // showMessage('≈÷«›…');
            Starts_And_Stops_Query.Next;
          end;

        end;
        // except
        // Vsubmenucounter_GetNewData.Cancel;
        // raise; // Raise exception to handle errors appropriately
        // end;


        // Move to the next record in Lsubmenucounter

        ///

        // Ensure Lsubmenucounter is active (open)
        if not LLsubmenucounterForServerForEdit.Active then
          LLsubmenucounterForServerForEdit.ParamByName('VNum').Value := 1;
        LLsubmenucounterForServerForEdit.ParamByName('NM').Value :=
          LsortingtripnumAuto.Value;

        LLsubmenucounterForServerForEdit.Execute;

        // Check if Lsubmenucounter has records
        if not LLsubmenucounterForServerForEdit.IsEmpty then
        begin
          LLsubmenucounterForServerForEdit.First; // Move to the first record
          // showMessage(' ÊÃœ »Ì«‰« ');
          while not LLsubmenucounterForServerForEdit.Eof do
          begin
            // Open Vsubmenucounter_GetNewData if it's not already open
            if not Vsubmenucounter_GetNewData.Active then
              Vsubmenucounter_GetNewData.Open;

            // Assign parameters and execute the query
            // Vsubmenucounter_GetNewData.Close;
            // Close to clear any previous data
            // x := LLsubmenucounterForServerForEdit.FieldByName('AutoUID').Value;
            // showMessage(x + '');
            Vsubmenucounter_GetNewData.ParamByName('VUID').Value :=
              LLsubmenucounterForServerForEdit.FieldByName('AutoUID').Value;
            Vsubmenucounter_GetNewData.Execute;
            // Open or Execute, depending on the component

            // Check if the query returned any data
            if not Vsubmenucounter_GetNewData.IsEmpty then
            begin
              // showMessage('«·«‰ Ì „  —ÕÌ· «·Õ«ÊÌ… „‰ «· «» ' + ' ⁄œÌ·' + '   ' +
              // LLsubmenucounterForServerForEditTagNumber.Value +
              // '-«·Ï «·—∆Ì”Ì ' + Vsubmenucounter_GetNewDataTagNumber.Value);
              Vsubmenucounter_GetNewData.Edit;
              // try

              // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
              for I := 0 to 34 do
              begin
                // showMessage(LLsubmenucounterForServerForEdit.Fields[34].Value);

                // CounterEdit:= CounterEdit+1;
                // showMessage('«· ﬂ—«— «·√Ê· ›Ì Õ«·… «· ⁄œÌ·  '+' '+inttostr(CounterEdit));
                Vsubmenucounter_GetNewData.Fields[I].Value :=
                  LLsubmenucounterForServerForEdit.Fields[I].Value;
              end;
              Vsubmenucounter_GetNewData.Post;
              // except
              // Vsubmenucounter_GetNewData.Cancel;
              // raise; // Raise exception to handle errors appropriately
              // end;
            end
            else
            begin
              // showMessage('«·«‰ Ì „  —ÕÌ· «·Õ«ÊÌ… „‰ «· «» ' + '≈÷«›…' + '   ' +
              // LLsubmenucounterForServerForEditTagNumber.Value +
              // '-«·Ï «·—∆Ì”Ì ' + Vsubmenucounter_GetNewDataTagNumber.Value);
              Vsubmenucounter_GetNewData.insert;
              // try

              // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
              for I := 0 to 34 do
              begin
                // CounterEdit:= CounterEdit+1;
                // showMessage(LLsubmenucounterForServerForEdit.Fields[33].Value);
                Vsubmenucounter_GetNewData.Fields[I].Value :=
                  LLsubmenucounterForServerForEdit.Fields[I].Value;
              end;
              Vsubmenucounter_GetNewData.Post;
              // except
              // Vsubmenucounter_GetNewData.Cancel;
              // raise; // Raise exception to handle errors appropriately
              // end;
            end;

            // Move to the next record in Lsubmenucounter
            LLsubmenucounterForServerForEdit.Next;
          end;
        end;
        // After processing all records, show success message


        // Refresh the TDBGridEh component

        // Optionally, add code here to handle the "ÕÿÌÂ« ›Ì «·” Ê—Ì" part
        // Example: Store something in "” Ê—Ì" (assuming it means story or storage)

        if not LStopsForShipsForServer.Active then
          LStopsForShipsForServer.ParamByName('VNum').Value := 1;
        LStopsForShipsForServer.ParamByName('NM').Value :=
          LsortingtripAutoUID.Value;

        LStopsForShipsForServer.Open;

        // sBitBtn2Click(Sender);
        // LStopsForShipsForServer.Execute;
        // Check if Lsubmenucounter has records
        if not LStopsForShipsForServer.IsEmpty then
        begin

          LStopsForShipsForServer.First; // Move to the first record

          while not LStopsForShipsForServer.Eof do
          begin

            // Open Vsubmenucounter_GetNewData if it's not already open
            if not VSTOPS_GetNewData.Active then
              VSTOPS_GetNewData.Open;

            // Assign parameters and execute the query
            VSTOPS_GetNewData.Close;
            // Close to clear any previous data
            VSTOPS_GetNewData.ParamByName('Vnum').Value :=
              LStopsForShipsForServerAutoUID.Value;
            // lsubmenucounterForServer.FieldByName('AutoUID').Value;
            // VSTOPS_GetNewData.Close;
            VSTOPS_GetNewData.Execute;
            // Open or Execute, depending on the component
            // showMessage('ddddd');
            // Check if the query returned any data
            if VSTOPS_GetNewData.IsEmpty then
            begin
              VSTOPS_GetNewData.insert;
              // try
              // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
              for I := 0 to 10 do
              begin

                VSTOPS_GetNewData.Fields[I].Value :=
                  LStopsForShipsForServer.Fields[I].Value;
              end;
              VSTOPS_GetNewData.Post;
              // except
              // VSTOPS_GetNewData.Cancel;
              // raise; // Raise exception to handle errors appropriately
              // end;
            end
            else if not VSTOPS_GetNewData.IsEmpty then
            begin
              VSTOPS_GetNewData.Edit;
              // try
              // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
              for I := 0 to 8 do
              begin

                VSTOPS_GetNewData.Fields[I].Value :=
                  LStopsForShipsForServer.Fields[I].Value;
              end;
              VSTOPS_GetNewData.Fields[10].Value :=
                LStopsForShipsForServer.Fields[10].Value;
              VSTOPS_GetNewData.Post;
              // except
              // VSTOPS_GetNewData.Cancel;
              // raise; // Raise exception to handle errors appropriately
              // end;

            end;
            LStopsForShipsForServer.Next;
          end;
          // Move to the next record in Lsubmenucounter

        end;
        // notes
        if not LNotesForThisShipForShowInList.Active then
          LNotesForThisShipForShowInList.ParamByName('VNum').Value := 1;
        LNotesForThisShipForShowInList.ParamByName('NM').Value :=
          LsortingtripAutoUID.Value;

        LNotesForThisShipForShowInList.Open;
        // LStopsForShipsForServer.Execute;
        // Check if Lsubmenucounter has records
        if not LNotesForThisShipForShowInList.IsEmpty then
        begin

          LNotesForThisShipForShowInList.First; // Move to the first record

          while not LNotesForThisShipForShowInList.Eof do
          begin

            // Open Vsubmenucounter_GetNewData if it's not already open
            if not VNotesForShip_NewData.Active then
              VNotesForShip_NewData.Open;

            // Assign parameters and execute the query
            VNotesForShip_NewData.Close;
            // Close to clear any previous data
            VNotesForShip_NewData.ParamByName('Vnum').Value :=
              LNotesForThisShipForShowInListAutoUID.Value;
            // lsubmenucounterForServer.FieldByName('AutoUID').Value;
            // VSTOPS_GetNewData.Close;
            VNotesForShip_NewData.Execute;
            // Open or Execute, depending on the component

            // Check if the query returned any data
            if VNotesForShip_NewData.IsEmpty then
            begin
              VNotesForShip_NewData.insert;
              // try
              // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
              for I := 0 to 4 do
              begin

                VNotesForShip_NewData.Fields[I].Value :=
                  LNotesForThisShipForShowInList.Fields[I].Value;
              end;
              VNotesForShip_NewData.Post;
              // except
              // VNotesForShip_NewData.Cancel;
              // raise; // Raise exception to handle errors appropriately
              // end;
            end
            else if not VNotesForShip_NewData.IsEmpty then
            begin
              VNotesForShip_NewData.Edit;
              // try
              // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
              for I := 0 to 3 do
              begin

                VNotesForShip_NewData.Fields[I].Value :=
                  LNotesForThisShipForShowInList.Fields[I].Value;
              end;
              VNotesForShip_NewData.Post;
              // except
              // VNotesForShip_NewData.Cancel;
              // raise; // Raise exception to handle errors appropriately
              // end;

            end;
            LNotesForThisShipForShowInList.Next;
          end;

          ///

          // After processing all records, show success message

        end;
        // shifts ------------------------------
        if not LshipShifts.Active then

          LshipShifts.ParamByName('VNum').Value := LsortingtripAutoUID.Value;

        LshipShifts.Open;
        // LStopsForShipsForServer.Execute;
        // Check if Lsubmenucounter has records
        if not LshipShifts.IsEmpty then
        begin

          LshipShifts.First; // Move to the first record

          while not LshipShifts.Eof do
          begin

            // Open Vsubmenucounter_GetNewData if it's not already open
            if not VShiftsForShip_NewData.Active then
              VShiftsForShip_NewData.Open;

            // Assign parameters and execute the query
            VShiftsForShip_NewData.Close;
            // Close to clear any previous data
            VShiftsForShip_NewData.ParamByName('Vnum').Value :=
              LshipShiftsAutoUID.Value;
            // lsubmenucounterForServer.FieldByName('AutoUID').Value;
            // VSTOPS_GetNewData.Close;
            VShiftsForShip_NewData.Execute;
            // Open or Execute, depending on the component

            // Check if the query returned any data
            if VShiftsForShip_NewData.IsEmpty then
            begin
              VShiftsForShip_NewData.insert;
              // try
              // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
              for I := 0 to 15 do
              begin

                VShiftsForShip_NewData.Fields[I].Value :=
                  LshipShifts.Fields[I].Value;
              end;
              VShiftsForShip_NewData.Post;
              // except
              // VShiftsForShip_NewData.Cancel;
              // raise; // Raise exception to handle errors appropriately
              // end;
            end
            else if not VShiftsForShip_NewData.IsEmpty then
            begin
              VShiftsForShip_NewData.Edit;
              // try
              // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
              for I := 0 to 15 do
              begin

                VShiftsForShip_NewData.Fields[I].Value :=
                  LshipShifts.Fields[I].Value;
              end;
              VShiftsForShip_NewData.Post;
              // except
              // VShiftsForShip_NewData.Cancel;
              // raise; // Raise exception to handle errors appropriately
              // end;

            end;
            LshipShifts.Next;
          end;

          ///

          // After processing all records, show success message

        end;

        //
        // Covers ------------------------------
        if not LshipCovers.Active then

          LshipCovers.ParamByName('VNum').Value := LsortingtripAutoUID.Value;

        LshipCovers.Execute;
        // LStopsForShipsForServer.Execute;
        // Check if Lsubmenucounter has records
        if not LshipCovers.IsEmpty then
        begin

          LshipCovers.First; // Move to the first record

          while not LshipCovers.Eof do
          begin

            // Open Vsubmenucounter_GetNewData if it's not already open
            if not VCoversForShip_NewData.Active then
              VCoversForShip_NewData.Open;

            // Assign parameters and execute the query
            VCoversForShip_NewData.Close;
            // Close to clear any previous data
            VCoversForShip_NewData.ParamByName('Vnum').Value :=
              LshipCoversAutoUID.Value;
            // lsubmenucounterForServer.FieldByName('AutoUID').Value;
            // VSTOPS_GetNewData.Close;
            VCoversForShip_NewData.Execute;
            // Open or Execute, depending on the component

            // Check if the query returned any data
            if VCoversForShip_NewData.IsEmpty then
            begin
              VCoversForShip_NewData.insert;
              // try
              // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
              for I := 0 to 11 do
              begin

                VCoversForShip_NewData.Fields[I].Value :=
                  LshipCovers.Fields[I].Value;
              end;
              VCoversForShip_NewData.Post;
              // except
              // VCoversForShip_NewData.Cancel;
              // raise; // Raise exception to handle errors appropriately
              // end;
            end
            else if not VCoversForShip_NewData.IsEmpty then
            begin
              VCoversForShip_NewData.Edit;
              // try
              // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
              for I := 0 to 11 do
              begin

                VCoversForShip_NewData.Fields[I].Value :=
                  LshipCovers.Fields[I].Value;
              end;
              VCoversForShip_NewData.Post;
              // except
              // VCoversForShip_NewData.Cancel;
              // raise; // Raise exception to handle errors appropriately
              // end;

            end;
            LshipCovers.Next;
          end;

          ///

          // After processing all records, show success message

        end;

        //
        LLsubmenucounterForServerForEdit.ParamByName('VNum').Value := 1;
        LLsubmenucounterForServerForEdit.ParamByName('NM').Value :=
          LsortingtripnumAuto.Value;

        LLsubmenucounterForServerForEdit.Execute;

        // Check if Lsubmenucounter has records
        if not LLsubmenucounterForServerForEdit.IsEmpty then
        begin
          LLsubmenucounterForServerForEdit.First; // Move to the first record

          while not LLsubmenucounterForServerForEdit.Eof do
          begin
            LgetImagesForSubMenuCounter.Close;
            LgetImagesForSubMenuCounter.ParamByName('id').Value :=
              LLsubmenucounterForServerForEditAutoUID.Value;
            LgetImagesForSubMenuCounter.Execute;
            VgetImagesForSubMenuCounter_getData.Close;
            VgetImagesForSubMenuCounter_getData.ParamByName('id').Value :=
              LLsubmenucounterForServerForEditAutoUID.Value;
            VgetImagesForSubMenuCounter_getData.Execute;
            if not LgetImagesForSubMenuCounter.IsEmpty then
            begin
              LgetImagesForSubMenuCounter.First;
              if VgetImagesForSubMenuCounter_getData.IsEmpty then
              begin
                while not LgetImagesForSubMenuCounter.Eof DO
                BEGIN

                  VgetImagesForSubMenuCounter_getData.insert;

                  for I := 1 to 3 do
                  begin

                    VgetImagesForSubMenuCounter_getData.Fields[I].Value :=
                      LgetImagesForSubMenuCounter.Fields[I].Value;

                  end;

                  VgetImagesForSubMenuCounter_getData.Post;
                  CurrentDir := IncludeTrailingPathDelimiter(GetCurrentDir) +
                    'harm_imgs\' + LgetImagesForSubMenuCounterimg.Value;
                  // Construct the destination path
                  with tinifile.Create(changefileext(paramstr(0), '.INI')) do
                  begin
                    try
                      DestinationPath :=
                        readstring('Data', 'Server_Folder_Path_For_Images', '');
                    finally
                      Free; // Don't forget to free the TIniFile object
                    end;
                  end;
                  DestinationPath := IncludeTrailingPathDelimiter
                    (DestinationPath) + LgetImagesForSubMenuCounterimg.Value;

                  try
                    // CurrentDir := GetCurrentDir;
                    // showMessage(CurrentDir);
                    // CurrentDir := IncludeTrailingPathDelimiter(CurrentDir);
                    // showMessage(CurrentDir);
                    // DestinationPath := IncludeTrailingPathDelimiter
                    // (DestinationPath);
                    // showMessage(DestinationPath);
                    // Debug messages
                    // showMessage('Current Directory: ' + CurrentDir);
                    // showMessage('Source Path: ' + SourcePath);
                    // showMessage('Destination Path: ' + DestinationPath);

                    // Check if the source file exists
                    if not FileExists(CurrentDir) then
                      raise Exception.CreateFmt('', [CurrentDir]);

                    // Ensure the destination directory exists
                    if not DirectoryExists(ExtractFilePath(DestinationPath))
                    then
                      if not CreateDir(ExtractFilePath(DestinationPath)) then
                        raise Exception.CreateFmt('',
                          [ExtractFilePath(DestinationPath)]);

                    // Attempt to copy the file
                    if not CopyFile(PChar(CurrentDir), PChar(DestinationPath),
                      False) then
                      raise Exception.CreateFmt('',
                        [CurrentDir, DestinationPath]);

                    // showMessage('Image copied successfully.');
                  except
                    on E: Exception do
                      showMessage('An error occurred: ' + E.Message);
                  end;
                  if FileExists(CurrentDir) then
                  begin

                    DeleteFile(CurrentDir);
                  end
                  else
                    MessageDlg(('«·„·› «·„ÿ·Ê» €Ì— „ÊÃÊœ '), mtConfirmation,
                      [mbOK], 0);
                  LgetImagesForSubMenuCounter.Next;
                end;
              end
              else
              begin
                // VgetImagesForSubMenuCounter_getData.Delete;

                while not LgetImagesForSubMenuCounter.Eof DO
                BEGIN
                  VgetImagesForSubMenuCounter_getData.insert;
                  for I := 1 to 3 do
                  begin

                    VgetImagesForSubMenuCounter_getData.Fields[I].Value :=
                      LgetImagesForSubMenuCounter.Fields[I].Value;
                  end;
                  VgetImagesForSubMenuCounter_getData.Post;
                  CurrentDir := IncludeTrailingPathDelimiter(GetCurrentDir) +
                    'harm_imgs\' + LgetImagesForSubMenuCounterimg.Value;
                  // Construct the destination path
                  with tinifile.Create(changefileext(paramstr(0), '.INI')) do
                  begin
                    try
                      DestinationPath :=
                        readstring('Data', 'Server_Folder_Path_For_Images', '');
                    finally
                      Free; // Don't forget to free the TIniFile object
                    end;
                  end;
                  DestinationPath := IncludeTrailingPathDelimiter
                    (DestinationPath) + LgetImagesForSubMenuCounterimg.Value;

                  try
                    // CurrentDir := GetCurrentDir;
                    // showMessage(CurrentDir);

                    // CurrentDir := IncludeTrailingPathDelimiter(CurrentDir);
                    // showMessage(CurrentDir);
                    // DestinationPath := IncludeTrailingPathDelimiter
                    // (DestinationPath);
                    // showMessage(DestinationPath);

                    // Debug messages
                    // showMessage('Current Directory: ' + CurrentDir);
                    // showMessage('Source Path: ' + SourcePath);
                    // showMessage('Destination Path: ' + DestinationPath);

                    // Check if the source file exists
                    if not FileExists(CurrentDir) then
                      raise Exception.CreateFmt('', [CurrentDir]);

                    // Ensure the destination directory exists
                    if not DirectoryExists(ExtractFilePath(DestinationPath))
                    then
                      if not CreateDir(ExtractFilePath(DestinationPath)) then
                        raise Exception.CreateFmt('',
                          [ExtractFilePath(DestinationPath)]);

                    // Attempt to copy the file
                    if not CopyFile(PChar(CurrentDir), PChar(DestinationPath),
                      False) then
                      raise Exception.CreateFmt('',
                        [CurrentDir, DestinationPath]);

                    // showMessage('Image copied successfully.');
                  except
                    on E: Exception do
                      showMessage('An error occurred: ' + E.Message);
                  end;
                  if FileExists(CurrentDir) then
                  begin

                    DeleteFile(CurrentDir);
                  end
                  else
                    MessageDlg(('«·„·› «·„ÿ·Ê» €Ì— „ÊÃÊœ '), mtConfirmation,
                      [mbOK], 0);
                  LgetImagesForSubMenuCounter.Next;
                end;

              END;
            end
            else
            begin

            end;
            SourceQuery.SQL.Text := 'DELETE FROM harm_images WHERE M_AutoUID='''
              + LLsubmenucounterForServerForEditAutoUID.Value + '''';
            SourceQuery.Execute;

            UniDump1.tablenames := 'harm_images' + ' ; ';
            UniDump1.BackupToFile('DmdFm..sql');
            UniScript1.SQL.LoadFromFile('DmdFm..sql');
            SQLText := UniScript1.SQL.Text;
            //
            SourceQuery.SQL.Text := SQLText;
            SourceQuery.Execute;
            LLsubmenucounterForServerForEdit.Next;
          end;
        end;

        showMessage(' „  ⁄„·Ì… «· —ÕÌ· »‰Ã«Õ');

        loadPanel.Visible := False;
        SourceQuery.SQL.Text :=
          'UPDATE  submenucounter SET isdataChanged=0 WHERE NumMainList=' +
          inttostr(LsortingtripnumAuto.Value) + ';' +
          'UPDATE stops SET isUpdated=0 WHERE M_AutoUID=''' +
          LsortingtripAutoUID.Value + ''';' +
          'UPDATE shipnotes SET isUpdated=0 WHERE M_AutoUID=''' +
          LsortingtripAutoUID.Value +
          '''; UPDATE shipshifts set isUpdated=0 WHERE M_AutoUID= ''' +
          LsortingtripAutoUID.Value + ''';' +
          ' UPDATE shipcovers SET isUpdated=0 WHERE M_AutoUID=''' +
          LsortingtripAutoUID.Value + ''';' +
          ' DELETE FROM ship_starts_and_ends WHERE AutoUID=''' +
          LsortingtripAutoUID.Value + ''';';

        SourceQuery.Execute;

        UniDump1.tablenames := 'submenucounter' + ' ; ' + 'stops' + ' ; ' +
          'shipnotes' + ' ; ' + 'shipshifts' + ' ; ' + 'shipcovers' + ' ; ' +
          'ship_starts_and_ends' + ' ; ';
        UniDump1.BackupToFile('DmdFm..sql');
        UniScript1.SQL.LoadFromFile('DmdFm..sql');
        SQLText := UniScript1.SQL.Text;
        //
        SourceQuery.SQL.Text := SQLText;
        SourceQuery.Execute;
        LLsubmenucounterForServerForEdit.Refresh;
        LStopsForShipsForServer.Refresh;
        LNotesForThisShipForShowInList.Refresh;
        LshipShiftsForServer.Refresh;
        LshipcoversForServer.Refresh;
        rEADYfORsERVER.Refresh;
        stopsForServer.Refresh;
        shipNotes.Refresh;

      end;

    end

  end;

end;

end.
