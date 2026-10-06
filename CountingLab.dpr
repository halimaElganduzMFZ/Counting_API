program CountingLab;

uses
  LMDFullVersion,
  Forms,
  sysutils,
  MainUn in 'MainUn.pas' {MainFm},
  DmdUn in 'DmdUn.pas' {DmdFm: TDataModule},
  DataModuleUn in 'DataModuleUn.pas' {DataModuleFm: TDataModule},
  UFEnterPass in 'UFEnterPass.pas' {FEnterPass},
  SplashUn in 'SplashUn.pas' {SplashFm},
  InvitationUn in 'InvitationUn.pas' {InvitationFm},
  Flight_MovementUn in 'Flight_MovementUn.pas' {Flight_MovementFm},
  Unit1 in 'Unit1.pas' {DownloadDataFromServer},
  Unit3 in 'Unit3.pas' {Form3},
  Unit4 in 'Unit4.pas' {Form4},
  Unit5 in 'Unit5.pas' {Form5},
  Unit6 in 'Unit6.pas' {Form6},
  Unit7 in 'Unit7.pas' {Form7},
  Unit8 in 'Unit8.pas' {Form8},
  Unit9 in 'Unit9.pas' {Form9},
  Unit10 in 'Unit10.pas' {Form10},
  Main in 'Main.pas' {FormMain},
  shiftsUnit in 'shiftsUnit.pas' {shiftsFm},
  shipCoversUnit in 'shipCoversUnit.pas' {shipCoversFm},
  Unit2 in 'Unit2.pas' {Form2},
  userTyping in 'userTyping.pas' {Form12},
  Unit14 in 'Unit14.pas' {SearchTxt},
  ContainerSearchFrm in 'ContainerSearchFrm.pas' {ContainerSrchFm},
  ship_starts_and_stops in 'ship_starts_and_stops.pas' {Starts_And_Stops_QueryFm},
  Unit15 in 'Unit15.pas' {ContainrtLists},
  Unit16 in 'Unit16.pas' {ReportsFm},
  Unit17 in 'Unit17.pas' {Form17};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '„‰ŸÊ„… «·⁄œ Ê«·›—“';
  SplashFm := TSplashFm.Create(Application);
  try
    SplashFm.Show;
    Application.Initialize;
    SplashFm.Update;

    Sleep(100);
    Application.MainFormOnTaskbar := True;
    Application.CreateForm(TFEnterPass, FEnterPass);
  Application.CreateForm(TDmdFm, DmdFm);
  Application.CreateForm(TshiftsFm, shiftsFm);
  Application.CreateForm(TshipCoversFm, shipCoversFm);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TSearchTxt, SearchTxt);
  Application.CreateForm(TContainerSrchFm, ContainerSrchFm);
  Application.CreateForm(TDataModuleFm, DataModuleFm);
  Application.CreateForm(TStarts_And_Stops_QueryFm, Starts_And_Stops_QueryFm);
  Application.CreateForm(TMainFm, MainFm);
  Application.CreateForm(TContainrtLists, ContainrtLists);
  Application.CreateForm(TReportsFm, ReportsFm);
  Application.CreateForm(TForm17, Form17);
  //Application.CreateForm(TSplashFm, SplashFm);
  Application.CreateForm(TInvitationFm, InvitationFm);
  Application.CreateForm(TFlight_MovementFm, Flight_MovementFm);
  Application.CreateForm(TDownloadDataFromServer, DownloadDataFromServer);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  // Application.CreateForm(TMainFm, MainFm);

    // Application.CreateForm(TDataModuleFm, DataModuleFm);
    // Application.CreateForm(TInvitationFm, InvitationFm);
    // Application.CreateForm(TFlight_MovementFm, Flight_MovementFm);
    // Application.CreateForm(TForm1, Form1);
    // Application.CreateForm(TSplashFm, SplashFm);
    SplashFm.sProgressBar1.StepIt;

    SplashFm.Hide;
  finally
    SplashFm.Free;
  end;

  Application.Run;

end.
