unit Unit1;

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
  System.Variants, acProgressBar, AdvPanel, acPNG, VclTee.TeEngine,
  VclTee.TeeProcs, VclTee.Chart,
  VclTee.Series;

type
  TDownloadDataFromServer = class(TForm)
    sBitBtn1: TsBitBtn;
    sAlphaImageList1: TsAlphaImageList;
    DBGridEh1: TDBGridEh;
    sDBText2: TsDBText;
    loadPanel: TAdvPanel;
    Label1: TLabel;
    sProgressBar1: TsProgressBar;
    UniScript1: TUniScript;
    SourceQuery: TUniScript;
    v: TPanel;
    Label9: TLabel;
    Image1: TImage;
    Label2: TLabel;
    Image3: TImage;
    Edit1: TEdit;
    Query1: TUniQuery;
    procedure sBitBtn1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DownloadDataFromServer: TDownloadDataFromServer;

implementation

{$R *.dfm}

uses DmdUn, DataModuleUn, Main, MainUn, Flight_MovementUn, userTyping;

var
  I, J: Integer;
  CurrentDir, SQLText: string;

procedure migrateDataBeforeGetNewData();
var
  DestinationPath: string;

begin
  with DataModuleFm, DmdFm do
  begin
    if not LLsubmenucounterForServerForEdit.Active then
      LLsubmenucounterForServerForEdit.ParamByName('VNum').Value := 1;
    LLsubmenucounterForServerForEdit.ParamByName('NM').Value :=
      VsortingtripnumAuto.Value;

    LLsubmenucounterForServerForEdit.Execute;

    // Check if Lsubmenucounter has records
    if not LLsubmenucounterForServerForEdit.IsEmpty then
    begin
      LLsubmenucounterForServerForEdit.First; // Move to the first record

      while not LLsubmenucounterForServerForEdit.Eof do
      begin
        // Open Vsubmenucounter_GetNewData if it's not already open
        if not Vsubmenucounter_GetNewData.Active then
          Vsubmenucounter_GetNewData.Open;

        // Assign parameters and execute the query
        Vsubmenucounter_GetNewData.Close;
        // Close to clear any previous data
        Vsubmenucounter_GetNewData.ParamByName('VUID').Value :=
          LLsubmenucounterForServerForEdit.FieldByName('AutoUID').Value;
        Vsubmenucounter_GetNewData.Open;
        // Open or Execute, depending on the component

        // Check if the query returned any data
        if not Vsubmenucounter_GetNewData.IsEmpty then
        begin
          // showMessage(LLsubmenucounterForServerForEdit.Fields[34].Value);
          Vsubmenucounter_GetNewData.Edit;
          try
            // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
            for I := 0 to 34 do
            begin

              Vsubmenucounter_GetNewData.Fields[I].Value :=
                LLsubmenucounterForServerForEdit.Fields[I].Value;
            end;
            Vsubmenucounter_GetNewData.Post;
          except
            Vsubmenucounter_GetNewData.Cancel;
            raise; // Raise exception to handle errors appropriately
          end;
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
          VSTOPS_GetNewData.Insert;
          try
            // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
            for I := 0 to 10 do
            begin

              VSTOPS_GetNewData.Fields[I].Value :=
                LStopsForShipsForServer.Fields[I].Value;
            end;
            VSTOPS_GetNewData.Post;
          except
            VSTOPS_GetNewData.Cancel;
            raise; // Raise exception to handle errors appropriately
          end;
        end
        else if not VSTOPS_GetNewData.IsEmpty then
        begin
          VSTOPS_GetNewData.Edit;
          try
            // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
            for I := 0 to 8 do
            begin

              VSTOPS_GetNewData.Fields[I].Value :=
                LStopsForShipsForServer.Fields[I].Value;
            end;
            VSTOPS_GetNewData.Fields[10].Value := LStopsForShipsForServer.Fields
              [10].Value;
            VSTOPS_GetNewData.Post;
          except
            VSTOPS_GetNewData.Cancel;
            raise; // Raise exception to handle errors appropriately
          end;

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
          VNotesForShip_NewData.Insert;
          try
            // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
            for I := 0 to 4 do
            begin

              VNotesForShip_NewData.Fields[I].Value :=
                LNotesForThisShipForShowInList.Fields[I].Value;
            end;
            VNotesForShip_NewData.Post;
          except
            VNotesForShip_NewData.Cancel;
            raise; // Raise exception to handle errors appropriately
          end;
        end
        else if not VNotesForShip_NewData.IsEmpty then
        begin
          VNotesForShip_NewData.Edit;
          try
            // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
            for I := 0 to 3 do
            begin

              VNotesForShip_NewData.Fields[I].Value :=
                LNotesForThisShipForShowInList.Fields[I].Value;
            end;
            VNotesForShip_NewData.Post;
          except
            VNotesForShip_NewData.Cancel;
            raise; // Raise exception to handle errors appropriately
          end;

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
          VShiftsForShip_NewData.Insert;
          try
            // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
            for I := 0 to 15 do
            begin

              VShiftsForShip_NewData.Fields[I].Value :=
                LshipShifts.Fields[I].Value;
            end;
            VShiftsForShip_NewData.Post;
          except
            VShiftsForShip_NewData.Cancel;
            raise; // Raise exception to handle errors appropriately
          end;
        end
        else if not VShiftsForShip_NewData.IsEmpty then
        begin
          VShiftsForShip_NewData.Edit;
          try
            // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
            for I := 0 to 15 do
            begin

              VShiftsForShip_NewData.Fields[I].Value :=
                LshipShifts.Fields[I].Value;
            end;
            VShiftsForShip_NewData.Post;
          except
            VShiftsForShip_NewData.Cancel;
            raise; // Raise exception to handle errors appropriately
          end;

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
          VCoversForShip_NewData.Insert;
          try
            // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
            for I := 0 to 11 do
            begin

              VCoversForShip_NewData.Fields[I].Value :=
                LshipCovers.Fields[I].Value;
            end;
            VCoversForShip_NewData.Post;
          except
            VCoversForShip_NewData.Cancel;
            raise; // Raise exception to handle errors appropriately
          end;
        end
        else if not VCoversForShip_NewData.IsEmpty then
        begin
          VCoversForShip_NewData.Edit;
          try
            // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
            for I := 0 to 11 do
            begin

              VCoversForShip_NewData.Fields[I].Value :=
                LshipCovers.Fields[I].Value;
            end;
            VCoversForShip_NewData.Post;
          except
            VCoversForShip_NewData.Cancel;
            raise; // Raise exception to handle errors appropriately
          end;

        end;
        LshipCovers.Next;
      end;

      ///

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

                VgetImagesForSubMenuCounter_getData.Insert;

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
                DestinationPath := IncludeTrailingPathDelimiter(DestinationPath)
                  + LgetImagesForSubMenuCounterimg.Value;

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
                    raise Exception.CreateFmt('Source file does not exist: %s',
                      [CurrentDir]);

                  // Ensure the destination directory exists
                  if not DirectoryExists(ExtractFilePath(DestinationPath)) then
                    if not CreateDir(ExtractFilePath(DestinationPath)) then
                      raise Exception.CreateFmt
                        ('Failed to create destination directory: %s',
                        [ExtractFilePath(DestinationPath)]);

                  // Attempt to copy the file
                  if not CopyFile(PChar(CurrentDir), PChar(DestinationPath),
                    False) then
                    raise Exception.CreateFmt
                      ('Failed to copy file from %s to %s',
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
                VgetImagesForSubMenuCounter_getData.Insert;
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
                DestinationPath := IncludeTrailingPathDelimiter(DestinationPath)
                  + LgetImagesForSubMenuCounterimg.Value;

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
                    raise Exception.CreateFmt('Source file does not exist: %s',
                      [CurrentDir]);

                  // Ensure the destination directory exists
                  if not DirectoryExists(ExtractFilePath(DestinationPath)) then
                    if not CreateDir(ExtractFilePath(DestinationPath)) then
                      raise Exception.CreateFmt
                        ('Failed to create destination directory: %s',
                        [ExtractFilePath(DestinationPath)]);

                  // Attempt to copy the file
                  if not CopyFile(PChar(CurrentDir), PChar(DestinationPath),
                    False) then
                    raise Exception.CreateFmt
                      ('Failed to copy file from %s to %s',
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

          LLsubmenucounterForServerForEdit.Next;
        end;
      end;

      DownloadDataFromServer.SourceQuery.SQL.Text :=
        'DELETE FROM harm_images WHERE M_AutoUID=''' +
        LLsubmenucounterForServerForEditAutoUID.Value + '''';
      DownloadDataFromServer.SourceQuery.Execute;

      UniDump1.tablenames := 'harm_images' + ' ; ';
      UniDump1.BackupToFile('DmdFm..sql');
      DownloadDataFromServer.UniScript1.SQL.LoadFromFile('DmdFm..sql');
      SQLText := DownloadDataFromServer.UniScript1.SQL.Text;

      DownloadDataFromServer.SourceQuery.SQL.Text := SQLText;
      DownloadDataFromServer.SourceQuery.Execute;
      DownloadDataFromServer.SourceQuery.SQL.Text :=
        'Delete  from shipnotes WHERE M_AutoUID=''' + LsortingtripAutoUID.Value
        + ''';' + 'Delete from stops WHERE M_AutoUID=''' +
        LsortingtripAutoUID.Value + ''' ; ' +
        ' Delete from shipcovers WHERE M_AutoUID=''' + LsortingtripAutoUID.Value
        + '''; Delete from shipshifts WHERE  M_AutoUID=''' +
        LsortingtripAutoUID.Value +
        '''; Delete from submenucounter WHERE NumMainList=' +
        inttostr(VsortingtripnumAuto.Value) + '; ' +
        'Delete from  sortingtrip WHERE numAuto=' +
        inttostr(VsortingtripnumAuto.Value) + '';
      DownloadDataFromServer.SourceQuery.Execute;
      // ShowMessage(inttostr( VsortingtripnumAuto.Value));
      UniDump1.tablenames := 'shipnotes' + ' ; ' + 'stops' +
        ' ; shipcovers ; shipshifts ; ' + 'submenucounter;' + 'sortingtrip ;';
      UniDump1.BackupToFile('DmdFm..sql');
      DownloadDataFromServer.UniScript1.SQL.LoadFromFile('DmdFm..sql');
      SQLText := DownloadDataFromServer.UniScript1.SQL.Text;

      DownloadDataFromServer.SourceQuery.SQL.Text := SQLText;
      DownloadDataFromServer.SourceQuery.Execute;
    end;
  end;

end;

procedure TDownloadDataFromServer.DBGridEh1DblClick(Sender: TObject);
begin
  with DataModuleFm, DmdFm do
  begin
    Flight_MovementFm.ForEdit.Text := '0';
    loadPanel.Visible := true;
    showMessage('” »œ√ ⁄„·Ì… «” Ã·«» «·»Ì«‰« ');
    migrateDataBeforeGetNewData;
    // Step 1: Handling LsortingtripFromServer and Lsortingtrip datasets
    LsortingtripFromServer.Close;
    LsortingtripFromServer.ParamByName('VNum').Value :=
      VsortingtripnumAuto.Value;
    LsortingtripFromServer.Execute;

    if LsortingtripFromServer.RecordCount = 0 then
    begin
      Lsortingtrip.Insert;
      try
        if not Vsortingtrip.Active then
          Vsortingtrip.Open;
        if not Lsortingtrip.Active then
          Lsortingtrip.Open;

        for I := 0 to Vsortingtrip.FieldCount - 1 do
        begin
          if I < Lsortingtrip.FieldCount then
          begin
            if Lsortingtrip.Fields[I].DataType = Vsortingtrip.Fields[I].DataType
            then
            begin
              Lsortingtrip.Fields[I].Value := Vsortingtrip.Fields[I].Value;
            end
            else
            begin
              raise Exception.CreateFmt
                ('Field type mismatch for field %d', [I]);
            end;
          end
          else
          begin
            raise Exception.CreateFmt('Field count mismatch at field %d', [I]);
          end;
        end;
        Lsortingtrip.Post;
      except
        Lsortingtrip.Cancel;
        raise;
      end;
    end
    else
    begin
      LsortingtripFromServer.Edit;
      try
        if not Vsortingtrip.Active then
          Vsortingtrip.Open;
        if not Lsortingtrip.Active then
          Lsortingtrip.Open;

        for I := 0 to Vsortingtrip.FieldCount - 1 do
        begin
          if I < LsortingtripFromServer.FieldCount then
          begin
            if LsortingtripFromServer.Fields[I].DataType = Vsortingtrip.Fields
              [I].DataType then
            begin
              LsortingtripFromServer.Fields[I].Value :=
                Vsortingtrip.Fields[I].Value;
            end
            else
            begin
              raise Exception.CreateFmt
                ('Field type mismatch for field %d', [I]);
            end;
          end
          else
          begin
            raise Exception.CreateFmt('Field count mismatch at field %d', [I]);
          end;
        end;
        LsortingtripFromServer.Post;
      except
        LsortingtripFromServer.Cancel;
        raise;
      end;
    end;

    LsubmenucounterForLocalCheck.Close;
    // VsubmenucounterForLocalAllList.ParamByName('whoWrite').Value := DmdFm.PermUserName.Value;
    LsubmenucounterForLocalCheck.ParamByName('Vnum').Value :=
      VsortingtripnumAuto.Value;
    LsubmenucounterForLocalCheck.Execute;

    Lsubmenucounter.Close;
    Lsubmenucounter.ParamByName('Vnum').Value := VsortingtripnumAuto.Value;
    Lsubmenucounter.Open;

    if LsubmenucounterForLocalCheck.IsEmpty then
    begin

      Vsubmenucounter.Close;
      Vsubmenucounter.ParamByName('Vnum').Value := VsortingtripnumAuto.Value;
      Vsubmenucounter.Execute;

      Vsubmenucounter.First;
      while not Vsubmenucounter.Eof do

      begin
        Lsubmenucounter.Insert;

        try
          for I := 0 to 36 do
          begin

            Lsubmenucounter.Fields[I].Value := Vsubmenucounter.Fields[I].Value;
            // ShowMessage('LOCAL ' + Lsubmenucounter.Fields[I].FullName + '  ' + Lsubmenucounter.Fields[I].AsString + ' server ' + Vsubmenucounter.Fields[I].FullName + '  ' +Vsubmenucounter.Fields[I].AsString);

          end;
          //LsubmenucounterisdataChanged.Value := 0;
          Lsubmenucounter.Post;
        except
          Lsubmenucounter.Cancel;
          raise;
        end;

        Vsubmenucounter.Next;
      end;
    end
    else

    begin
      // Step 2: Handling VsubmenucounterForLocalAllList and Lsubmenucounter datasets
      VsubmenucounterForLocalAllList.Close;
      VsubmenucounterForLocalAllList.ParamByName('whoWrite').Value :=
        DmdFm.PermUserName.Value;
      VsubmenucounterForLocalAllList.ParamByName('Vnum').Value :=
        VsortingtripnumAuto.Value;
      VsubmenucounterForLocalAllList.Execute;
      if not VsubmenucounterForLocalAllList.Active then
        VsubmenucounterForLocalAllList.Open;

      VsubmenucounterForLocalAllList.First;
      while not VsubmenucounterForLocalAllList.Eof do
      begin
        LsubmenucounterForLocaloneByone.Close;
        // VsubmenucounterForLocal.ParamByName('whoWrite').Value := DmdFm.PermUserName.Value;
        // VsubmenucounterForLocal.ParamByName('Vnum').Value := vsortingtripnumAuto.Value;
        LsubmenucounterForLocaloneByone.ParamByName('id').Value :=
          VsubmenucounterForLocalAllListAutoUID.Value;
        LsubmenucounterForLocaloneByone.Execute;
        LsubmenucounterForLocaloneByone.Open;
        // ShowMessage('' + VsubmenucounterForLocalAllListAutoUID.Value);
        if not LsubmenucounterForLocaloneByone.IsEmpty then
        begin

          Lsubmenucounter.Edit;
          // showMessage('sdsd');
          try
            for I := 0 to 32 do
            begin
              // showMessage(IntToStr( VsubmenucounterForLocalAllList.FieldByName('CauseDamage').AsInteger));
              Lsubmenucounter.Fields[I].Value :=
                VsubmenucounterForLocalAllList.Fields[I].Value;
              // ShowMessage('LOCAL ' + Lsubmenucounter.Fields[I].FullName + '  ' + Lsubmenucounter.Fields[I].AsString + ' server ' + VsubmenucounterForLocalAllList.Fields[I].FullName + '  ' +Vsubmenucounter.Fields[I].AsString);

            end;
            LsubmenucounterIS_CHEMICAL_MATERIAL.Value :=
              VsubmenucounterForLocalAllList.Fields[35].Value;
            Lsubmenucountergoood_description.Value :=
              VsubmenucounterForLocalAllList.Fields[36].Value;
           // LsubmenucounterisdataChanged.Value := 0;
            Lsubmenucounter.Post;
          except
            Lsubmenucounter.Cancel;
            raise;
          end;
        end
        else
        begin
          Lsubmenucounter.Insert;
          try
            // ShowMessage(''+ VsubmenucounterForLocalAllList.Fields[32].Value);

            for I := 0 to 32 do
            begin
              Lsubmenucounter.Fields[I].Value :=
                VsubmenucounterForLocalAllList.Fields[I].Value;
            end;
            LsubmenucounterIS_CHEMICAL_MATERIAL.Value :=
              VsubmenucounterForLocalAllList.Fields[35].Value;
            Lsubmenucountergoood_description.Value :=
              VsubmenucounterForLocalAllList.Fields[36].Value;
           // LsubmenucounterisdataChanged.Value := 0;
            Lsubmenucounter.Post;
          except
            Lsubmenucounter.Cancel;
            raise;
          end;
        end;

        VsubmenucounterForLocalAllList.Next;
      end;
    end;
  end;
  loadPanel.Visible := False;
  showMessage(' „  ⁄„·Ì… «·«” Ã·«» »‰Ã«Õ');
  Query1.Close;
  Query1.SQL.Text := 'DELETE FROM HrakTemp';
  Query1.Execute;

  // Re-execute Lsortingtrip for VNum = 1
  with DataModuleFm, DmdFm do
  begin
    if LHrakTemp.IsEmpty then
    BEGIN
      Raise Exception.Create(' «œŒ· «·»Ì«‰«  «·›—⁄Ì… ··—Õ·… «Ê·« ');
      if not LHrakTemp.Active then
        LHrakTemp.Open;
      LHrakTemp.Close;
      LHrakTemp.ParamByName('VNum').Value := LsortingtripnumAuto.Value;
      LHrakTemp.Execute;
      LHrakTemp.Last;

      Form12.ShowModal;
    END;
    Lsortingtrip.Close;
    Lsortingtrip.ParamByName('VNum').Value := 1;
    Lsortingtrip.Execute;
  end;
end;

procedure TDownloadDataFromServer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DownloadDataFromServer.Edit1.Text := '2';

end;

procedure TDownloadDataFromServer.FormShow(Sender: TObject);
begin
  Flight_MovementFm.ForEdit.Text := '0';
end;

procedure TDownloadDataFromServer.Image3Click(Sender: TObject);
begin
  DownloadDataFromServer.Edit1.Text := '2';
  Close;
end;

procedure TDownloadDataFromServer.sBitBtn1Click(Sender: TObject);

var
  VProviderName, VUserNamew, VPasswordw, VServerw, VDatabasew, VPortw: string;
  SMSServer: String;
  I, J: Integer;
begin

  with tinifile.Create(changefileext(paramstr(0), '.INI')) do
  begin
    VProviderName := readstring('Data',
      'ProviderName  for Server Alayaradat', '');
    VUserNamew := readstring('Data', 'Username for Server Alayaradat', '');
    VPasswordw := readstring('Data', 'Password for Server Alayaradat', '');
    VServerw := readstring('Data', 'Server for Server Alayaradat', '');
    VDatabasew := readstring('Data', 'Database for Server Alayaradat', '');
    VPortw := readstring('Data', 'Port for Server Alayaradat', '');

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
        // Ensure Lsubmenucounter is active (open)
        if not lsubmenucounterForServer.Active then
          lsubmenucounterForServer.Open;

        // Check if Lsubmenucounter has records
        if not lsubmenucounterForServer.IsEmpty then
        begin
          lsubmenucounterForServer.First; // Move to the first record

          while not lsubmenucounterForServer.Eof do
          begin
            // Open Vsubmenucounter_GetNewData if it's not already open
            if not Vsubmenucounter_GetNewData.Active then
              Vsubmenucounter_GetNewData.Open;

            // Assign parameters and execute the query
            Vsubmenucounter_GetNewData.Close;
            // Close to clear any previous data
            Vsubmenucounter_GetNewData.ParamByName('VUID').Value :=
              lsubmenucounterForServer.FieldByName('AutoUID').Value;
            Vsubmenucounter_GetNewData.Open;
            // Open or Execute, depending on the component

            // Check if the query returned any data
            if not Vsubmenucounter_GetNewData.IsEmpty then
            begin
              Vsubmenucounter_GetNewData.Edit;
              try
                // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
                for I := 0 to Vsubmenucounter_GetNewData.FieldCount - 1 do
                begin

                  Vsubmenucounter_GetNewData.Fields[I].Value :=
                    lsubmenucounterForServer.Fields[I].Value;
                end;
                Vsubmenucounter_GetNewData.Post;
              except
                Vsubmenucounter_GetNewData.Cancel;
                raise; // Raise exception to handle errors appropriately
              end;
            end;

            // Move to the next record in Lsubmenucounter
            lsubmenucounterForServer.Next;
          end;


          // After processing all records, show success message

          begin
            // Ensure lsubmenucounterForServer is active (open)
            if not lsubmenucounterForServer.Active then
              lsubmenucounterForServer.Open;

            // Move to the first record
            lsubmenucounterForServer.First;

            // Iterate through each record
            while not lsubmenucounterForServer.Eof do
            begin
              try
                // Put the dataset in edit mode
                lsubmenucounterForServer.Edit;
                // Update the "isdataChanged" column to 0 (assuming "isdataChanged" is a boolean or integer field)
                lsubmenucounterForServer.FieldByName('isdataChanged')
                  .Value := 0;
                // Post changes to the current record
                lsubmenucounterForServer.Post;
              except
                on E: Exception do
                begin
                  lsubmenucounterForServer.Cancel;
                  raise; // Raise exception to handle errors appropriately
                end;
              end;
              // Move to the next record in lsubmenucounterForServer
              lsubmenucounterForServer.Next;
            end;
          end;

          showMessage(' „  ⁄„·Ì… «· —ÕÌ· »‰Ã«Õ');
          lsubmenucounterForServer.Refresh;

          // Refresh the TDBGridEh component
          // rEADYfORsERVER.Refresh;
          // Optionally, add code here to handle the "ÕÿÌÂ« ›Ì «·” Ê—Ì" part
          // Example: Store something in "” Ê—Ì" (assuming it means story or storage)
        end
        else
        begin
          showMessage('·«  ÊÃœ »Ì«‰«  „ «Õ…');
          // Handle case where no records are found
        end;
      end;

    end;

  end;
end;

procedure TDownloadDataFromServer.sBitBtn2Click(Sender: TObject);
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

end.
