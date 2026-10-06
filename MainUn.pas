unit MainUn;

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
  sMaskEdit, sCustomComboEdit, sToolEdit, sDBDateEdit, sDBEdit,
  VclTee.TeeGDIPlus, VclTee.TeEngine, VclTee.TeeProcs, VclTee.Chart,
  VclTee.Series, sGroupBox, sSpinEdit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinWXI, dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit,
  cxSpinEdit, cxTimeEdit, cxDBEdit;

type
  TMainFm = class(TForm)
    sAlphaImageList1: TsAlphaImageList;
    sAlphaImageList2: TsAlphaImageList;
    sBitBtn13: TsBitBtn;
    sBitBtn12: TsBitBtn;
    sBitBtn1: TsBitBtn;
    sBitBtn4: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sBitBtn5: TsBitBtn;
    sBitBtn6: TsBitBtn;
    sBitBtn7: TsBitBtn;
    sBitBtn9: TsBitBtn;
    sBitBtn10: TsBitBtn;
    sBitBtn11: TsBitBtn;
    sDBText1: TsDBText;
    sDBText2: TsDBText;
    sEdit1: TsEdit;
    SourceQuery: TUniScript;
    DestinationQuery: TUniScript;
    sBitBtn3: TsBitBtn;
    sMemo1: TsMemo;
    UniScript1: TUniScript;
    DBGridEh2: TDBGridEh;
    sBitBtn8: TsBitBtn;
    stopsForShip: TsBitBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Query1: TUniQuery;
    Chart1: TChart;
    Chart2: TChart;
    Chart3: TChart;
    Label2: TLabel;
    Chart4: TChart;
    sBitBtn15: TsBitBtn;
    sBitBtn16: TsBitBtn;
    sBitBtn17: TsBitBtn;
    sBitBtn14: TsBitBtn;
    sBitBtn18: TsBitBtn;
    sBitBtn20: TsBitBtn;
    sBitBtn21: TsBitBtn;
    sBitBtn19: TsBitBtn;
    sBitBtn22: TsBitBtn;
    sBitBtn23: TsBitBtn;
    procedure sBitBtn1Click(Sender: TObject);
    procedure CopyDataBetweenTables;
    procedure sBitBtn12Click(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sBitBtn8Click(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
    procedure stopsForShipClick(Sender: TObject);
    procedure sBitBtn11Click(Sender: TObject);
    procedure sBitBtn5Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sBitBtn6Click(Sender: TObject);
    procedure sBitBtn7Click(Sender: TObject);
    procedure sBitBtn9Click(Sender: TObject);
    procedure sBitBtn10Click(Sender: TObject);
    procedure sBitBtn14Click(Sender: TObject);
    procedure sBitBtn15Click(Sender: TObject);
    procedure sBitBtn16Click(Sender: TObject);
    procedure sBitBtn17Click(Sender: TObject);
    procedure sBitBtn19Click(Sender: TObject);
    procedure sBitBtn20Click(Sender: TObject);
    procedure sBitBtn21Click(Sender: TObject);
    procedure DBGridEh2DblClick(Sender: TObject);
    procedure sBitBtn22Click(Sender: TObject);
    procedure sBitBtn23Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainFm: TMainFm;

implementation

{$R *.dfm}

uses DmdUn, DataModuleUn, DateUtils, InvitationUn, Flight_MovementUn, Unit1,
  Unit2,
  Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10, shiftsUnit,
  shipCoversUnit, userTyping, ship_starts_and_stops, Unit15, Unit16, Unit17;

procedure TMainFm.CopyDataBetweenTables;
begin
  //  ÂÌ∆… «·« ’«· »ﬁ«⁄œ… «·»Ì«‰« 
  SourceQuery.SQL.Clear;
  DestinationQuery.SQL.Clear;
  try
    // SourceQuery.SQLConnection := YourSourceDBConnection; // «Õ· „ﬂ«‰ YourSourceDBConnection »«·« ’«· «·Œ«’ »ﬁ«⁄œ… «·»Ì«‰«  «·„’œ—
    // DestinationQuery.SQLConnection := YourDestinationDBConnection; // «Õ· „ﬂ«‰ YourDestinationDBConnection »«·« ’«· «·Œ«’ »ﬁ«⁄œ… «·»Ì«‰«  «·Âœ›

    // «” ⁄·«„ SQL ·«” —œ«œ «·»Ì«‰«  „‰ «·ÃœÊ· «·„’œ—
    SourceQuery.SQL.Text := 'SELECT * FROM harm';
    // «Õ· „ﬂ«‰ SourceTable »«·ÃœÊ· «·„’œ—

    // «” ⁄·«„ SQL ·≈œ—«Ã «·»Ì«‰«  ›Ì «·ÃœÊ· «·Âœ›
    DestinationQuery.SQL.Text := 'INSERT INTO harm  ' + SourceQuery.SQL.Text;
    // «Õ· „ﬂ«‰ DestinationTable »«·ÃœÊ· «·Âœ›

    //  ‰›Ì– «·«” ⁄·«„« 
    SourceQuery.Execute;
    DestinationQuery.Execute;

    ShowMessage(' „ ‰”Œ «·»Ì«‰«  »‰Ã«Õ!');
  finally
    SourceQuery.Free;
    DestinationQuery.Free;
  end;
end;

// «” Œœ„ «·œ«·…
procedure CreateFolderIfNotExists(const Path: string);
begin
  if not DirectoryExists(Path) then
  begin
    if ForceDirectories(Path) then
      // ShowMessage('Directory created successfully.')
    else
      // ShowMessage('Failed to create directory.');
  end
  else
  begin
    // ShowMessage('Directory already exists.');
  end;
end;

procedure TMainFm.DBGridEh2DblClick(Sender: TObject);
var
  FolderPath, SQLText: string;
  BarSeries: TBarSeries;
  BarColor: TColor;
begin
  DBGridEh2.Enabled := false;
  sBitBtn17.Enabled := true;
  sBitBtn18.Enabled := true;
  stopsForShip.Enabled := true;
  sBitBtn16.Enabled := true;
  sBitBtn4.Enabled := true;
  sBitBtn15.Enabled := true;
  sBitBtn20.Enabled := true;
  sBitBtn21.Enabled := true;
  sBitBtn23.Enabled := true;
  SQLText := 'SELECT COUNT(*) AS Count, ' + 'CASE ' +
    '  WHEN RF = 1 THEN ''⁄«œÌ…'' ' + '  WHEN RF = 2 THEN ''À·«Ã…'' ' +
    'END AS RFtxt ' + 'FROM submenucounter ' + ' ' +
    'WHERE RF IS NOT NULL  AND  NumMainList=' +
    DmdFm.LsortingtripnumAuto.AsString + ' GROUP BY RF';

  // Set up the query
  Query1.Close;
  Query1.SQL.Text := SQLText;
  DownloadDataFromServer.Edit1.Text := '2';
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
      MainFm.Chart1.Axes.Bottom.Title.Font.Name := 'Tajawal';
      MainFm.Chart1.Axes.Bottom.LabelsFont.Name := 'Tajawal';

      MainFm.Chart1.AddSeries(BarSeries);
      Query1.First;
      while not Query1.Eof do
      begin
        if Query1.FieldByName('RFtxt').AsString = '⁄«œÌ…' then
          BarColor := clRed // Color for '⁄«œÌ…'
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
    'select count(*)AS Count,CASE WHEN Status_type = 1 THEN ''„⁄»√…'' WHEN Status_type =2  THEN ''›«—€…'' end AS RFtxt FROM submenucounter  WHERE Status_type IS NOT NULL AND  NumMainList='
    + DmdFm.LsortingtripnumAuto.AsString + ' GROUP BY Status_type';

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
      MainFm.Chart2.SeriesList.Clear;

      BarSeries := TBarSeries.Create(Self);
      MainFm.Chart2.Legend.Font.Name := 'Tajawal';
      BarSeries.Marks.Font.Name := 'Tajawal';
      MainFm.Chart2.Legend.Font.Name := 'Tajawal';
      MainFm.Chart2.Axes.Left.Title.Font.Name := 'Tajawal';
      MainFm.Chart2.Axes.Left.LabelsFont.Name := 'Tajawal';

      // Chart1.Axes.Bottom.Title.Caption := 'RF Text';
      MainFm.Chart2.Axes.Bottom.Title.Font.Name := 'Tajawal';
      MainFm.Chart2.Axes.Bottom.LabelsFont.Name := 'Tajawal';

      MainFm.Chart2.AddSeries(BarSeries);
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
  // 'SELECT COUNT(*) AS Count, CASE WHEN Handling_type = 1 THEN '' ›—Ì€'' WHEN Handling_type = 2 THEN ''‘Õ‰'' WHEN Handling_type = 3 THEN '' —«‰“Ì   ›—Ì€'' WHEN Handling_type = 4 THEN '' —«‰“Ì  ‘Õ‰'' WHEN Handling_type = 5 THEN '' —ÕÌ·'' WHEN Handling_type = 6 THEN ''«·ÕœÌœ Ê«·’·»'' WHEN Handling_type = 7 THEN ''√Œ—Ï'' ELSE ''€Ì— „Õœœ'' END AS RFtxt FROM submenucounter WHERE Handling_type IS NOT NULL AND   NumMainList='
  // + DmdFm.LsortingtripnumAuto.AsString + '  GROUP BY Handling_type';

  Query1.Close;
  SQLText := 'SELECT COUNT(*) AS Count, ' +
    'CASE WHEN Handling_type = 1 THEN '' ›—Ì€'' ' +
    'WHEN Handling_type = 2 THEN ''‘Õ‰'' ' +
    'WHEN Handling_type = 3 THEN '' —«‰“Ì   ›—Ì€'' ' +
    'WHEN Handling_type = 4 THEN '' —«‰“Ì  ‘Õ‰'' ' +
    'WHEN Handling_type = 5 THEN '' —ÕÌ·'' ' +
    'WHEN Handling_type = 6 THEN ''«·ÕœÌœ Ê«·’·»'' ' +
    'WHEN Handling_type = 7 THEN ''√Œ—Ï'' ' + 'ELSE ''€Ì— „Õœœ'' END AS RFtxt '
    + 'FROM submenucounter ' + 'WHERE Handling_type IS NOT NULL ' +
    'AND NumMainList = ' + QuotedStr(DmdFm.LsortingtripnumAuto.AsString) + ' ' +
    'GROUP BY Handling_type';
  Query1.SQL.Text := SQLText;

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
      MainFm.Chart3.SeriesList.Clear;

      BarSeries := TBarSeries.Create(Self);
      MainFm.Chart3.Legend.Font.Name := 'Tajawal';
      BarSeries.Marks.Font.Name := 'Tajawal';
      MainFm.Chart3.Legend.Font.Name := 'Tajawal';
      MainFm.Chart3.Axes.Left.Title.Font.Name := 'Tajawal';
      MainFm.Chart3.Axes.Left.LabelsFont.Name := 'Tajawal';

      // Chart1.Axes.Bottom.Title.Caption := 'RF Text';
      MainFm.Chart3.Axes.Bottom.Title.Font.Name := 'Tajawal';
      MainFm.Chart3.Axes.Bottom.LabelsFont.Name := 'Tajawal';

      MainFm.Chart3.AddSeries(BarSeries);
      Query1.First;
      while not Query1.Eof do
      begin

        BarSeries.Add(Query1.FieldByName('Count').AsInteger,
          Query1.FieldByName('RFtxt').AsString);

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
    'SELECT COUNT(*) AS Count,CASE WHEN `condition` = 1 THEN ''„ ”·„…'' WHEN `condition` = 2 THEN ''⁄Ã“'' END AS `condition` FROM submenucounter  WHERE `condition` IS NOT NULL   AND  NumMainList='
    + DmdFm.LsortingtripnumAuto.AsString + ' GROUP BY `condition`';
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
      MainFm.Chart4.SeriesList.Clear;

      BarSeries := TBarSeries.Create(Self);
      MainFm.Chart4.Legend.Font.Name := 'Tajawal';
      BarSeries.Marks.Font.Name := 'Tajawal';
      MainFm.Chart4.Legend.Font.Name := 'Tajawal';
      MainFm.Chart4.Axes.Left.Title.Font.Name := 'Tajawal';
      MainFm.Chart4.Axes.Left.LabelsFont.Name := 'Tajawal';

      // Chart1.Axes.Bottom.Title.Caption := 'RF Text';
      MainFm.Chart4.Axes.Bottom.Title.Font.Name := 'Tajawal';
      MainFm.Chart4.Axes.Bottom.LabelsFont.Name := 'Tajawal';

      MainFm.Chart4.AddSeries(BarSeries);
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

procedure TMainFm.FormShow(Sender: TObject);
var
  FolderPath, SQLText: string;
  BarSeries: TBarSeries;
  BarColor: TColor;
begin
  with DmdFm do
  begin

    if not Starts_And_Stops_Query.Active then
      Starts_And_Stops_Query.Open;
    Starts_And_Stops_Query.Close;
    Starts_And_Stops_Query.ParamByName('VNum').Value :=
      LsortingtripAutoUID.Value;
    Starts_And_Stops_Query.Execute;
  end;
  Flight_MovementFm.ForEdit.Text := '0';
  FolderPath := GetCurrentDir + '\harm_imgs\';
  CreateFolderIfNotExists(FolderPath);
  SQLText := 'SELECT COUNT(*) AS Count, ' + 'CASE ' +
    '  WHEN RF = 1 THEN ''⁄«œÌ…'' ' + '  WHEN RF = 2 THEN ''À·«Ã…'' ' +
    'END AS RFtxt ' + 'FROM submenucounter ' + ' ' +
    'WHERE RF IS NOT NULL  AND  NumMainList=' +
    DmdFm.LsortingtripnumAuto.AsString + ' GROUP BY RF';

  // Set up the query
  Query1.Close;
  Query1.SQL.Text := SQLText;
  DownloadDataFromServer.Edit1.Text := '2';
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
      MainFm.Chart1.Axes.Bottom.Title.Font.Name := 'Tajawal';
      MainFm.Chart1.Axes.Bottom.LabelsFont.Name := 'Tajawal';

      MainFm.Chart1.AddSeries(BarSeries);
      Query1.First;
      while not Query1.Eof do
      begin
        if Query1.FieldByName('RFtxt').AsString = '⁄«œÌ…' then
          BarColor := clRed // Color for '⁄«œÌ…'
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
    'select count(*)AS Count,CASE WHEN Status_type = 1 THEN ''„⁄»√…'' WHEN Status_type =2  THEN ''›«—€…'' end AS RFtxt FROM submenucounter  WHERE Status_type IS NOT NULL AND  NumMainList='
    + DmdFm.LsortingtripnumAuto.AsString + ' GROUP BY Status_type';

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
      MainFm.Chart2.SeriesList.Clear;

      BarSeries := TBarSeries.Create(Self);
      MainFm.Chart2.Legend.Font.Name := 'Tajawal';
      BarSeries.Marks.Font.Name := 'Tajawal';
      MainFm.Chart2.Legend.Font.Name := 'Tajawal';
      MainFm.Chart2.Axes.Left.Title.Font.Name := 'Tajawal';
      MainFm.Chart2.Axes.Left.LabelsFont.Name := 'Tajawal';

      // Chart1.Axes.Bottom.Title.Caption := 'RF Text';
      MainFm.Chart2.Axes.Bottom.Title.Font.Name := 'Tajawal';
      MainFm.Chart2.Axes.Bottom.LabelsFont.Name := 'Tajawal';

      MainFm.Chart2.AddSeries(BarSeries);
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
  SQLText := 'SELECT COUNT(*) AS Count, ' +
    'CASE WHEN Handling_type = 1 THEN '' ›—Ì€'' ' +
    'WHEN Handling_type = 2 THEN ''‘Õ‰'' ' +
    'WHEN Handling_type = 3 THEN '' —«‰“Ì   ›—Ì€'' ' +
    'WHEN Handling_type = 4 THEN '' —«‰“Ì  ‘Õ‰'' ' +
    'WHEN Handling_type = 5 THEN '' —ÕÌ·'' ' +
    'WHEN Handling_type = 6 THEN ''«·ÕœÌœ Ê«·’·»'' ' +
    'WHEN Handling_type = 7 THEN ''√Œ—Ï'' ' + 'ELSE ''€Ì— „Õœœ'' END AS RFtxt '
    + 'FROM submenucounter ' + 'WHERE Handling_type IS NOT NULL ' +
    'AND NumMainList = ' + QuotedStr(DmdFm.LsortingtripnumAuto.AsString) + ' ' +
    'GROUP BY Handling_type';
  Query1.SQL.Text := SQLText;

  // Query1.Close;
  // SQLText :=
  // 'SELECT COUNT(*) AS Count, CASE WHEN Handling_type = 1 THEN '' ›—Ì€'' WHEN Handling_type = 2 THEN ''‘Õ‰'' WHEN Handling_type = 3 THEN '' —«‰“Ì   ›—Ì€'' WHEN Handling_type = 4 THEN '' —«‰“Ì  ‘Õ‰'' WHEN Handling_type = 5 THEN '' —ÕÌ·'' WHEN Handling_type = 6 THEN ''«·ÕœÌœ Ê«·’·»'' WHEN Handling_type = 7 THEN ''√Œ—Ï'' ELSE ''€Ì— „Õœœ'' END AS RFtxt FROM submenucounter WHERE Handling_type IS NOT NULL AND   NumMainList='
  // + DmdFm.LsortingtripnumAuto.AsString + '  GROUP BY Handling_type';
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
      MainFm.Chart3.SeriesList.Clear;

      BarSeries := TBarSeries.Create(Self);
      MainFm.Chart3.Legend.Font.Name := 'Tajawal';
      BarSeries.Marks.Font.Name := 'Tajawal';
      MainFm.Chart3.Legend.Font.Name := 'Tajawal';
      MainFm.Chart3.Axes.Left.Title.Font.Name := 'Tajawal';
      MainFm.Chart3.Axes.Left.LabelsFont.Name := 'Tajawal';

      // Chart1.Axes.Bottom.Title.Caption := 'RF Text';
      MainFm.Chart3.Axes.Bottom.Title.Font.Name := 'Tajawal';
      MainFm.Chart3.Axes.Bottom.LabelsFont.Name := 'Tajawal';

      MainFm.Chart3.AddSeries(BarSeries);
      Query1.First;
      while not Query1.Eof do
      begin

        BarSeries.Add(Query1.FieldByName('Count').AsInteger,
          Query1.FieldByName('RFtxt').AsString);

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
    'SELECT COUNT(*) AS Count,CASE WHEN `condition` = 1 THEN ''„ ”·„…'' WHEN `condition` = 2 THEN ''⁄Ã“'' END AS `condition` FROM submenucounter  WHERE `condition` IS NOT NULL   AND  NumMainList='
    + DmdFm.LsortingtripnumAuto.AsString + ' GROUP BY `condition`';
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
      MainFm.Chart4.SeriesList.Clear;

      BarSeries := TBarSeries.Create(Self);
      MainFm.Chart4.Legend.Font.Name := 'Tajawal';
      BarSeries.Marks.Font.Name := 'Tajawal';
      MainFm.Chart4.Legend.Font.Name := 'Tajawal';
      MainFm.Chart4.Axes.Left.Title.Font.Name := 'Tajawal';
      MainFm.Chart4.Axes.Left.LabelsFont.Name := 'Tajawal';

      // Chart1.Axes.Bottom.Title.Caption := 'RF Text';
      MainFm.Chart4.Axes.Bottom.Title.Font.Name := 'Tajawal';
      MainFm.Chart4.Axes.Bottom.LabelsFont.Name := 'Tajawal';

      MainFm.Chart4.AddSeries(BarSeries);
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

  // Set up the query

  with DmdFm do
  begin

    Lcraneoperator.Close;
    Lcraneoperator.Execute;
    Lamber.Close;
    Lamber.Execute;
    Lcounters.Close;
    Lcounters.Execute;
    Lcrane.Close;
    Lcrane.Execute;
    LHARM.Close;
    LHARM.Execute;
    Lbandsupervisor.Close;
    Lbandsupervisor.Execute;
    Lsidewalk.Close;
    Lsidewalk.Execute;

    Lsortingtrip.Close;
    Lsortingtrip.ParamByName('VNum').Value := 1;
    Lsortingtrip.Execute;

  end;
end;

procedure TMainFm.sBitBtn10Click(Sender: TObject);
begin
  Form9.ShowModal;
end;

procedure TMainFm.sBitBtn11Click(Sender: TObject);
begin
  Form3.ShowModal;
end;

procedure TMainFm.sBitBtn12Click(Sender: TObject);
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
          Connected := false;
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
      end;
    end;

  end;

end;

procedure TMainFm.sBitBtn14Click(Sender: TObject);
begin
  with DmdFm do
  begin
    LNotesForThisShip.Close;
    LNotesForThisShip.ParamByName('VNum').Value := LsortingtripAutoUID.Value;
    LNotesForThisShip.Execute;

  end;
  Form10.ShowModal;
end;

procedure TMainFm.sBitBtn15Click(Sender: TObject);
begin
  with DmdFm do
  begin
    if not LHrakTemp.Active then
      LHrakTemp.Open;
    LHrakTemp.Close;
    LHrakTemp.ParamByName('VNum').Value := LsortingtripnumAuto.Value;
    LHrakTemp.Execute;

    if LHrakTemp.IsEmpty then
      Raise Exception.Create(' «œŒ· «·»Ì«‰«  «·›—⁄Ì… ··—Õ·… «Ê·« ');
    if not SHIPSHIFTSSSS.Active then
    begin
      SHIPSHIFTSSSS.Close;
      SHIPSHIFTSSSS.ParamByName('VNum').Value := LsortingtripAutoUID.Value;
      SHIPSHIFTSSSS.Execute;
    end;
    if not LshipShifts.Active then
      LshipShifts.Open;
    LshipShifts.Close;
    LshipShifts.ParamByName('VNum').Value := LsortingtripAutoUID.Value;
    LshipShifts.Execute;
    lsubmenucounter.Close;
    lsubmenucounter.ParamByName('VNum').Value := LsortingtripnumAuto.Value;
    lsubmenucounter.Execute;

    if not LHrakTemp.Active then
      LHrakTemp.Open;
    LHrakTemp.Close;
    LHrakTemp.ParamByName('VNum').Value := LsortingtripnumAuto.Value;
    LHrakTemp.Execute;
    LHrakTemp.Last;

  end;
  shiftsFm.ShowModal;
end;

procedure TMainFm.sBitBtn16Click(Sender: TObject);
begin
  with DmdFm do
  begin
    if not LHrakTemp.Active then
      LHrakTemp.Open;
    LHrakTemp.Close;
    LHrakTemp.ParamByName('VNum').Value := LsortingtripnumAuto.Value;
    LHrakTemp.Execute;

    if LHrakTemp.IsEmpty then
      Raise Exception.Create(' «œŒ· «·»Ì«‰«  «·›—⁄Ì… ··—Õ·… «Ê·« ');

    LshipCovers.Close;
    LshipCovers.ParamByName('VNum').Value := LsortingtripAutoUID.Value;
    LshipCovers.Execute;

  end;
  shipCoversFm.ShowModal;
end;

procedure TMainFm.sBitBtn17Click(Sender: TObject);
begin
  with DmdFm do
  begin
    if not LHrakTemp.Active then
      LHrakTemp.Open;
    LHrakTemp.Close;
    LHrakTemp.ParamByName('VNum').Value := LsortingtripnumAuto.Value;
    LHrakTemp.Execute;
    LHrakTemp.Last;
  end;
  Form12.ShowModal;
end;

procedure TMainFm.sBitBtn19Click(Sender: TObject);
begin
  with DmdFm do
  begin
    if not LHrakTemp.Active then
      LHrakTemp.Open;
    LHrakTemp.Close;
    LHrakTemp.ParamByName('VNum').Value := LsortingtripnumAuto.Value;
    LHrakTemp.Execute;

    if LHrakTemp.IsEmpty then
      Raise Exception.Create(' «œŒ· «·»Ì«‰«  «·›—⁄Ì… ··—Õ·… «Ê·« ');

    if not Starts_And_Stops_Query.Active then
      Starts_And_Stops_Query.Open;
    Starts_And_Stops_Query.Close;
    Starts_And_Stops_Query.ParamByName('VNum').Value :=
      LsortingtripAutoUID.Value;
    Starts_And_Stops_Query.Execute;

  end;
  Starts_And_Stops_QueryFm.ShowModal;
end;

procedure TMainFm.sBitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TMainFm.sBitBtn20Click(Sender: TObject);
var
  VProviderName, VUserNamew, VPasswordw, VServerw, VDatabasew, VPortw: string;
  SMSServer: String;
  I, J: Integer;
  SQLText, CurrentDir, DestinationPath: string;

begin
  // ShowMessage('Ì „ «·¬‰ «·« ’«· »«·”Ì—›— «·—∆Ì”Ì Ì—ÃÏ «·«‰ Ÿ«—');
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
          Connected := false;
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

      with DataModuleFm do
      begin
        // Ensure Lsubmenucounter is active (open)

        RemainTfreeq.Close;
        RemainTfreeq.ParamByName('VNum').Value :=
          DmdFm.LsortingtripnumAuto.Value;

        RemainTfreeq.Execute;
        RemainShahen.Close;
        RemainShahen.ParamByName('VNum').Value :=
          DmdFm.LsortingtripnumAuto.Value;

        RemainShahen.Execute;

      end;
      ContainrtLists.sLabel1.Caption := INTTOSTR(RemainTfreeq.RecordCount);
      ContainrtLists.sLabel3.Caption := INTTOSTR(RemainShahen.RecordCount);

      ContainrtLists.ShowModal;
    end;
  end;
end;

procedure TMainFm.sBitBtn21Click(Sender: TObject);
begin
  ReportsFm.ShowModal;
end;

procedure TMainFm.sBitBtn22Click(Sender: TObject);
begin
  DBGridEh2.Enabled := true;
end;

procedure TMainFm.sBitBtn23Click(Sender: TObject);
begin
  Form17.ShowModal;
end;

procedure TMainFm.sBitBtn2Click(Sender: TObject);
begin
  Form5.ShowModal;
end;

procedure TMainFm.sBitBtn3Click(Sender: TObject);
var
  VProviderName, VUserNamew, VPasswordw, VServerw, VDatabasew, VPortw: string;
  SMSServer, SQLText: String;
  I, J: Integer;
begin
  //  ÂÌ∆… «·« ’«· »ﬁ«⁄œ… «·»Ì«‰« 
  // SourceQuery.SQL.Clear;
  // DestinationQuery.SQL.Clear;

  { with DataModuleFm do
    begin

    Vsortingtrip.Close;
    Vsortingtrip.ParamByName('VNum').Value := 1;
    Vsortingtrip.Execute;

    end; }

  {
    with DmdFm do
    begin

    try

    // «” ⁄·«„ SQL ·«” —œ«œ «·»Ì«‰«  „‰ «·ÃœÊ· «·„’œ—
    // SourceQuery.SQL.Text := 'SELECT * FROM harm'; // «Õ· „ﬂ«‰ SourceTable »«·ÃœÊ· «·„’œ—

    SourceQuery.SQL.Text := 'TRUNCATE TABLE harm ; ' +
    'TRUNCATE TABLE amber ; ' + 'TRUNCATE TABLE bandsupervisor ; ' +
    'TRUNCATE TABLE crane ; ';

    // S := SourceQuery.SQL.Text;
    // ShowMessage(s);


    // SQLText:= StringReplace(SQLText,'INSERT','harm',[rfReplaceAll,rfIgnoreCase]);
    // DestinationQuery.BackupToFile.

    { SourceQuery := StringReplace(SourceQuery, 'INSERT', 'harm',
    [rfReplaceAll, rfIgnoreCase]);
    SourceQuery := StringReplace(SourceQuery, 'amber', 'bandsupervisor',
    [rfReplaceAll, rfIgnoreCase]);
    SourceQuery := StringReplace(SourceQuery, 'crane',
    [rfReplaceAll, rfIgnoreCase]);
    SourceQuery.SQL.Text := SourceQuery;


    // «” ⁄·«„ SQL ·≈œ—«Ã «·»Ì«‰«  ›Ì «·ÃœÊ· «·Âœ›
    // DestinationQuery.SQL.Text := 'INSERT INTO harm  ' + SourceQuery.SQL.Text;
    // «Õ· „ﬂ«‰ DestinationTable »«·ÃœÊ· «·Âœ›

    //  ‰›Ì– «·«” ⁄·«„« 

    sMemo1.Text := SQLText;
    SourceQuery.Execute;
    SourceQuery.SQL.Text := '';

    ShowMessage(' „  «·⁄„·Ì… Ê··Â «·Õ„œ...');
    finally
    //  SourceQuery.Free;
    //  DestinationQuery.Free;
    end
    end; }

  begin
    ShowMessage('Ì „ «·¬‰ «·« ’«· »«·”Ì—›— «·—∆Ì”Ì Ì—ÃÏ «·«‰ Ÿ«—');
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
            Connected := false;
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

        with DataModuleFm do
        begin
          // Ensure Lsubmenucounter is active (open)

          Vsortingtrip.Close;
          Vsortingtrip.ParamByName('VNum').Value := 1;
          Vsortingtrip.Execute;

        end;

        DownloadDataFromServer.Edit1.Text := '1';
        DownloadDataFromServer.ShowModal;
      end;
    end;

  end;
end;

procedure TMainFm.sBitBtn4Click(Sender: TObject);
begin
  with DmdFm do
  begin

    if not LHrakTemp.Active then
      LHrakTemp.Open;
    LHrakTemp.Close;
    LHrakTemp.ParamByName('VNum').Value := LsortingtripnumAuto.Value;
    LHrakTemp.Execute;

    if LHrakTemp.IsEmpty then
      Raise Exception.Create(' «œŒ· «·»Ì«‰«  «·›—⁄Ì… ··—Õ·… «Ê·« ');

    lsubmenucounter.Close;
    lsubmenucounter.ParamByName('VNum').Value := LsortingtripnumAuto.Value;
    lsubmenucounter.Execute;
    // Flight_MovementFm.ForEdit.Text:='0';
  end;

  Flight_MovementFm.ShowModal;
end;

procedure TMainFm.sBitBtn5Click(Sender: TObject);
begin
  Form4.ShowModal;
end;

procedure TMainFm.sBitBtn6Click(Sender: TObject);
begin
  // DmdFm.Lcraneoperator.Close;
  // DmdFm.Lcraneoperator.Execute;
  Form6.ShowModal;
end;

procedure TMainFm.sBitBtn7Click(Sender: TObject);
begin
  Form7.ShowModal;
end;

procedure TMainFm.sBitBtn8Click(Sender: TObject);
var
  VProviderName, VUserNamew, VPasswordw, VServerw, VDatabasew, VPortw: string;
  SMSServer: String;
  I, J: Integer;
  SQLText: string;
begin

  // showMessage('” »œ√ ⁄„·Ì…  —ÕÌ· «·»Ì«‰« ');
  ShowMessage('Ì „ «·¬‰ «·« ’«· »«·”Ì—›— «·—∆Ì”Ì Ì—ÃÏ «·«‰ Ÿ«—');
  with tinifile.Create(changefileext(paramstr(0), '.INI')) do
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
          Connected := false;
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

              (DataModuleFm.Components[I] as TUniTable).Open;
            end;

        End;
      except
        ;
        Raise Exception.Create
          ('·« ÌÊÃœ « ’«· »«·ÃÂ«“ «·—∆Ì”Ì Ì« ⁄“Ì“Ì «—ÃÊÊ «·« ’«· »«ﬁ—» ‘»ﬂ… œ«Œ·Ì… ');

      End;
    end;
  end;

  with DmdFm do
  begin
    LLsubmenucounterForServerForEdit.Close;
    LLsubmenucounterForServerForEdit.ParamByName('VNum').Value := 1;
    LLsubmenucounterForServerForEdit.ParamByName('NM').Value :=
      LsortingtripnumAuto.Value;

    LLsubmenucounterForServerForEdit.Execute;

    //
    LStopsForShipsForServer.Close;
    LStopsForShipsForServer.ParamByName('VNum').Value := 1;
    LStopsForShipsForServer.ParamByName('NM').Value :=
      LsortingtripAutoUID.Value;
    LStopsForShipsForServer.Execute;
    LNotesForThisShipForShowInList.Close;
    LNotesForThisShipForShowInList.ParamByName('VNum').Value := 1;
    LNotesForThisShipForShowInList.ParamByName('NM').Value :=
      LsortingtripAutoUID.Value;
    LNotesForThisShipForShowInList.Execute;
    LshipShiftsForServer.Close;
    LshipShiftsForServer.ParamByName('x').Value := 1;
    LshipShiftsForServer.ParamByName('VNum').Value := LsortingtripAutoUID.Value;
    LshipShiftsForServer.Execute;
    LshipcoversForServer.Close;
    LshipcoversForServer.ParamByName('x').Value := 1;
    LshipcoversForServer.ParamByName('VNum').Value := LsortingtripAutoUID.Value;
    LshipcoversForServer.Execute;

  end;

  InvitationFm.ShowModal;

end;

procedure TMainFm.sBitBtn9Click(Sender: TObject);
begin
  Form8.ShowModal;
end;

procedure TMainFm.stopsForShipClick(Sender: TObject);
begin
  with DmdFm do
  begin
    if not LHrakTemp.Active then
      LHrakTemp.Open;
    LHrakTemp.Close;
    LHrakTemp.ParamByName('VNum').Value := LsortingtripnumAuto.Value;
    LHrakTemp.Execute;

    if LHrakTemp.IsEmpty then
      Raise Exception.Create(' «œŒ· «·»Ì«‰«  «·›—⁄Ì… ··—Õ·… «Ê·« ');

    LStopsForThisShip.Close;
    LStopsForThisShip.ParamByName('VNum').Value := LsortingtripAutoUID.Value;
    LStopsForThisShip.Execute;

  end;
  Form2.ShowModal;
end;

end.
