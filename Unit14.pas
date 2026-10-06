unit Unit14;

interface

uses
  SysUtils, Classes, frxClass, frxDBSet, DB, MemDS, DBAccess, Uni, inifiles,
  variants, forms, controls, dialogs, messages, windows, Graphics, UniProvider,
  MySQLUniProvider, DADump, UniDump, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ExtCtrls, sPanel, System.ImageList, Vcl.ImgList, acAlphaImageList,
  Vcl.StdCtrls;

type
  TSearchTxt = class(TForm)
    sPanel1: TsPanel;
    DBGridEh3: TDBGridEh;
    sAlphaImageList2: TsAlphaImageList;
    Label1: TLabel;
    procedure DBGridEh3DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SearchTxt: TSearchTxt;

implementation

{$R *.dfm}

uses DmdUn;

procedure TSearchTxt.DBGridEh3DblClick(Sender: TObject);
begin

  with DmdFm do
  begin
    if (Label1.Caption = '1') or (Label1.Caption = '2') or (Label1.Caption = '3') or
      (Label1.Caption = '4') or (Label1.Caption = '5') then
    begin
      if (LHrakTemp.State = dsInsert) or (LHrakTemp.State = dsEdit) then
      begin
        if Label1.Caption = '1' then
          LHrakTempN_Amber.Value := LamberNumAuto.Value
        else if Label1.Caption = '2' then

          LHrakTempN_bandsupervisor.Value := LbandsupervisorNumAuto.Value
        else if Label1.Caption = '3' then
          LHrakTempN_crane.Value := LcraneNumAuto.Value
        else if Label1.Caption = '4' then
          LHrakTempN_craneoperator.Value := LcraneoperatorNumAuto.Value
        else if Label1.Caption = '5' then

          LHrakTempN_sidewalk.Value := LsidewalkNumAuto.Value;
      end
      else
        showMessage('«› Õ “— «· ⁄œÌ· √Ê «·«÷«›… √Ê·« „‰ «·Ê«ÃÂ… «·”«»ﬁ…');
    end;
    if Label1.Caption = '9' then
    begin
      if (DmdFm.LshipShifts.State = dsInsert) or
        (DmdFm.LshipShifts.State = dsEdit) then
      begin
        if Label1.Caption = '9' then
          DmdFm.LshipShiftsN_bandsupervisor.Value :=
            LbandsupervisorNumAuto.Value
      end
      else
        showMessage('«› Õ “— «· ⁄œÌ· √Ê «·«÷«›… √Ê·« „‰ «·Ê«ÃÂ… «·”«»ﬁ…');
    end;
    if Label1.Caption = '11' then
    begin
      if (DmdFm.LshipCovers.State = dsInsert) or
        (DmdFm.LshipCovers.State = dsEdit) then
      begin
        if Label1.Caption = '11' then
          DmdFm.LshipCoversN_bandsupervisor.Value :=
            LbandsupervisorNumAuto.Value
      end
      else
        showMessage('«› Õ “— «· ⁄œÌ· √Ê «·«÷«›… √Ê·« „‰ «·Ê«ÃÂ… «·”«»ﬁ…');
    end;
  end;

  close;
end;

procedure TSearchTxt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DBGridEh3.SearchPanel.CancelSearchFilter;
  DBGridEh3.SearchPanel.SearchingText := '';
end;

end.
