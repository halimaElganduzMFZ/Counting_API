unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, WCamera, StdCtrls, XPMan, ComCtrls, System.ImageList,
  Vcl.ImgList, acAlphaImageList, inifiles, Vcl.Buttons, sBitBtn, acPNG;

type
  TFormMain = class(TForm)
    PanelTop: TPanel;
    PanelRight: TPanel;
    PanelCenter: TPanel;
    WCamera: TWCamera;
    LabelCamera: TLabel;
    ComboBoxCamera: TComboBox;
    XPManifest: TXPManifest;
    LabelFormat: TLabel;
    ComboBoxFormat: TComboBox;
    TrackBarBacklightCompensation: TTrackBar;
    LabelBacklightCompensation: TLabel;
    CheckBoxBacklightCompensation: TCheckBox;
    LabelBrightness: TLabel;
    TrackBarBrightness: TTrackBar;
    CheckBoxBrightness: TCheckBox;
    LabelColorEnable: TLabel;
    TrackBarColorEnable: TTrackBar;
    CheckBoxColorEnable: TCheckBox;
    LabelContrast: TLabel;
    TrackBarContrast: TTrackBar;
    CheckBoxContrast: TCheckBox;
    LabelExposure: TLabel;
    TrackBarExposure: TTrackBar;
    CheckBoxExposure: TCheckBox;
    LabelFocus: TLabel;
    TrackBarFocus: TTrackBar;
    CheckBoxFocus: TCheckBox;
    LabelGain: TLabel;
    TrackBarGain: TTrackBar;
    CheckBoxGain: TCheckBox;
    LabelGamma: TLabel;
    TrackBarGamma: TTrackBar;
    CheckBoxGamma: TCheckBox;
    LabelHue: TLabel;
    TrackBarHue: TTrackBar;
    CheckBoxHue: TCheckBox;
    LabelIris: TLabel;
    TrackBarIris: TTrackBar;
    CheckBoxIris: TCheckBox;
    LabelPan: TLabel;
    TrackBarPan: TTrackBar;
    CheckBoxPan: TCheckBox;
    LabelRoll: TLabel;
    TrackBarRoll: TTrackBar;
    CheckBoxRoll: TCheckBox;
    LabelSaturation: TLabel;
    TrackBarSaturation: TTrackBar;
    CheckBoxSaturation: TCheckBox;
    LabelSharpness: TLabel;
    TrackBarSharpness: TTrackBar;
    CheckBoxSharpness: TCheckBox;
    LabelTilt: TLabel;
    TrackBarTilt: TTrackBar;
    CheckBoxTilt: TCheckBox;
    LabelWhiteBalance: TLabel;
    TrackBarWhiteBalance: TTrackBar;
    CheckBoxWhiteBalance: TCheckBox;
    LabelZoom: TLabel;
    TrackBarZoom: TTrackBar;
    CheckBoxZoom: TCheckBox;
    CheckBoxAspectRatio: TCheckBox;
    ButtonDefaultValues: TButton;
    ColorBoxBorderColor: TColorBox;
    LabelBorderColor: TLabel;
    PaintBox: TPaintBox;
    CheckBoxStretch: TCheckBox;
    sAlphaImageList1: TsAlphaImageList;
    sBitBtn2: TsBitBtn;
    Image3: TImage;
    ButtonSaveCurrentImage: TButton;
    procedure ComboBoxFormatChange(Sender: TObject);
    procedure PanelCenterResize(Sender: TObject);
    procedure CheckBoxClick(Sender: TObject);
    procedure TrackBarChange(Sender: TObject);
    procedure ButtonSaveCurrentImageClick(Sender: TObject);
    procedure ButtonDefaultValuesClick(Sender: TObject);
    procedure ColorBoxBorderColorChange(Sender: TObject);
    procedure WCameraImageAvailable(Sender: TObject; SampleTime: Double);
    procedure PaintBoxPaint(Sender: TObject);
    procedure CheckBoxStretchClick(Sender: TObject);
    procedure CheckBoxAspectRatioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBoxCameraChange(Sender: TObject);
    procedure ComboBoxCameraDropDown(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sBitBtn2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
  private
    { Private declarations }
    MemoryStream: TMemoryStream;
    Bitmap: TBitmap;
    Format: TWCameraFormat;
    procedure SetDevices;
    procedure SetFormats;
    procedure SetTrackBars;
    procedure StartDevice;
    procedure UpdateVideoPosition;
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;
  counterNum: integer;
  img: string;

implementation

{$R *.dfm}

uses DataModuleUn, DmdUn, Flight_MovementUn;

procedure TFormMain.SetDevices;
var
  whichCamera: string;
begin
  // Read cameraName from the INI file
  with TIniFile.Create(ChangeFileExt(ParamStr(0), '.INI')) do
  begin
    try
      whichCamera := ReadString('Data', 'cameraName', '');
    finally
      Free; // Don't forget to free the TIniFile object
    end;
  end;

  ComboBoxCamera.Items.BeginUpdate;
  try
    // Clear existing items and add the new camera name
    ComboBoxCamera.Items.Clear;
    ComboBoxCamera.Items.Add(whichCamera);

    // Select the item if it exists in the ComboBox
    ComboBoxCamera.ItemIndex := ComboBoxCamera.Items.IndexOf(whichCamera);
  finally
    ComboBoxCamera.Items.EndUpdate;
    ComboBoxCamera.Enabled := False;
    SetFormats; // Call SetFormats procedure after updating ComboBox
  end;
end;

procedure TFormMain.SetFormats;
var
  Formats: TWCameraFormats;
  I: integer;
  Devices: TWVideoCaptureDevices;
  whichCamera: string;
  selectedIndex, selectedSizeForImage: integer;
begin
  Formats := nil;
  ComboBoxFormat.Items.BeginUpdate;
  try
    ButtonSaveCurrentImage.Enabled := False;
    WCamera.Active := False;
    Devices := WCamera.Devices;

    with TIniFile.Create(ChangeFileExt(ParamStr(0), '.INI')) do
    begin
      try
        whichCamera := ReadString('Data', 'cameraName', '');
      finally
        Free; // Don't forget to free the TIniFile object
      end;
    end;
    for I := 0 to Length(Devices) - 1 do
    begin
      if Devices[I].Name = whichCamera then
        selectedIndex := I;
    end;
    // ShowMessage(I.ToString());
    WCamera.DeviceIndex := selectedIndex;
    ComboBoxFormat.Items.Clear;
    ComboBoxFormat.Enabled := WCamera.DeviceIndex <> -1;
    if ComboBoxFormat.Enabled then
    begin
      Formats := WCamera.SupportedFormats;
      for I := 0 to Length(Formats) - 1 do
        if Formats[I].AvgTimePerFrame = 0 then
          ComboBoxFormat.Items.Add(IntToStr(Formats[I].Width) + 'x' +
            IntToStr(Formats[I].Height) + ' ' +
            IntToStr(Formats[I].BitsPerPixel) + 'bpp')
        else
          ComboBoxFormat.Items.Add(IntToStr(Formats[I].Width) + 'x' +
            IntToStr(Formats[I].Height) + ' ' +
            IntToStr(10000000 div Formats[I].AvgTimePerFrame) + 'Hz ' +
            IntToStr(Formats[I].BitsPerPixel) + 'bpp');
    end
  finally
    with TIniFile.Create(ChangeFileExt(ParamStr(0), '.INI')) do
    begin
      selectedSizeForImage :=
        strtoint(ReadString('Data', 'Picture_Size_From_List', ''));
    end;
    ComboBoxFormat.ItemIndex := selectedSizeForImage;
    ComboBoxFormat.Items.EndUpdate;
    ComboBoxFormat.Enabled := False;
    StartDevice;
  end;
end;

procedure InitTrackBar(TrackbarLabel: TLabel; TrackBar: TTrackBar;
  CheckBoxAuto: TCheckBox);
begin
  TrackbarLabel.Enabled := False;
  TrackBar.Enabled := False;
  CheckBoxAuto.Enabled := False;
end;

procedure SetTrackBar(TrackbarLabel: TLabel; TrackBar: TTrackBar;
  CheckBoxAuto: TCheckBox; Position: integer; Range: TWRange; Auto: Boolean);
begin
  CheckBoxAuto.Checked := Auto;
  TrackBar.Min := Range.Min;
  TrackBar.Max := Range.Max;
  TrackBar.PageSize := Range.Delta;
  if (Range.Delta > 0) and ((Range.Max - Range.Min) div Range.Delta > 25) then
    TrackBar.Frequency := (Range.Max - Range.Min) div 25
  else
    TrackBar.Frequency := 1;
  TrackBar.Position := Position;

  TrackbarLabel.Enabled := True;
  CheckBoxAuto.Enabled := Range.Auto and Range.Manual;
  TrackBar.Enabled := not CheckBoxAuto.Checked;
end;

var
  TrackBarsSetting: Boolean;

procedure TFormMain.SetTrackBars;
begin
  if not TrackBarsSetting then
    try
      TrackBarsSetting := True;
      InitTrackBar(LabelBacklightCompensation, TrackBarBacklightCompensation,
        CheckBoxBacklightCompensation);
      InitTrackBar(LabelBrightness, TrackBarBrightness, CheckBoxBrightness);
      InitTrackBar(LabelColorEnable, TrackBarColorEnable, CheckBoxColorEnable);
      InitTrackBar(LabelContrast, TrackBarContrast, CheckBoxContrast);
      InitTrackBar(LabelExposure, TrackBarExposure, CheckBoxExposure);
      InitTrackBar(LabelFocus, TrackBarFocus, CheckBoxFocus);
      InitTrackBar(LabelGain, TrackBarGain, CheckBoxGain);
      InitTrackBar(LabelGamma, TrackBarGamma, CheckBoxGamma);
      InitTrackBar(LabelHue, TrackBarHue, CheckBoxHue);
      InitTrackBar(LabelIris, TrackBarIris, CheckBoxIris);
      InitTrackBar(LabelPan, TrackBarPan, CheckBoxPan);
      InitTrackBar(LabelRoll, TrackBarRoll, CheckBoxRoll);
      InitTrackBar(LabelSaturation, TrackBarSaturation, CheckBoxSaturation);
      InitTrackBar(LabelSharpness, TrackBarSharpness, CheckBoxSharpness);
      InitTrackBar(LabelTilt, TrackBarTilt, CheckBoxTilt);
      InitTrackBar(LabelWhiteBalance, TrackBarWhiteBalance,
        CheckBoxWhiteBalance);
      InitTrackBar(LabelZoom, TrackBarZoom, CheckBoxZoom);

      if WCamera.DeviceIndex <> -1 then
      begin
        if WCamera.BacklightCompensationSupported then
          SetTrackBar(LabelBacklightCompensation, TrackBarBacklightCompensation,
            CheckBoxBacklightCompensation, WCamera.BacklightCompensation,
            WCamera.BacklightCompensationRange,
            WCamera.BacklightCompensationAuto);

        if WCamera.BrightnessSupported then
          SetTrackBar(LabelBrightness, TrackBarBrightness, CheckBoxBrightness,
            WCamera.Brightness, WCamera.BrightnessRange,
            WCamera.BrightnessAuto);

        if WCamera.ColorEnableSupported then
          SetTrackBar(LabelColorEnable, TrackBarColorEnable,
            CheckBoxColorEnable, WCamera.ColorEnable, WCamera.ColorEnableRange,
            WCamera.ColorEnableAuto);

        if WCamera.ContrastSupported then
          SetTrackBar(LabelContrast, TrackBarContrast, CheckBoxContrast,
            WCamera.Contrast, WCamera.ContrastRange, WCamera.ContrastAuto);

        if WCamera.ExposureSupported then
          SetTrackBar(LabelExposure, TrackBarExposure, CheckBoxExposure,
            WCamera.Exposure, WCamera.ExposureRange, WCamera.ExposureAuto);

        if WCamera.FocusSupported then
          SetTrackBar(LabelFocus, TrackBarFocus, CheckBoxFocus, WCamera.Focus,
            WCamera.FocusRange, WCamera.FocusAuto);

        if WCamera.GainSupported then
          SetTrackBar(LabelGain, TrackBarGain, CheckBoxGain, WCamera.Gain,
            WCamera.GainRange, WCamera.GainAuto);

        if WCamera.GammaSupported then
          SetTrackBar(LabelGamma, TrackBarGamma, CheckBoxGamma, WCamera.Gamma,
            WCamera.GammaRange, WCamera.GammaAuto);

        if WCamera.HueSupported then
          SetTrackBar(LabelHue, TrackBarHue, CheckBoxHue, WCamera.Hue,
            WCamera.HueRange, WCamera.HueAuto);

        if WCamera.IrisSupported then
          SetTrackBar(LabelIris, TrackBarIris, CheckBoxIris, WCamera.Iris,
            WCamera.IrisRange, WCamera.IrisAuto);

        if WCamera.PanSupported then
          SetTrackBar(LabelPan, TrackBarPan, CheckBoxPan, WCamera.Pan,
            WCamera.PanRange, WCamera.PanAuto);

        if WCamera.RollSupported then
          SetTrackBar(LabelRoll, TrackBarRoll, CheckBoxRoll, WCamera.Roll,
            WCamera.RollRange, WCamera.RollAuto);

        if WCamera.SaturationSupported then
          SetTrackBar(LabelSaturation, TrackBarSaturation, CheckBoxSaturation,
            WCamera.Saturation, WCamera.SaturationRange,
            WCamera.SaturationAuto);

        if WCamera.SharpnessSupported then
          SetTrackBar(LabelSharpness, TrackBarSharpness, CheckBoxSharpness,
            WCamera.Sharpness, WCamera.SharpnessRange, WCamera.SharpnessAuto);

        if WCamera.TiltSupported then
          SetTrackBar(LabelTilt, TrackBarTilt, CheckBoxTilt, WCamera.Tilt,
            WCamera.TiltRange, WCamera.TiltAuto);

        if WCamera.WhiteBalanceSupported then
          SetTrackBar(LabelWhiteBalance, TrackBarWhiteBalance,
            CheckBoxWhiteBalance, WCamera.WhiteBalance,
            WCamera.WhiteBalanceRange, WCamera.WhiteBalanceAuto);

        if WCamera.ZoomSupported then
          SetTrackBar(LabelZoom, TrackBarZoom, CheckBoxZoom, WCamera.Zoom,
            WCamera.ZoomRange, WCamera.ZoomAuto);
      end
    finally
      TrackBarsSetting := False;
    end;
end;

procedure TFormMain.StartDevice;
begin
  SetTrackBars;
  if ComboBoxFormat.ItemIndex <> -1 then
  begin
    WCamera.Active := False;
    Format := WCamera.SupportedFormats[ComboBoxFormat.ItemIndex];
    WCamera.Format := Format;
    WCamera.Active := True;
    UpdateVideoPosition;
    WCamera.Run;
    PaintBox.Visible := WCamera.CaptureType = ctGrabber;
    ButtonSaveCurrentImage.Enabled := True;
  end
end;

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  WCamera.Active := False;
  Bitmap.Free;
  MemoryStream.Free;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  PanelCenter.DoubleBuffered := True;
  MemoryStream := TMemoryStream.Create;
  Bitmap := TBitmap.Create;
  SetTrackBars;
end;

procedure TFormMain.FormShow(Sender: TObject);

var
  VProviderName, VUserNamew, VPasswordw, VServerw, VDatabasew, VPortw: string;
  whichCamera: string;
  LIMIT: integer;
  selectedSizeForImage: integer;
begin
  counterNum := 0;
  with TIniFile.Create(ChangeFileExt(ParamStr(0), '.INI')) do
  begin
    whichCamera := ReadString('Data', 'cameraName', '');
  end;

  // ButtonSaveCurrentImage.Enabled := True;
  // ComboBoxCamera.SelText := whichCamera;

  // ShowMessage(whichCamera);

  PanelCenter.DoubleBuffered := True;
  MemoryStream := TMemoryStream.Create;
  Bitmap := TBitmap.Create;
  SetDevices;

  SetTrackBars;
  ButtonDefaultValues.Enabled := WCamera.DeviceIndex <> -1;

  // SetTrackBars;
end;

procedure TFormMain.Image3Click(Sender: TObject);
begin
  close;
end;

procedure TFormMain.ComboBoxCameraChange(Sender: TObject);

var
  CurrentWorkingDir: string;
begin
  SetFormats;
  SetTrackBars;
  ButtonDefaultValues.Enabled := WCamera.DeviceIndex <> -1;

end;

procedure TFormMain.ComboBoxCameraDropDown(Sender: TObject);
begin
  SetDevices;
end;

procedure TFormMain.ComboBoxFormatChange(Sender: TObject);
begin
  StartDevice;
end;

procedure TFormMain.UpdateVideoPosition;
var
  Rect: TRect;
begin
  if WCamera.Active and (WCamera.CaptureType = ctVmr9) then
  begin
    if CheckBoxStretch.Checked then
    begin
      WCamera.AspectRatio := CheckBoxAspectRatio.Checked;
      WCamera.VideoPositionDest := PanelCenter.ClientRect;
    end
    else
    begin
      Rect.Left := (PanelCenter.Width - Format.Width) div 2;
      Rect.Top := (PanelCenter.Height - Format.Height) div 2;
      Rect.Right := Rect.Left + Format.Width;
      Rect.Bottom := Rect.Top + Format.Height;
      WCamera.VideoPositionDest := Rect;
    end;
    PanelCenter.Invalidate;
  end;
end;

procedure TFormMain.PanelCenterResize(Sender: TObject);
begin
  UpdateVideoPosition;
end;

procedure TFormMain.sBitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TFormMain.CheckBoxClick(Sender: TObject);
begin
  if not TrackBarsSetting then
  begin
    if Sender = CheckBoxBacklightCompensation then
      WCamera.BacklightCompensationAuto := CheckBoxBacklightCompensation.Checked
    else if Sender = CheckBoxBrightness then
      WCamera.BrightnessAuto := CheckBoxBrightness.Checked
    else if Sender = CheckBoxColorEnable then
      WCamera.ColorEnableAuto := CheckBoxColorEnable.Checked
    else if Sender = CheckBoxContrast then
      WCamera.ContrastAuto := CheckBoxContrast.Checked
    else if Sender = CheckBoxExposure then
      WCamera.ExposureAuto := CheckBoxExposure.Checked
    else if Sender = CheckBoxFocus then
      WCamera.FocusAuto := CheckBoxFocus.Checked
    else if Sender = CheckBoxGain then
      WCamera.GainAuto := CheckBoxGain.Checked
    else if Sender = CheckBoxGamma then
      WCamera.GammaAuto := CheckBoxGamma.Checked
    else if Sender = CheckBoxHue then
      WCamera.HueAuto := CheckBoxHue.Checked
    else if Sender = CheckBoxIris then
      WCamera.IrisAuto := CheckBoxIris.Checked
    else if Sender = CheckBoxPan then
      WCamera.PanAuto := CheckBoxPan.Checked
    else if Sender = CheckBoxRoll then
      WCamera.RollAuto := CheckBoxRoll.Checked
    else if Sender = CheckBoxSaturation then
      WCamera.SaturationAuto := CheckBoxSaturation.Checked
    else if Sender = CheckBoxSharpness then
      WCamera.SharpnessAuto := CheckBoxSharpness.Checked
    else if Sender = CheckBoxTilt then
      WCamera.TiltAuto := CheckBoxTilt.Checked
    else if Sender = CheckBoxWhiteBalance then
      WCamera.WhiteBalanceAuto := CheckBoxWhiteBalance.Checked
    else if Sender = CheckBoxZoom then
      WCamera.ZoomAuto := CheckBoxZoom.Checked;
    SetTrackBars;
  end
end;

procedure TFormMain.TrackBarChange(Sender: TObject);
begin
  if not TrackBarsSetting then
    if Sender = TrackBarBacklightCompensation then
      WCamera.BacklightCompensation := TrackBarBacklightCompensation.Position
    else if Sender = TrackBarBrightness then
      WCamera.Brightness := TrackBarBrightness.Position
    else if Sender = TrackBarColorEnable then
      WCamera.ColorEnable := TrackBarColorEnable.Position
    else if Sender = TrackBarContrast then
      WCamera.Contrast := TrackBarContrast.Position
    else if Sender = TrackBarExposure then
      WCamera.Exposure := TrackBarExposure.Position
    else if Sender = TrackBarFocus then
      WCamera.Focus := TrackBarFocus.Position
    else if Sender = TrackBarGain then
      WCamera.Gain := TrackBarGain.Position
    else if Sender = TrackBarGamma then
      WCamera.Gamma := TrackBarGamma.Position
    else if Sender = TrackBarHue then
      WCamera.Hue := TrackBarHue.Position
    else if Sender = TrackBarIris then
      WCamera.Iris := TrackBarIris.Position
    else if Sender = TrackBarPan then
      WCamera.Pan := TrackBarPan.Position
    else if Sender = TrackBarRoll then
      WCamera.Roll := TrackBarRoll.Position
    else if Sender = TrackBarSaturation then
      WCamera.Saturation := TrackBarSaturation.Position
    else if Sender = TrackBarSharpness then
      WCamera.Sharpness := TrackBarSharpness.Position
    else if Sender = TrackBarTilt then
      WCamera.Tilt := TrackBarTilt.Position
    else if Sender = TrackBarWhiteBalance then
      WCamera.WhiteBalance := TrackBarWhiteBalance.Position
    else if Sender = TrackBarZoom then
      WCamera.Zoom := TrackBarZoom.Position;
end;

procedure TFormMain.CheckBoxStretchClick(Sender: TObject);
begin
  CheckBoxAspectRatio.Enabled := CheckBoxStretch.Checked;
  UpdateVideoPosition;
end;

procedure TFormMain.CheckBoxAspectRatioClick(Sender: TObject);
begin
  UpdateVideoPosition;
end;

procedure TFormMain.ButtonSaveCurrentImageClick(Sender: TObject);
var
  filePath: string;
  CurrentWorkingDir: string;
  newDirectory: string;
  I: integer;
  LIMIT: integer;

  uuid: string;
  CurrentDir: string;
begin
  Flight_MovementFm.ForEdit.Text := '1';
  with DmdFm do

  begin
    GetKey.close;
    GetKey.SQL.Clear;
    GetKey.SQL.Text := 'CALL counting.createNewKey(@new_uuid)';

    // Execute the stored procedure
    GetKey.ExecSQL;

    // Retrieve the value of the output parameter
    GetKey.SQL.Text := 'SELECT @new_uuid AS new_uuid';
    GetKey.Open;

    // Check if the query returned a result
    if not GetKey.IsEmpty then
    begin
      uuid := GetKey.FieldByName('new_uuid').AsString;
      // DmdFm.LStopsForThisShip.FieldByName('AutoUID').AsString := uuid;
    end
    else
      uuid := '';

    begin
      // Ensure Lsubmenucounter is active (open)
      with TIniFile.Create(ChangeFileExt(ParamStr(0), '.INI')) do
      begin
        try
          LIMIT := strtoint(ReadString('Data', 'number_of_picture_limit', ''));
        finally
          Free; // Don't forget to free the TIniFile object
        end;
      end;
      LgetImagesForSubMenuCounter.ParamByName('id').Value :=
        LsubmenucounterAutoUID.Value;

      LgetImagesForSubMenuCounter.Execute;
      IF LgetImagesForSubMenuCounter.RecordCount < LIMIT THEN

      BEGIN
        CurrentDir := GetCurrentDir + '\harm_imgs\';
        img := CurrentDir + IntToStr((LgetImagesForSubMenuCounter.RecordCount) +
          1) + '####' + uuid + '.jpg';
        // ShowMessage(img);
        if WCamera.CurrentImageToFile('image.bmp') = ifBmp then
          RenameFile('image.bmp', img);
        // Check if Lsubmenucounter has records

        Lsubmenucounter.Edit;
        Lsubmenucounter.Fields[39].Value := 1;
        Lsubmenucounter.Post;
        LgetImagesForSubMenuCounter.Insert;
        try
          // Copy fields from Lsubmenucounter to Vsubmenucounter_GetNewData
          // ShowMessage(img1);
          LgetImagesForSubMenuCounter.Fields[1].Value := uuid;
          LgetImagesForSubMenuCounter.Fields[2].Value :=
            IntToStr((LgetImagesForSubMenuCounter.RecordCount) + 1) + '####' +
            uuid + '.jpg';
          LgetImagesForSubMenuCounter.Fields[3].Value :=
            LsubmenucounterAutoUID.Value;
          // LLsubmenucounterForServerForEdit.Fields[I].Value;

          LgetImagesForSubMenuCounter.Post;
        except
          LgetImagesForSubMenuCounter.Cancel;
          raise; // Raise exception to handle errors appropriately
        end;
        ShowMessage('Êã ÇáÇáÊÞÇØ');
      end
      ELSE
      BEGIN

        ShowMessage('áÞÏ ÊÌÇÒæÊ ÚÏÏ ÇáÕæÑ ÇáãÓãæÍ Èå');

      END;
    end;
  end;
end;

procedure TFormMain.ButtonDefaultValuesClick(Sender: TObject);
begin
  try
    if WCamera.BacklightCompensationSupported then
      WCamera.BacklightCompensation :=
        WCamera.BacklightCompensationRange.Default;

    if WCamera.BrightnessSupported then
      WCamera.Brightness := WCamera.BrightnessRange.Default;

    if WCamera.ColorEnableSupported then
      WCamera.ColorEnable := WCamera.ColorEnableRange.Default;

    if WCamera.ContrastSupported then
      WCamera.Contrast := WCamera.ContrastRange.Default;

    if WCamera.ExposureSupported then
      WCamera.Exposure := WCamera.ExposureRange.Default;

    if WCamera.FocusSupported then
      WCamera.Focus := WCamera.FocusRange.Default;

    if WCamera.GainSupported then
      WCamera.Gain := WCamera.GainRange.Default;

    if WCamera.GammaSupported then
      WCamera.Gamma := WCamera.GammaRange.Default;

    if WCamera.HueSupported then
      WCamera.Hue := WCamera.HueRange.Default;

    if WCamera.IrisSupported then
      WCamera.Iris := WCamera.IrisRange.Default;

    if WCamera.PanSupported then
      WCamera.Pan := WCamera.PanRange.Default;

    if WCamera.RollSupported then
      WCamera.Roll := WCamera.RollRange.Default;

    if WCamera.SaturationSupported then
      WCamera.Saturation := WCamera.SaturationRange.Default;

    if WCamera.SharpnessSupported then
      WCamera.Sharpness := WCamera.SharpnessRange.Default;

    if WCamera.TiltSupported then
      WCamera.Tilt := WCamera.TiltRange.Default;

    if WCamera.WhiteBalanceSupported then
      WCamera.WhiteBalance := WCamera.WhiteBalanceRange.Default;

    if WCamera.ZoomSupported then
      WCamera.Zoom := WCamera.ZoomRange.Default;
  finally
    SetTrackBars;
  end
end;

procedure TFormMain.ColorBoxBorderColorChange(Sender: TObject);
begin
  PanelCenter.Color := ColorBoxBorderColor.Selected;
  if WCamera.CaptureType = ctVmr9 then
  begin
    WCamera.BorderColor := ColorBoxBorderColor.Selected;
    if WCamera.Active then
      StartDevice;
  end;
end;

procedure TFormMain.WCameraImageAvailable(Sender: TObject; SampleTime: Double);
begin
  PaintBox.Invalidate;
end;

procedure TFormMain.PaintBoxPaint(Sender: TObject);
var
  AspectRatio: Double;
  Height, Width: integer;
  Rect: TRect;
begin
  if WCamera.Active and (WCamera.CaptureType = ctGrabber) then
    try
      if not WCamera.CurrentImageToBitmap(Bitmap, MemoryStream) then
        Exit;

      if CheckBoxStretch.Checked then
      begin
        if CheckBoxAspectRatio.Checked then
        begin
          if Bitmap.Width / Bitmap.Height >= PaintBox.Width / PaintBox.Height
          then
          begin
            AspectRatio := PaintBox.Width / Bitmap.Width;
            Height := Round(AspectRatio * Bitmap.Height);
            Rect.Left := 0;
            Rect.Top := (PaintBox.Height - Height) div 2;
            Rect.Right := PaintBox.Width;
            Rect.Bottom := Rect.Top + Height;
          end
          else
          begin
            AspectRatio := PaintBox.Height / Bitmap.Height;
            Width := Round(AspectRatio * Bitmap.Width);
            Rect.Left := (PaintBox.Width - Width) div 2;
            Rect.Top := 0;
            Rect.Right := Rect.Left + Width;
            Rect.Bottom := PaintBox.Height;
          end;

          PaintBox.Canvas.StretchDraw(Rect, Bitmap);
        end
        else
          Rect := PaintBox.ClientRect;

        PaintBox.Canvas.StretchDraw(Rect, Bitmap);
      end
      else
      begin
        PaintBox.Canvas.Draw((PaintBox.Width - Bitmap.Width) div 2,
          (PaintBox.Height - Bitmap.Height) div 2, Bitmap);
      end;
    except
    end;
end;

end.
