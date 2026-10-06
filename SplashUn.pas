unit SplashUn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls, LMDCustomComponent,
  LMDWndProcComponent, LMDCustomFormFill, LMDFormFill, ComCtrls,
  LMDFormShadow, acProgressBar, acImage, DateUtils, acPNG;

type
  TSplashFm = class(TForm)
    LMDFormFill1: TLMDFormFill;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    sImage1: TsImage;
    sProgressBar1: TsProgressBar;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SplashFm: TSplashFm;

implementation

{$R *.dfm}

procedure TSplashFm.FormCreate(Sender: TObject);
var
  CurrentYear: string;
begin
  CurrentYear := IntToStr(YearOf(Now));
  Label2.Caption := '';
  Label2.Caption := 'Ã„Ì⁄ «·ÕﬁÊﬁ „Õ›ÊŸ…'+' ' +CurrentYear;
//
  if BidiMode = BdRighttoleft then
    LoadKeyBoardLayout('00000401', Klf_Activate)
  else
    LoadKeyBoardLayout('00000409', Klf_Activate);
   //showMessage('ffff');
  // load settings data

end;

end.
