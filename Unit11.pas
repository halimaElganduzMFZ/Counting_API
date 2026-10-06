unit Unit11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
    Vcl.Dialogs, WCamera, Controls, Forms,
   ExtCtrls,  StdCtrls, XPMan, ComCtrls;

type
  TForm11 = class(TForm)
    PanelTop: TPanel;
    LabelCamera: TLabel;
    LabelFormat: TLabel;
    LabelBorderColor: TLabel;
    ComboBoxCamera: TComboBox;
    ComboBoxFormat: TComboBox;
    CheckBoxAspectRatio: TCheckBox;
    ButtonSaveCurrentImage: TButton;
    ColorBoxBorderColor: TColorBox;
    CheckBoxStretch: TCheckBox;
    PanelRight: TPanel;
    LabelBacklightCompensation: TLabel;
    LabelBrightness: TLabel;
    LabelColorEnable: TLabel;
    LabelContrast: TLabel;
    LabelExposure: TLabel;
    LabelFocus: TLabel;
    LabelGain: TLabel;
    LabelGamma: TLabel;
    LabelHue: TLabel;
    LabelIris: TLabel;
    LabelPan: TLabel;
    LabelRoll: TLabel;
    LabelSaturation: TLabel;
    LabelSharpness: TLabel;
    LabelTilt: TLabel;
    LabelWhiteBalance: TLabel;
    LabelZoom: TLabel;
    TrackBarBacklightCompensation: TTrackBar;
    CheckBoxBacklightCompensation: TCheckBox;
    TrackBarBrightness: TTrackBar;
    CheckBoxBrightness: TCheckBox;
    TrackBarColorEnable: TTrackBar;
    CheckBoxColorEnable: TCheckBox;
    TrackBarContrast: TTrackBar;
    CheckBoxContrast: TCheckBox;
    TrackBarExposure: TTrackBar;
    CheckBoxExposure: TCheckBox;
    TrackBarFocus: TTrackBar;
    CheckBoxFocus: TCheckBox;
    TrackBarGain: TTrackBar;
    CheckBoxGain: TCheckBox;
    TrackBarGamma: TTrackBar;
    CheckBoxGamma: TCheckBox;
    TrackBarHue: TTrackBar;
    CheckBoxHue: TCheckBox;
    TrackBarIris: TTrackBar;
    CheckBoxIris: TCheckBox;
    TrackBarPan: TTrackBar;
    CheckBoxPan: TCheckBox;
    TrackBarRoll: TTrackBar;
    CheckBoxRoll: TCheckBox;
    TrackBarSaturation: TTrackBar;
    CheckBoxSaturation: TCheckBox;
    TrackBarSharpness: TTrackBar;
    CheckBoxSharpness: TCheckBox;
    TrackBarTilt: TTrackBar;
    CheckBoxTilt: TCheckBox;
    TrackBarWhiteBalance: TTrackBar;
    CheckBoxWhiteBalance: TCheckBox;
    TrackBarZoom: TTrackBar;
    CheckBoxZoom: TCheckBox;
    ButtonDefaultValues: TButton;
    PanelCenter: TPanel;
    PaintBox: TPaintBox;
    WCamera: TWCamera;
    XPManifest: TXPManifest;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

end.
