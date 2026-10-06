unit Unit16;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sGroupBox, Vcl.ExtCtrls,
  Vcl.Mask, DBCtrlsEh, sEdit, sSpinEdit, sMaskEdit, sCustomComboEdit, sToolEdit,
  Vcl.Buttons, sBitBtn, frxClass, frxDBSet, Data.DB, MemDS, DBAccess, Uni,
  frxExportBaseDialog, frxExportPDF, acPNG;

type
  TReportsFm = class(TForm)
    Panel2: TPanel;
    sGroupBox1: TsGroupBox;
    Label3: TLabel;
    Label1: TLabel;
    startDate: TsDateEdit;
    EndDate: TsDateEdit;
    endTime: TsTimePicker;
    startTime: TsTimePicker;
    Label2: TLabel;
    Label4: TLabel;
    sBitBtn20: TsBitBtn;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    sRadioGroup1: TsRadioGroup;
    Query1: TUniQuery;
    sRadioGroup2: TsRadioGroup;
    frxPDFExport1: TfrxPDFExport;
    Query2: TUniQuery;
    frxReport2: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    Image3: TImage;
    Query1NumAuto: TIntegerField;
    Query1NumMainList: TIntegerField;
    Query1TagNumber: TStringField;
    Query1ContainerType: TStringField;
    Query1Harm: TBooleanField;
    Query1CauseDamage: TSmallintField;
    Query1swelling: TBooleanField;
    Query1rupture: TBooleanField;
    Query1bruises: TBooleanField;
    Query1other: TBooleanField;
    Query1right: TBooleanField;
    Query1left: TBooleanField;
    Query1Door: TBooleanField;
    Query1behind: TBooleanField;
    Query1Roof: TBooleanField;
    Query1floor: TBooleanField;
    Query1existing: TBooleanField;
    Query1OtherAspects: TBooleanField;
    Query1RF: TSmallintField;
    Query1Nort1: TStringField;
    Query1NumAdmH: TIntegerField;
    Query1AutoUID: TStringField;
    Query1Marks: TSmallintField;
    Query1Enter_Date: TDateField;
    Query1Enter_Time: TTimeField;
    Query1Enter_User: TStringField;
    Query1N_Amber: TIntegerField;
    Query1N_sidewalk: TIntegerField;
    Query1N_thecounter: TIntegerField;
    Query1N_bandsupervisor: TIntegerField;
    Query1N_crane: TIntegerField;
    Query1N_craneoperator: TIntegerField;
    Query1condition: TSmallintField;
    Query1Status_type: TSmallintField;
    Query1Handling_type: TSmallintField;
    Query1IS_CHEMICAL_MATERIAL: TIntegerField;
    Query1goood_description: TStringField;
    Query1HazMat: TSmallintField;
    Query1latitude: TFloatField;
    Query1longitude: TFloatField;
    Query1location_source: TStringField;
    Query1location_accuracy: TFloatField;
    Query1location_level: TShortintField;
    Query1location_user: TStringField;
    Query1location_datetime: TDateTimeField;
    Query1MoveReason: TIntegerField;
    Query2NumAuto: TIntegerField;
    Query2NumMainList: TIntegerField;
    Query2TagNumber: TStringField;
    Query2ContainerType: TStringField;
    Query2Harm: TBooleanField;
    Query2CauseDamage: TSmallintField;
    Query2swelling: TBooleanField;
    Query2rupture: TBooleanField;
    Query2bruises: TBooleanField;
    Query2other: TBooleanField;
    Query2right: TBooleanField;
    Query2left: TBooleanField;
    Query2Door: TBooleanField;
    Query2behind: TBooleanField;
    Query2Roof: TBooleanField;
    Query2floor: TBooleanField;
    Query2existing: TBooleanField;
    Query2OtherAspects: TBooleanField;
    Query2RF: TSmallintField;
    Query2Nort1: TStringField;
    Query2NumAdmH: TIntegerField;
    Query2AutoUID: TStringField;
    Query2Marks: TSmallintField;
    Query2Enter_Date: TDateField;
    Query2Enter_Time: TTimeField;
    Query2Enter_User: TStringField;
    Query2N_Amber: TIntegerField;
    Query2N_sidewalk: TIntegerField;
    Query2N_thecounter: TIntegerField;
    Query2N_bandsupervisor: TIntegerField;
    Query2N_crane: TIntegerField;
    Query2N_craneoperator: TIntegerField;
    Query2condition: TSmallintField;
    Query2Status_type: TSmallintField;
    Query2Handling_type: TSmallintField;
    Query2IS_CHEMICAL_MATERIAL: TIntegerField;
    Query2goood_description: TStringField;
    Query2HazMat: TSmallintField;
    Query2latitude: TFloatField;
    Query2longitude: TFloatField;
    Query2location_source: TStringField;
    Query2location_accuracy: TFloatField;
    Query2location_level: TShortintField;
    Query2location_user: TStringField;
    Query2location_datetime: TDateTimeField;
    Query2MoveReason: TIntegerField;
    procedure sBitBtn20Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReportsFm: TReportsFm;

implementation

{$R *.dfm}

uses DataModuleUn, DmdUn;

procedure TReportsFm.FormShow(Sender: TObject);
begin
  startDate.Date := now;
  EndDate.Date := now;
  startTime.Time := now;
  endTime.Time := now;
end;

procedure TReportsFm.Image3Click(Sender: TObject);
begin
close;
end;

procedure TReportsFm.sBitBtn20Click(Sender: TObject);
var
  SQLText: string;
begin

  if (sRadioGroup1.ItemIndex <> -1) and (sRadioGroup2.ItemIndex <> -1) and
    (sRadioGroup1.Items[sRadioGroup1.ItemIndex] = ' ›—Ì€') and
    (sRadioGroup2.Items[sRadioGroup2.ItemIndex] = '„” ·„') then
  begin
    // ShowMessage(sRadioGroup2.Items[sRadioGroup2.ItemIndex]);
    // Set up the query
    Query1.Close;
    // Query1.SQL.Text := SQLText;
    Query1.ParamByName('VNUM').AsInteger := DmdFm.LsortingtripnumAuto.Value;
    Query1.ParamByName('NM1').AsInteger := 1;
    Query1.ParamByName('NM2').AsInteger := 3;
    Query1.ParamByName('NM3').AsInteger := 6;
    Query1.ParamByName('COND').AsInteger := 1;
    Query1.ParamByName('DT').AsString := FormatDateTime('yyyy-mm-dd',
      startDate.Date);
    Query1.ParamByName('DTT').AsString := FormatDateTime('yyyy-mm-dd',
      EndDate.Date);
    Query1.ParamByName('TM').AsString := FormatDateTime('hh:nn:ss',
      startTime.Time);
    Query1.ParamByName('TMM').AsString := FormatDateTime('hh:nn:ss',
      endTime.Time);
    Query1.Open;

    // ShowMessage(SQLText);
    frxReport1.Variables['DT'] :=
      QuotedStr(FormatDateTime('yyyy/mm/dd', startDate.Date));
    frxReport1.Variables['DTT'] :=
      QuotedStr(FormatDateTime('yyyy/mm/dd', EndDate.Date));
    frxReport1.Variables['T1'] :=
      QuotedStr(FormatDateTime('hh:nn:ss', startTime.Time));
    frxReport1.Variables['T2'] :=
      QuotedStr(FormatDateTime('hh:nn:ss', endTime.Time));
    // frxReport1.Variables['TYPE'] := sRadioGroup1.Items[sRadioGroup1.ItemIndex];
    // frxReport1.Variables['TYPEE'] := sRadioGroup2.Items[sRadioGroup2.ItemIndex];
    frxReport1.ShowReport();
  end;

  if (sRadioGroup1.ItemIndex <> -1) and (sRadioGroup2.ItemIndex <> -1) and
    (sRadioGroup1.Items[sRadioGroup1.ItemIndex] = ' ›—Ì€') and
    (sRadioGroup2.Items[sRadioGroup2.ItemIndex] = '⁄Ã“') then
  begin
    // Set up the query
    Query2.Close;
    // Query1.SQL.Text := SQLText;
    Query2.ParamByName('VNUM').AsInteger := DmdFm.LsortingtripnumAuto.Value;
    Query2.ParamByName('NM1').AsInteger := 1;
    Query2.ParamByName('NM2').AsInteger := 3;
    Query2.ParamByName('NM3').AsInteger := 6;
    Query2.ParamByName('COND').AsInteger := 2;

    Query2.Execute;
    // ShowMessage(SQLText);
    frxReport2.Variables['DT'] :=
      QuotedStr(FormatDateTime('yyyy/mm/dd', startDate.Date));
    frxReport2.Variables['DTT'] :=
      QuotedStr(FormatDateTime('yyyy/mm/dd', EndDate.Date));
    frxReport2.Variables['T1'] :=
      QuotedStr(FormatDateTime('hh:nn:ss', startTime.Time));
    frxReport2.Variables['T2'] :=
      QuotedStr(FormatDateTime('hh:nn:ss', endTime.Time));
    frxReport2.ShowReport();
  end;
  if (sRadioGroup1.ItemIndex <> -1) and (sRadioGroup2.ItemIndex <> -1) and
    (sRadioGroup1.Items[sRadioGroup1.ItemIndex] = '‘Õ‰') and
    (sRadioGroup2.Items[sRadioGroup2.ItemIndex] = '⁄Ã“') then
  begin
    // Set up the query
    Query2.Close;

    Query2.ParamByName('VNUM').AsInteger := DmdFm.LsortingtripnumAuto.Value;
    Query2.ParamByName('NM1').AsInteger := 2;
    Query2.ParamByName('NM2').AsInteger := 4;
    Query2.ParamByName('NM3').AsInteger := 2;
    Query2.ParamByName('COND').AsInteger := 2;

    Query2.Execute;
    // ShowMessage(SQLText);
    frxReport2.Variables['DT'] :=
      QuotedStr(FormatDateTime('yyyy/mm/dd', startDate.Date));
    frxReport2.Variables['DTT'] :=
      QuotedStr(FormatDateTime('yyyy/mm/dd', EndDate.Date));
    frxReport2.Variables['T1'] :=
      QuotedStr(FormatDateTime('hh:nn:ss', startTime.Time));
    frxReport2.Variables['T2'] :=
      QuotedStr(FormatDateTime('hh:nn:ss', endTime.Time));
    frxReport2.ShowReport();
  end;
  if (sRadioGroup1.ItemIndex <> -1) and (sRadioGroup2.ItemIndex <> -1) and
    (sRadioGroup1.Items[sRadioGroup1.ItemIndex] = '‘Õ‰') and
    (sRadioGroup2.Items[sRadioGroup2.ItemIndex] = '„” ·„') then
  begin
    // Set up the query
    Query1.Close;
    Query1.ParamByName('VNUM').AsInteger := DmdFm.LsortingtripnumAuto.Value;
    Query1.ParamByName('NM1').AsInteger := 2;
    Query1.ParamByName('NM2').AsInteger := 4;
    Query1.ParamByName('NM3').AsInteger := 2;
    Query1.ParamByName('COND').AsInteger := 1;
    Query1.ParamByName('DT').AsString := FormatDateTime('yyyy-mm-dd',
      startDate.Date);
    Query1.ParamByName('DTT').AsString := FormatDateTime('yyyy-mm-dd',
      EndDate.Date);
    Query1.ParamByName('TM').AsString := FormatDateTime('hh:nn:ss',
      startTime.Time);
    Query1.ParamByName('TMM').AsString := FormatDateTime('hh:nn:ss',
      endTime.Time);
    Query1.Execute;
    frxReport1.Variables['DT'] :=
      QuotedStr(FormatDateTime('yyyy/mm/dd', startDate.Date));
    frxReport1.Variables['DTT'] :=
      QuotedStr(FormatDateTime('yyyy/mm/dd', EndDate.Date));
    frxReport1.Variables['T1'] :=
      QuotedStr(FormatDateTime('hh:nn:ss', startTime.Time));
    frxReport1.Variables['T2'] :=
      QuotedStr(FormatDateTime('hh:nn:ss', endTime.Time));
    frxReport1.ShowReport();
  end;

end;

end.
