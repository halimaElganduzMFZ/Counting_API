unit UFEnterPass;

interface

uses
  StdCtrls, OleCtrls, Buttons, Controls, AppEvnts, sSkinManager, sSkinProvider,
  sBitBtn, Classes, Variants, Graphics, Forms, Dialogs, LMDControl,
  LMDBaseControl, LMDBaseGraphicControl, LMDBaseLabel, LMDCustomLabel, LMDLabel,
  Db, inifiles, FileCtrl, shellapi, MemDS, DBAccess, Uni, UniProvider,
  MySQLUniProvider, VirtualTable, CRBatchMove, DAScript, UniScript, DBClient,
  MConnect, Windows, Messages, SysUtils, Registry, jpeg, DBCtrls, Grids,
  DBGrids,
  frxExportPDF, frxExportHTML, frxExportRTF, frxExportImage, frxExportText,
  frxClass, frxExportCSV, ExtCtrls, sLabel, acAlphaHints, acAlphaImageList,
  System.ImageList, Vcl.ImgList, sPanel, acImage, LayeredForm, acTitleBar,
  acPNG;

type
  TFEnterPass = class(TForm)
    Edit2: TEdit;
    M: TMemo;
    sBitBtn1: TsBitBtn;
    ComboBox1: TComboBox;
    sCharImageList1: TsCharImageList;
    CharList16: TsCharImageList;
    sAlphaHints1: TsAlphaHints;
    Image7: TsAlphaImageList;
    sImage1: TsImage;
    sBitBtn9: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sBitBtn3: TsBitBtn;
    sImage2: TsImage;
    sPanel1: TsPanel;
    ImageList1: TImageList;
    sSkinProvider1: TsSkinProvider;
    sSkinManager1: TsSkinManager;
    sTitleBar2: TsTitleBar;
    sBitBtn4: TsBitBtn;
    Label1: TLabel;
    Query1: TUniQuery;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure GenieShow(M: string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure ApplicationEvents2Message(var Msg: tagMSG; var Handled: Boolean);
    procedure sBitBtn3Click(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
    procedure sBitBtn9Click(Sender: TObject);
    procedure sImage3DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEnterPass: TFEnterPass;
  TypeHrak: string;
  x, ma: integer;
  // Genie :IAgentCtlCharacter;

implementation

uses
  SplashUn, MainUn, DmdUn, DataModuleUn;

{$R *.DFM}

function SetDisplay(x: integer; y: integer): Boolean;
var
  DevMode: TDeviceMode;
begin
  EnumDisplaySettings(nil, 0, DevMode);
  DevMode.dmFields := DM_PELSWIDTH or DM_PELSHEIGHT;
  DevMode.dmPelsWidth := x;
  DevMode.dmPelsHeight := y;
  Result := ChangeDisplaySettings(DevMode, CDS_UPDATEREGISTRY)
    = DISP_CHANGE_SUCCESSFUL;
end;

procedure TFEnterPass.GenieShow(M: string);
begin
  // Genie :=FEnterPass.Agent1.Characters.Character('Genie');
  // Genie.Show(202);
  // Genie.Height:=200;
  // Genie.Speak(M,'');
  // Genie.Hide(3000);
  // raise EAbort.Create('');
  // raise Exception.Create(''+M');
  raise Exception.Create('  ' + M);

end;

procedure TFEnterPass.SpeedButton1Click(Sender: TObject);
begin
  ma := 1;
  // Application.CreateForm(TDmdFm, DmdFm);
  with DmdFm do
  begin
    if DmdFm.Perm.Locate('UserName;pass',
      vararrayof([ComboBox1.Text, Edit2.Text]), []) then
    begin

      { Perm.Locate('UserName',Edit1.Text,[]);
        Hrka.Insert;
        HrkaUser.Value:=SlaheatUserNo.Value;
        HrkaFromTime.Value:=Time;
        HrkaSDate.Value:=Date;
        Hrka.Post; }
      // if DmdFm.PermOutPort.Value = False then
      // raise Exception.Create('Ì« ⁄“Ì“Ì «‰  €Ì— „ŒÊ· ·œŒÊ· ....... („‰ŸÊ„… «·»Ê«»…)');
      case StrToInt(TypeHrak) of

        1:
          begin
            Application.CreateForm(TMainFm, MainFm);
            MainFm.ShowModal;
            MainFm.Free;
          end;

        2:
          begin
            // Application.CreateForm(TFormComPort, FormComPort);
            // FormComPort.ShowModal;
            // FormComPort.Free;
          end;

        3:
          begin
            // Application.CreateForm(TForm1, Form1);
            // Form1.ShowModal;
            // Form1.Free;
          end;

      end;
    end
    else
    begin
      GenieShow('⁄›Ê« ... ﬂ·„… «·„—Ê— √Ê «”„ «·„” Œœ„ Œÿ√ ø');
      x := x + 1;
      // Edit1.Text:='';
      Edit2.Text := '';
      if x > 3 then
      begin
        GenieShow('«‰ Â  «·„Õ«Ê·«  ... €Ì— „ŒÊ· ··œŒÊ·');
        Close;
        // FEnterPass.Close;//--Â‰« Ì „ «€·«ﬁ «·»—‰«„Ã ›Ì Õ«·…  Õﬁﬁ ‘—ÿ ⁄œœ „—«  «·„Õ«Ê·…
      end
      else
      begin
        Edit2.SetFocus;
        // Label1.Caption:='«·„Õ«Ê·…   '  +(IntToStr(X));
        // Label1.Visible:=True;
      end;
    end;

    if BidiMode = BdRighttoleft then
      LoadKeyBoardLayout('00000401', Klf_Activate)

    else
      LoadKeyBoardLayout('00000409', Klf_Activate);
    { ·ﬁ·» «·„ƒ‘— »«··« Ã«Â «·„‰«”» ··« Ã«Â «·‘«‘… }
  end;
end;

procedure TFEnterPass.SpeedButton2Click(Sender: TObject);
begin
  Close
end;

procedure TFEnterPass.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then // -- Enter «–« ÷€ÿ «·„” Œœ„ „› «Õ
  begin
    // SpeedButton1Click(Sender);
    sBitBtn1Click(Sender);
    // -- Ê ‰›Ì– „« ÌÕ ÊÌÂ „‰ «Ã—√  √Ê «Ê«„— SpeedButton1 Ì›Ìœ Â–« «·«„— ›Ì Ã⁄· „‘«—ﬂ… „⁄ ⁄‰’—
  end
  else if Key = #27 then // -- Esc «–« ÷€ÿ «·„” Œœ„ „› «Õ
  begin
    SpeedButton2Click(Sender);
  end
end;

procedure TFEnterPass.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then // -- Enter «–« ÷€ÿ «·„” Œœ„ „› «Õ
  begin
    PerForm(WM_NEXTDLGCTL, 0, 0) // -- ﬁœ„ «·Ï «·«„«„
  end

end;

procedure TFEnterPass.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then // -- Enter «–« ÷€ÿ «·„” Œœ„ „› «Õ
  begin
    PerForm(WM_NEXTDLGCTL, 0, 0) // -- ﬁœ„ «·Ï «·«„«„
  end

end;

procedure TFEnterPass.FormCreate(Sender: TObject);
var

  i: integer;
begin
  // Agent1.Characters.Load('Genie',ExtractFilePath(Application.ExeName)+'Genie.acs');
  // SetDisplay(1024, 768);
  // DateSeparator := '/';
  if BidiMode = BdRighttoleft then
    LoadKeyBoardLayout('00000401', Klf_Activate)
  else
    LoadKeyBoardLayout('00000409', Klf_Activate);

  with TIniFile.Create(changefileext(paramstr(0), '.INI')) do
    try

      TypeHrak := readstring('Data', 'TypeHrak', '');

    finally
    end;

end;

procedure TFEnterPass.FormClose(Sender: TObject; var Action: TCloseAction);
var
  s, t: string;
  s1: string;
  L, CD, Des, Ds: string;
  Yd, Md, Dd: WORD;
begin
{
  with TIniFile.Create(changefileext(paramstr(0), '.INI')) do
    try
      CD := readstring('Data', 'CopyDir', '');
      Des := readstring('Data', 'CopyDir Destenation', '');
      // L   := readstring ('Data', 'Lock All Hrka Every Day', '');
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
    ShellExecute(handle, 'open', 'CpyFls.Bat', '', pchar(Des + '\Copyes'),
      SW_MINIMIZE);
  except
  end;

  try
    // **************************************************************
    s := DateToStr(Date);
    t := DateTimeToStr(Now);
    s := Des + '\Copyes\D' + s;
    while Pos('/', s) > 0 do
      s[Pos('/', s)] := '_';
    while Pos('/', t) > 0 do
      t[Pos('/', t)] := '_';
    while Pos(':', t) > 0 do
      t[Pos(':', t)] := '_';

    if not DirectoryExists(s) then
      CreateDir(s);

  finally
    Application.Terminate;
  end;
 }
end;

procedure TFEnterPass.sBitBtn1Click(Sender: TObject);
begin
  ma := 1;
  // Application.CreateForm(TDmdFm, DmdFm);
  with DmdFm do
  begin
    if DmdFm.Perm.Locate('UserName;pass',
      vararrayof([ComboBox1.Text, Edit2.Text]), []) then
    begin
      { Perm.Locate('UserName',Edit1.Text,[]);
        Hrka.Insert;
        HrkaUser.Value:=SlaheatUserNo.Value;
        HrkaFromTime.Value:=Time;
        HrkaSDate.Value:=Date;
        Hrka.Post; }
      if ((DmdFm.Permsubordination.Value <> 1) and
        (DmdFm.Permsubordination.Value <> 2)) then
        raise Exception.Create
          ('«·”·«„ ⁄·Ìﬂ„ ... «”› Ãœ« ·« Ì„ﬂ‰ﬂ «·œŒÊ· ° Â–« «·‰Ÿ«„ Œ«’ »«·⁄œ Ê«·›—“ ›ﬁÿ');

      // case StrToInt(TypeHrak) of

      // 1:
      // begin
      Application.CreateForm(TMainFm, MainFm);

      MainFm.sEdit1.Clear;
      MainFm.sEdit1.Text := ' «·”·«„ ⁄·Ìﬂ„ «ŒÌ  ' +
        DmdFm.PermUserName.AsString + '  ';
      MainFm.sEdit1.Text := (MainFm.sEdit1.Text) +
        ('  «—ÌŒ «·ÌÊ„   ' + DateToStr(Now) + '  ');
      MainFm.sEdit1.Text := (MainFm.sEdit1.Text) +
        ('  ÊﬁÌ  «·œŒÊ·  ' + TimeToStr(Now) + '  ');
      MainFm.sEdit1.Text := (MainFm.sEdit1.Text) +
        (' ‰ „‰Ï „‰ «··Â ·ﬂ œÊ«„ «·’Õ… Ê«·⁄«›Ì…  ');

      if DmdFm.PermPoapa.Value = False then
        raise Exception.Create
          ('Ì« ⁄“Ì“Ì «‰  €Ì— „ŒÊ· ·œŒÊ· ....... („‰ŸÊ„… «·»Ì«‰)');

      MainFm.ShowModal;
      MainFm.Free;
      // VDateHrakFM.ShowModal;
      // end;

      // 2:
      // begin
      // Application.CreateForm(TFormComPort, FormComPort);
      // FormComPort.ShowModal;
      // FormComPort.Free;
      // end;

      // 3:
      // begin
      // Application.CreateForm(TForm1, Form1);
      // Form1.ShowModal;
      // Form1.Free;
      // end;

      // end;

    end
    else
    begin
      GenieShow('⁄›Ê« ... ﬂ·„… «·„—Ê— √Ê «”„ «·„” Œœ„ Œÿ√ ø');
      x := x + 1;
      // Edit1.Text:='';
      Edit2.Text := '';
      if x > 3 then
      begin
        GenieShow('«‰ Â  «·„Õ«Ê·«  ... €Ì— „ŒÊ· ··œŒÊ·');
        Close;
        // FEnterPass.Close;//--Â‰« Ì „ «€·«ﬁ «·»—‰«„Ã ›Ì Õ«·…  Õﬁﬁ ‘—ÿ ⁄œœ „—«  «·„Õ«Ê·…
      end
      else
      begin
        Edit2.SetFocus;
        // Label1.Caption:='«·„Õ«Ê·…   '  +(IntToStr(X));
        // Label1.Visible:=True;
      end;
    end;

    if BidiMode = BdRighttoleft then
      LoadKeyBoardLayout('00000401', Klf_Activate)
    else
      LoadKeyBoardLayout('00000409', Klf_Activate);
    { ·ﬁ·» «·„ƒ‘— »«··« Ã«Â «·„‰«”» ··« Ã«Â «·‘«‘… }
  end;
end;

procedure TFEnterPass.sBitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFEnterPass.sBitBtn3Click(Sender: TObject);
begin
  // sAlphaHints1.TemplateName := '«·”·«„ ⁄·Ìﬂ„';
  // sAlphaHints1.Execute;
  // ShellExecute(handle, 'open', 'TeamViewerQS.exe','',pchar('.\RepairMySQL'), SW_NORMAL);

end;

procedure TFEnterPass.sBitBtn4Click(Sender: TObject);
var
  VProviderName, VUserNamew, VPasswordw, VServerw, VDatabasew, VPortw: string;
  SMSServer: String;
  i, J: integer;
  SQLText: string;
begin

  // showMessage('” »œ√ ⁄„·Ì…  —ÕÌ· «·»Ì«‰« ');
  with TIniFile.Create(changefileext(paramstr(0), '.INI')) do
  begin
    VProviderName := readstring('Data',
      'ProviderName  for Server Alayaradat', '');
    VUserNamew := readstring('Data', 'Username for Server Alayaradat', '');
    VPasswordw := readstring('Data', 'Password for Server Alayaradat', '');
    VServerw := readstring('Data', 'Server for Server Alayaradat', '');
    VDatabasew := readstring('Data', 'Database for Server Alayaradat', '');
    VPortw := readstring('Data', 'Port for Server Alayaradat', '');

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
          for i := 0 to DataModuleFm.ComponentCount - 1 do
            if (DataModuleFm.Components[i] is TUniTable) and
              ((DataModuleFm.Components[i] as TUniTable).Name <> 'Years') then
            begin

              J := J + 1;

              (DataModuleFm.Components[i] as TUniTable).Open;
            end;

        End;
      except
        ;
        Raise Exception.Create
          ('·« ÌÊÃœ « ’«· »«·ÃÂ«“ «·—∆Ì”Ì Ì« ⁄“Ì“Ì «—ÃÊÊ «·« ’«· »«ﬁ—» ‘»ﬂ… œ«Œ·Ì… ');

      End;
      //
      // showMessage('” »œ√ ⁄„·Ì… «·«” Ã·«» ...');
      with DataModuleFm, DmdFm do
      begin

        // -------  AMBER --------------
        if not Vperm.Active then
          Vperm.Open;

        // Check if Lsubmenucounter has records
        if not Vperm.IsEmpty then
        begin
          // if not Lamber.Active then
          // Lamber.Open;

          // Assign parameters and execute the query
          Perm.Open;
          // Close to clear any previous data
          // Perm.Execute;
          if not Perm.IsEmpty then
          BEGIN
            Perm.First;
            while not Perm.Eof do
            begin
              Perm.Delete;
            END;

            // Lamber.Post ;
          END;
          Vperm.First; // Move to the first record
          // ShowMessage('dddd');
          while not Vperm.Eof do
          begin
            // Open Vsubmenucounter_GetNewData if it's not already open

            // Open or Execute, depending on the component
            // Lunits.Delete;
            // Check if the query returned any data

            Perm.Insert;
            // try
            // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
            for i := 0 to Vperm.FieldCount - 1 do
            begin

              Perm.Fields[i].Value := Vperm.Fields[i].Value;
            end;
            Perm.Post;
            // except
            // Perm.Cancel;
            // raise; // Raise exception to handle errors appropriately
            // end;

            // Move to the next record in Lsubmenucounter
            Vperm.Next;
          end;

          ComboBox1.Clear;

          // DmdFm.Perm.FilterSQL := 'Kzena = true';

          DmdFm.Perm.Refresh;
          DmdFm.Perm.First;
          while not DmdFm.Perm.Eof do
          begin
            // if DmdFm.PermKzena.Value = true then
            // begin
            ComboBox1.Items.Add(DmdFm.PermUserName.Value);
            DmdFm.Perm.Next;
            // end
            // else
            // DmdFm.Perm.Next;
          end;

          // -------  AMBER --------------
          if not VamberForLocal.Active then
            VamberForLocal.Open;

          // Check if Lsubmenucounter has records
          if not VamberForLocal.IsEmpty then
          begin
            // if not Lamber.Active then
            // Lamber.Open;

            // Assign parameters and execute the query
            Lamber.Open;
            // Close to clear any previous data
            Lamber.Execute;
            if not Lamber.IsEmpty then
            BEGIN
              Lamber.First;
              while not Lamber.Eof do
              begin
                Lamber.Delete;

              END;
              // Lamber.Post ;
            END;
            VamberForLocal.First; // Move to the first record
            // ShowMessage('dddd');
            while not VamberForLocal.Eof do
            begin
              // Open Vsubmenucounter_GetNewData if it's not already open

              // Open or Execute, depending on the component
              // Lunits.Delete;
              // Check if the query returned any data

              Lamber.Insert;
              try
                // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
                for i := 0 to VamberForLocal.FieldCount - 1 do
                begin

                  Lamber.Fields[i].Value := VamberForLocal.Fields[i].Value;
                end;
                Lamber.Post;
              except
                Lamber.Cancel;
                // raise; // Raise exception to handle errors appropriately
              end;

              // Move to the next record in Lsubmenucounter
              VamberForLocal.Next;
            end;


            // After processing all records, show success message

            // Refresh the TDBGridEh component
            // rEADYfORsERVER.Refresh;
            // Optionally, add code here to handle the "ÕÿÌÂ« ›Ì «·” Ê—Ì" part
            // Example: Store something in "” Ê—Ì" (assuming it means story or storage)

            // ShowMessage(' „   ⁄„·Ì… «” Ã·«»  »‰Ã«Õ');
            // lsubmenucounterForServer.Refresh;
            // LStopsForShipsForServer.Refresh;
            /// /rEADYfORsERVER.Refresh;
            // stopsForServer.Refresh;

          end;

          // -------  craneoperator --------------
          if not VcraneoperatorForLocal.Active then
            VcraneoperatorForLocal.Open;

          // Check if Lsubmenucounter has records
          if not VcraneoperatorForLocal.IsEmpty then
          begin
            // if not Lcraneoperator.Active then
            Lcraneoperator.Open;

            // Assign parameters and execute the query
            Lcraneoperator.Execute;
            // Close to clear any previous data
            // Lcraneoperator.Open;
            if not Lcraneoperator.IsEmpty then
            BEGIN
              Lcraneoperator.First;
              while not Lcraneoperator.Eof do
              begin
                Lcraneoperator.Delete;

              end;
              // Lamber.Post ;
            END;

            VcraneoperatorForLocal.First; // Move to the first record
            // ShowMessage('dddd');
            while not VcraneoperatorForLocal.Eof do
            begin
              // Open Vsubmenucounter_GetNewData if it's not already open

              // Open or Execute, depending on the component
              // Lunits.Delete;
              // Check if the query returned any data

              Lcraneoperator.Insert;
              try
                // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
                for i := 0 to VcraneoperatorForLocal.FieldCount - 1 do
                begin

                  Lcraneoperator.Fields[i].Value :=
                    VcraneoperatorForLocal.Fields[i].Value;
                end;
                Lcraneoperator.Post;
              except
                Lcraneoperator.Cancel;
                // raise; // Raise exception to handle errors appropriately
              end;

              // Move to the next record in Lsubmenucounter
              VcraneoperatorForLocal.Next;
            end;


            // After processing all records, show success message

            // Refresh the TDBGridEh component
            // rEADYfORsERVER.Refresh;
            // Optionally, add code here to handle the "ÕÿÌÂ« ›Ì «·” Ê—Ì" part
            // Example: Store something in "” Ê—Ì" (assuming it means story or storage)

            // ShowMessage(' „   ⁄„·Ì… «” Ã·«»  »‰Ã«Õ');
            // lsubmenucounterForServer.Refresh;
            // LStopsForShipsForServer.Refresh;
            /// /rEADYfORsERVER.Refresh;
            // stopsForServer.Refresh;

          end;

          // Ensure Lsubmenucounter is active (open)
          { if not Vunits.Active then
            Vunits.Open;
            // showMessage('«‰« Â‰« Ì« Õ·Ì„…');
            // Check if Lsubmenucounter has records
            if not Vunits.IsEmpty then
            begin
            // if not Lunits.Active then
            // Lunits.Open;

            // Assign parameters and execute the query
            Lunits.Open;
            // Close to clear any previous data
            Lunits.Execute;
            if not Lunits.IsEmpty then
            BEGIN
            Lunits.First;
            while not Lunits.Eof do
            begin
            Lunits.Delete;

            end;
            // Lunits.Post;
            END;
            Vunits.First; // Move to the first record
            // ShowMessage('dddd');
            while not Vunits.Eof do
            begin
            // Open Vsubmenucounter_GetNewData if it's not already open

            // Open or Execute, depending on the component
            // Lunits.Delete;
            // Check if the query returned any data

            Lunits.Insert;
            try
            // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
            for i := 0 to Vunits.FieldCount - 1 do
            begin

            Lunits.Fields[i].Value := Vunits.Fields[i].Value;
            end;
            Lunits.Post;
            except
            Lunits.Cancel;
            // raise; // Raise exception to handle errors appropriately
            end;

            // Move to the next record in Lsubmenucounter
            Vunits.Next;
            end;

            // showMessage('«‰« Â‰« Ì« unit');
            // After processing all records, show success message

            // Refresh the TDBGridEh component
            // rEADYfORsERVER.Refresh;
            // Optionally, add code here to handle the "ÕÿÌÂ« ›Ì «·” Ê—Ì" part
            // Example: Store something in "” Ê—Ì" (assuming it means story or storage)

            // ShowMessage(' „   ⁄„·Ì… «” Ã·«»  »‰Ã«Õ');
            // lsubmenucounterForServer.Refresh;
            // LStopsForShipsForServer.Refresh;
            /// /rEADYfORsERVER.Refresh;
            // stopsForServer.Refresh;
            /// //////////////
            end; }

          // -------  SIDEWALK --------------
          if not VsidewalkForServer.Active then
            VsidewalkForServer.Open;
          // ShowMessage('dddd');
          // Check if Lsubmenucounter has records
          if not VsidewalkForServer.IsEmpty then
          begin
            // if not Lsidewalk.Active then
            // Lsidewalk.Open;

            // Assign parameters and execute the query
            Lsidewalk.Open;
            // Close to clear any previous data
            Lsidewalk.Execute;
            if not Lsidewalk.IsEmpty then
            BEGIN
              Lsidewalk.First;
              while not Lsidewalk.Eof do
              begin
                Lsidewalk.Delete;

                // Lunits.Post;
              END;
            END;

            VsidewalkForServer.First; // Move to the first record
            // ShowMessage('dddd');
            while not VsidewalkForServer.Eof do
            begin
              // Open Vsubmenucounter_GetNewData if it's not already open

              // Open or Execute, depending on the component
              // Lunits.Delete;
              // Check if the query returned any data

              Lsidewalk.Insert;
              try
                // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
                for i := 0 to VsidewalkForServer.FieldCount - 1 do
                begin

                  Lsidewalk.Fields[i].Value :=
                    VsidewalkForServer.Fields[i].Value;
                end;
                Lsidewalk.Post;
              except
                Lsidewalk.Cancel;
                // raise; // Raise exception to handle errors appropriately
              end;

              // Move to the next record in Lsubmenucounter
              VsidewalkForServer.Next;
            end;
          END;
          // -------  counter --------------
          if not VcountersForLocal.Active then
            VcountersForLocal.Open;
          // ShowMessage('dddd');
          // Check if Lsubmenucounter has records
          if not VcountersForLocal.IsEmpty then
          begin
            // if not Lcounters.Active then
            // Lcounters.Open;

            // Assign parameters and execute the query
            Lcounters.Open;
            // Close to clear any previous data
            Lcounters.Execute;
            if not Lcounters.IsEmpty then
            BEGIN
              Lcounters.First;
              while not Lcounters.Eof do
              begin
                Lcounters.Delete;

                // Lunits.Post;
              END;
            end;

            VcountersForLocal.First; // Move to the first record
            // ShowMessage('dddd');
            while not VcountersForLocal.Eof do
            begin
              // Open Vsubmenucounter_GetNewData if it's not already open

              // Open or Execute, depending on the component
              // Lunits.Delete;
              // Check if the query returned any data

              Lcounters.Insert;
              try
                // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
                for i := 0 to VcountersForLocal.FieldCount - 1 do
                begin

                  Lcounters.Fields[i].Value := VcountersForLocal.Fields
                    [i].Value;
                end;
                Lcounters.Post;
              except
                Lcounters.Cancel;
                // raise; // Raise exception to handle errors appropriately
              end;

              // Move to the next record in Lsubmenucounter
              VcountersForLocal.Next;
            end;

            // After processing all records, show success message

            // Refresh the TDBGridEh component
            // rEADYfORsERVER.Refresh;
            // Optionally, add code here to handle the "ÕÿÌÂ« ›Ì «·” Ê—Ì" part
            // Example: Store something in "” Ê—Ì" (assuming it means story or storage)

            // ShowMessage(' „   ⁄„·Ì… «” Ã·«»  »‰Ã«Õ');
            // lsubmenucounterForServer.Refresh;
            // LStopsForShipsForServer.Refresh;
            /// /rEADYfORsERVER.Refresh;
            // stopsForServer.Refresh;

          end;

          //
          // -------  AMBER --------------
          if not VamberForLocal.Active then
            VamberForLocal.Open;

          // Check if Lsubmenucounter has records
          if not VamberForLocal.IsEmpty then
          begin
            // if not Lamber.Active then
            // Lamber.Open;

            // Assign parameters and execute the query
            Lamber.Open;
            // Close to clear any previous data
            Lamber.Execute;
            if not Lamber.IsEmpty then
            BEGIN
              Lamber.First;
              while not Lamber.Eof do
              begin
                Lamber.Delete;

              END;
              // Lamber.Post ;
            END;
            VamberForLocal.First; // Move to the first record
            // ShowMessage('dddd');
            while not VamberForLocal.Eof do
            begin
              // Open Vsubmenucounter_GetNewData if it's not already open

              // Open or Execute, depending on the component
              // Lunits.Delete;
              // Check if the query returned any data

              Lamber.Insert;
              try
                // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
                for i := 0 to VamberForLocal.FieldCount - 1 do
                begin

                  Lamber.Fields[i].Value := VamberForLocal.Fields[i].Value;
                end;
                Lamber.Post;
              except
                Lamber.Cancel;
                // raise; // Raise exception to handle errors appropriately
              end;

              // Move to the next record in Lsubmenucounter
              VamberForLocal.Next;
            end;


            // After processing all records, show success message

            // Refresh the TDBGridEh component
            // rEADYfORsERVER.Refresh;
            // Optionally, add code here to handle the "ÕÿÌÂ« ›Ì «·” Ê—Ì" part
            // Example: Store something in "” Ê—Ì" (assuming it means story or storage)

            // ShowMessage(' „   ⁄„·Ì… «” Ã·«»  »‰Ã«Õ');
            // lsubmenucounterForServer.Refresh;
            // LStopsForShipsForServer.Refresh;
            /// /rEADYfORsERVER.Refresh;
            // stopsForServer.Refresh;

          end;

          // -------  «·›—ﬁ «·«‰ «ÃÌ… --------------
          if not VbandsupervisorForLocal.Active then
            VbandsupervisorForLocal.Open;

          if not VbandsupervisorForLocal.IsEmpty then
          begin

            Lbandsupervisor.Open;

            Lbandsupervisor.Execute;
            if not Lbandsupervisor.IsEmpty then
            BEGIN
              Lbandsupervisor.First;
              while not Lbandsupervisor.Eof do
              begin
                Lbandsupervisor.Delete;

              END;

            END;
            VbandsupervisorForLocal.First; // Move to the first record

            while not VbandsupervisorForLocal.Eof do
            begin

              Lbandsupervisor.Insert;
              try
                // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
                for i := 0 to VbandsupervisorForLocal.FieldCount - 1 do
                begin

                  Lbandsupervisor.Fields[i].Value :=
                    VbandsupervisorForLocal.Fields[i].Value;
                end;
                Lbandsupervisor.Post;
              except
                Lbandsupervisor.Cancel;
                // raise; // Raise exception to handle errors appropriately
              end;

              // Move to the next record in Lsubmenucounter
              VbandsupervisorForLocal.Next;
            end;

          end;

          //
          //
          // -------  crane --------------
          if not VcraneForLocal.Active then
            VcraneForLocal.Open;

          // Check if Lsubmenucounter has records
          if not VcraneForLocal.IsEmpty then
          begin
            // if not Lcrane.Active then
            // Lcrane.Open;

            // Assign parameters and execute the query
            Lcrane.Open;
            // Close to clear any previous data
            Lcrane.Execute;
            if not Lcrane.IsEmpty then
            BEGIN
              Lcrane.First;
              while not Lcrane.Eof do
              begin
                Lcrane.Delete;

              END;
              // Lamber.Post ;
            END;
            VcraneForLocal.First; // Move to the first record
            // ShowMessage('dddd');
            while not VcraneForLocal.Eof do
            begin
              // Open Vsubmenucounter_GetNewData if it's not already open

              // Open or Execute, depending on the component
              // Lunits.Delete;
              // Check if the query returned any data

              Lcrane.Insert;
              try
                // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
                for i := 0 to VcraneForLocal.FieldCount - 1 do
                begin

                  Lcrane.Fields[i].Value := VcraneForLocal.Fields[i].Value;
                end;
                Lcrane.Post;
              except
                Lcrane.Cancel;
                // raise; // Raise exception to handle errors appropriately
              end;

              // Move to the next record in Lsubmenucounter
              VcraneForLocal.Next;
            end;


            // After processing all records, show success message

            // Refresh the TDBGridEh component
            // rEADYfORsERVER.Refresh;
            // Optionally, add code here to handle the "ÕÿÌÂ« ›Ì «·” Ê—Ì" part
            // Example: Store something in "” Ê—Ì" (assuming it means story or storage)

            // ShowMessage(' „   ⁄„·Ì… «” Ã·«»  »‰Ã«Õ');
            // lsubmenucounterForServer.Refresh;
            // LStopsForShipsForServer.Refresh;
            /// /rEADYfORsERVER.Refresh;
            // stopsForServer.Refresh;

          end;

          // -------  harm --------------
          if not VharmForLocal.Active then
            VharmForLocal.Open;

          // Check if Lsubmenucounter has records
          if not VharmForLocal.IsEmpty then
          begin
            // if not LHARM.Active then
            // LHARM.Open;

            // Assign parameters and execute the query
            LHARM.Open;
            // Close to clear any previous data
            LHARM.Execute;
            if not LHARM.IsEmpty then
            BEGIN
              LHARM.First;
              while not LHARM.Eof do
              begin
                LHARM.Delete;

              END;
              // Lamber.Post ;
            END;
            VharmForLocal.First; // Move to the first record
            // ShowMessage('dddd');
            while not VharmForLocal.Eof do
            begin
              // Open Vsubmenucounter_GetNewData if it's not already open

              // Open or Execute, depending on the component
              // Lunits.Delete;
              // Check if the query returned any data

              LHARM.Insert;
              try
                // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
                for i := 0 to VharmForLocal.FieldCount - 1 do
                begin

                  LHARM.Fields[i].Value := VharmForLocal.Fields[i].Value;
                end;
                LHARM.Post;
              except
                LHARM.Cancel;
                // raise; // Raise exception to handle errors appropriately
              end;

              // Move to the next record in Lsubmenucounter
              VharmForLocal.Next;
            end;


            // After processing all records, show success message

            // Refresh the TDBGridEh component
            // rEADYfORsERVER.Refresh;
            // Optionally, add code here to handle the "ÕÿÌÂ« ›Ì «·” Ê—Ì" part
            // Example: Store something in "” Ê—Ì" (assuming it means story or storage)

            // ShowMessage(' „   ⁄„·Ì… «” Ã·«»  »‰Ã«Õ');
            // lsubmenucounterForServer.Refresh;
            // LStopsForShipsForServer.Refresh;
            /// /rEADYfORsERVER.Refresh;
            // stopsForServer.Refresh;

          end;

          // After processing all records, show success message

          // Refresh the TDBGridEh component
          // rEADYfORsERVER.Refresh;
          // Optionally, add code here to handle the "ÕÿÌÂ« ›Ì «·” Ê—Ì" part
          // Example: Store something in "” Ê—Ì" (assuming it means story or storage)

          // ShowMessage(' „   ⁄„·Ì… «” Ã·«»  »‰Ã«Õ');
          // lsubmenucounterForServer.Refresh;
          // LStopsForShipsForServer.Refresh;
          /// /rEADYfORsERVER.Refresh;
          // stopsForServer.Refresh;

        end;
        showMessage(' „  ⁄„·Ì… «·«” Ã·«» »‰Ã‹‹‹‹‹‹«Õ')
      end;
      // showMessage(' „  ⁄„·Ì… «·«” Ã·«» »‰Ã‹‹‹‹‹‹«Õ');
      ComboBox1.Text := '';
      Edit2.Text := '';
    end;
  end;

end;

procedure TFEnterPass.sBitBtn9Click(Sender: TObject);
begin
  Query1.Close;
  Query1.SQL.Text := 'DELETE FROM hraktemp ;';
  Query1.Execute;

  Close;
end;

procedure TFEnterPass.sImage3DblClick(Sender: TObject);
begin
  Close;
end;

procedure TFEnterPass.FormShow(Sender: TObject);
begin
  DataModuleFm.DBServer.Disconnect;
  ComboBox1.Clear;

  // DmdFm.Perm.FilterSQL := 'Kzena = true';

  DmdFm.Perm.Refresh;
  DmdFm.Perm.First;
  while not DmdFm.Perm.Eof do
  begin
    // if DmdFm.PermKzena.Value = true then
    // begin
    ComboBox1.Items.Add(DmdFm.PermUserName.Value);
    DmdFm.Perm.Next;
    // end
    // else
    // DmdFm.Perm.Next;
  end;

  // sBitBtn4Click(Sender);

end;

procedure TFEnterPass.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
var
  ErrorLogFileName: string;
  ErrorFile: TextFile;
  ErrorData: string;
begin
  ErrorLogFileName := changefileext(Application.ExeName, '.error.log');
  AssignFile(ErrorFile, ErrorLogFileName);

  // either create an error log file, or append to an existing one
  if FileExists(ErrorLogFileName) then
    Append(ErrorFile)
  else
    Rewrite(ErrorFile);

  try
    // add the current date/time and the exception message to the log
    ErrorData := Format('%s : %s', [DateTimeToStr(Now), E.Message]);
    WriteLn(ErrorFile, ErrorData);
  finally
    CloseFile(ErrorFile)
  end;

  // Show the exception
  Application.ShowException(E);

end;

procedure TFEnterPass.ApplicationEvents2Message(var Msg: tagMSG;
  var Handled: Boolean);
var
  i: SmallInt;
begin
  if Msg.Message = WM_MOUSEWHEEL then
  begin
    Msg.Message := WM_KEYDOWN;
    Msg.lParam := 0;
    i := HiWord(Msg.wParam);
    if i > 0 then
      Msg.wParam := VK_UP
    else
      Msg.wParam := VK_DOWN;

    Handled := False;
  end;

end;

end.
