object Form11: TForm11
  Left = 0
  Top = 0
  Caption = #1575#1604#1578#1602#1575#1591' '#1575#1604#1589#1608#1585#1577
  ClientHeight = 733
  ClientWidth = 996
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 996
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = -194
    ExplicitWidth = 1190
    object LabelCamera: TLabel
      Left = 8
      Top = 10
      Width = 44
      Height = 15
      Caption = '&Camera:'
      FocusControl = ComboBoxCamera
    end
    object LabelFormat: TLabel
      Left = 336
      Top = 10
      Width = 41
      Height = 15
      Caption = '&Format:'
      FocusControl = ComboBoxFormat
    end
    object LabelBorderColor: TLabel
      Left = 712
      Top = 10
      Width = 68
      Height = 15
      Caption = '&Border color:'
      FocusControl = ColorBoxBorderColor
    end
    object ComboBoxCamera: TComboBox
      Left = 52
      Top = 7
      Width = 273
      Height = 23
      Style = csDropDownList
      TabOrder = 0
    end
    object ComboBoxFormat: TComboBox
      Left = 376
      Top = 7
      Width = 145
      Height = 23
      Style = csDropDownList
      Enabled = False
      TabOrder = 1
    end
    object CheckBoxAspectRatio: TCheckBox
      Left = 611
      Top = 9
      Width = 89
      Height = 17
      Caption = '&Aspect ratio'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 2
    end
    object ColorBoxBorderColor: TColorBox
      Left = 784
      Top = 7
      Width = 145
      Height = 22
      Selected = clWhite
      Style = [cbStandardColors, cbExtendedColors, cbCustomColor, cbPrettyNames]
      TabOrder = 4
    end
    object CheckBoxStretch: TCheckBox
      Left = 531
      Top = 9
      Width = 70
      Height = 17
      Caption = 'S&tretch'
      TabOrder = 5
    end
    object ButtonSaveCurrentImage: TButton
      Left = 527
      Top = 4
      Width = 129
      Height = 25
      Caption = '&Save current image'
      Enabled = False
      TabOrder = 3
    end
  end
  object PanelRight: TPanel
    Left = 324
    Top = 35
    Width = 672
    Height = 698
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitHeight = 436
    object LabelBacklightCompensation: TLabel
      Left = 11
      Top = 7
      Width = 128
      Height = 15
      Caption = 'Backlight compensation'
      FocusControl = TrackBarBacklightCompensation
    end
    object LabelBrightness: TLabel
      Left = 11
      Top = 55
      Width = 55
      Height = 15
      Caption = 'Brightness'
      FocusControl = TrackBarBrightness
    end
    object LabelColorEnable: TLabel
      Left = 11
      Top = 103
      Width = 67
      Height = 15
      Caption = 'Color enable'
      FocusControl = TrackBarColorEnable
    end
    object LabelContrast: TLabel
      Left = 11
      Top = 151
      Width = 45
      Height = 15
      Caption = 'Contrast'
      FocusControl = TrackBarContrast
    end
    object LabelExposure: TLabel
      Left = 11
      Top = 199
      Width = 48
      Height = 15
      Caption = 'Exposure'
      FocusControl = TrackBarExposure
    end
    object LabelFocus: TLabel
      Left = 11
      Top = 247
      Width = 31
      Height = 15
      Caption = 'Focus'
      FocusControl = TrackBarFocus
    end
    object LabelGain: TLabel
      Left = 11
      Top = 295
      Width = 24
      Height = 15
      Caption = 'Gain'
      FocusControl = TrackBarGain
    end
    object LabelGamma: TLabel
      Left = 11
      Top = 343
      Width = 42
      Height = 15
      Caption = 'Gamma'
      FocusControl = TrackBarGamma
    end
    object LabelHue: TLabel
      Left = 11
      Top = 391
      Width = 22
      Height = 15
      Caption = 'Hue'
      FocusControl = TrackBarHue
    end
    object LabelIris: TLabel
      Left = 347
      Top = 7
      Width = 15
      Height = 15
      Caption = 'Iris'
      FocusControl = TrackBarIris
    end
    object LabelPan: TLabel
      Left = 347
      Top = 55
      Width = 20
      Height = 15
      Caption = 'Pan'
      FocusControl = TrackBarPan
    end
    object LabelRoll: TLabel
      Left = 347
      Top = 103
      Width = 20
      Height = 15
      Caption = 'Roll'
      FocusControl = TrackBarRoll
    end
    object LabelSaturation: TLabel
      Left = 347
      Top = 151
      Width = 54
      Height = 15
      Caption = 'Saturation'
      FocusControl = TrackBarSaturation
    end
    object LabelSharpness: TLabel
      Left = 347
      Top = 199
      Width = 53
      Height = 15
      Caption = 'Sharpness'
      FocusControl = TrackBarSharpness
    end
    object LabelTilt: TLabel
      Left = 347
      Top = 247
      Width = 16
      Height = 15
      Caption = 'Tilt'
      FocusControl = TrackBarTilt
    end
    object LabelWhiteBalance: TLabel
      Left = 347
      Top = 295
      Width = 75
      Height = 15
      Caption = 'White balance'
      FocusControl = TrackBarWhiteBalance
    end
    object LabelZoom: TLabel
      Left = 347
      Top = 343
      Width = 32
      Height = 15
      Caption = 'Zoom'
      FocusControl = TrackBarZoom
    end
    object TrackBarBacklightCompensation: TTrackBar
      Left = 8
      Top = 24
      Width = 321
      Height = 26
      PageSize = 1
      TabOrder = 0
      ThumbLength = 7
      TickMarks = tmTopLeft
    end
    object CheckBoxBacklightCompensation: TCheckBox
      Left = 280
      Top = 6
      Width = 49
      Height = 17
      Caption = 'Auto'
      Enabled = False
      TabOrder = 1
    end
    object TrackBarBrightness: TTrackBar
      Left = 8
      Top = 72
      Width = 321
      Height = 26
      PageSize = 1
      TabOrder = 2
      ThumbLength = 7
      TickMarks = tmTopLeft
    end
    object CheckBoxBrightness: TCheckBox
      Left = 280
      Top = 54
      Width = 49
      Height = 17
      Caption = 'Auto'
      Enabled = False
      TabOrder = 3
    end
    object TrackBarColorEnable: TTrackBar
      Left = 8
      Top = 120
      Width = 321
      Height = 26
      PageSize = 1
      TabOrder = 4
      ThumbLength = 7
      TickMarks = tmTopLeft
    end
    object CheckBoxColorEnable: TCheckBox
      Left = 280
      Top = 102
      Width = 49
      Height = 17
      Caption = 'Auto'
      Enabled = False
      TabOrder = 5
    end
    object TrackBarContrast: TTrackBar
      Left = 8
      Top = 168
      Width = 321
      Height = 26
      PageSize = 1
      TabOrder = 6
      ThumbLength = 7
      TickMarks = tmTopLeft
    end
    object CheckBoxContrast: TCheckBox
      Left = 280
      Top = 150
      Width = 49
      Height = 17
      Caption = 'Auto'
      Enabled = False
      TabOrder = 7
    end
    object TrackBarExposure: TTrackBar
      Left = 8
      Top = 216
      Width = 321
      Height = 26
      PageSize = 1
      TabOrder = 8
      ThumbLength = 7
      TickMarks = tmTopLeft
    end
    object CheckBoxExposure: TCheckBox
      Left = 280
      Top = 198
      Width = 49
      Height = 17
      Caption = 'Auto'
      Enabled = False
      TabOrder = 9
    end
    object TrackBarFocus: TTrackBar
      Left = 8
      Top = 264
      Width = 321
      Height = 26
      PageSize = 1
      TabOrder = 10
      ThumbLength = 7
      TickMarks = tmTopLeft
    end
    object CheckBoxFocus: TCheckBox
      Left = 280
      Top = 246
      Width = 49
      Height = 17
      Caption = 'Auto'
      Enabled = False
      TabOrder = 11
    end
    object TrackBarGain: TTrackBar
      Left = 8
      Top = 312
      Width = 321
      Height = 26
      PageSize = 1
      TabOrder = 12
      ThumbLength = 7
      TickMarks = tmTopLeft
    end
    object CheckBoxGain: TCheckBox
      Left = 280
      Top = 294
      Width = 49
      Height = 17
      Caption = 'Auto'
      Enabled = False
      TabOrder = 13
    end
    object TrackBarGamma: TTrackBar
      Left = 8
      Top = 360
      Width = 321
      Height = 26
      PageSize = 1
      TabOrder = 14
      ThumbLength = 7
      TickMarks = tmTopLeft
    end
    object CheckBoxGamma: TCheckBox
      Left = 280
      Top = 342
      Width = 49
      Height = 17
      Caption = 'Auto'
      Enabled = False
      TabOrder = 15
    end
    object TrackBarHue: TTrackBar
      Left = 8
      Top = 408
      Width = 321
      Height = 26
      PageSize = 1
      TabOrder = 16
      ThumbLength = 7
      TickMarks = tmTopLeft
    end
    object CheckBoxHue: TCheckBox
      Left = 280
      Top = 390
      Width = 49
      Height = 17
      Caption = 'Auto'
      Enabled = False
      TabOrder = 17
    end
    object TrackBarIris: TTrackBar
      Left = 344
      Top = 24
      Width = 321
      Height = 26
      PageSize = 1
      TabOrder = 18
      ThumbLength = 7
      TickMarks = tmTopLeft
    end
    object CheckBoxIris: TCheckBox
      Left = 616
      Top = 6
      Width = 49
      Height = 17
      Caption = 'Auto'
      Enabled = False
      TabOrder = 19
    end
    object TrackBarPan: TTrackBar
      Left = 344
      Top = 72
      Width = 321
      Height = 26
      PageSize = 1
      TabOrder = 20
      ThumbLength = 7
      TickMarks = tmTopLeft
    end
    object CheckBoxPan: TCheckBox
      Left = 616
      Top = 54
      Width = 49
      Height = 17
      Caption = 'Auto'
      Enabled = False
      TabOrder = 21
    end
    object TrackBarRoll: TTrackBar
      Left = 344
      Top = 120
      Width = 321
      Height = 26
      PageSize = 1
      TabOrder = 22
      ThumbLength = 7
      TickMarks = tmTopLeft
    end
    object CheckBoxRoll: TCheckBox
      Left = 616
      Top = 102
      Width = 49
      Height = 17
      Caption = 'Auto'
      Enabled = False
      TabOrder = 23
    end
    object TrackBarSaturation: TTrackBar
      Left = 344
      Top = 168
      Width = 321
      Height = 26
      PageSize = 1
      TabOrder = 24
      ThumbLength = 7
      TickMarks = tmTopLeft
    end
    object CheckBoxSaturation: TCheckBox
      Left = 616
      Top = 150
      Width = 49
      Height = 17
      Caption = 'Auto'
      Enabled = False
      TabOrder = 25
    end
    object TrackBarSharpness: TTrackBar
      Left = 344
      Top = 216
      Width = 321
      Height = 26
      PageSize = 1
      TabOrder = 26
      ThumbLength = 7
      TickMarks = tmTopLeft
    end
    object CheckBoxSharpness: TCheckBox
      Left = 616
      Top = 198
      Width = 49
      Height = 17
      Caption = 'Auto'
      Enabled = False
      TabOrder = 27
    end
    object TrackBarTilt: TTrackBar
      Left = 344
      Top = 264
      Width = 321
      Height = 26
      PageSize = 1
      TabOrder = 28
      ThumbLength = 7
      TickMarks = tmTopLeft
    end
    object CheckBoxTilt: TCheckBox
      Left = 616
      Top = 246
      Width = 49
      Height = 17
      Caption = 'Auto'
      Enabled = False
      TabOrder = 29
    end
    object TrackBarWhiteBalance: TTrackBar
      Left = 344
      Top = 312
      Width = 321
      Height = 26
      PageSize = 1
      TabOrder = 30
      ThumbLength = 7
      TickMarks = tmTopLeft
    end
    object CheckBoxWhiteBalance: TCheckBox
      Left = 616
      Top = 294
      Width = 49
      Height = 17
      Caption = 'Auto'
      Enabled = False
      TabOrder = 31
    end
    object TrackBarZoom: TTrackBar
      Left = 344
      Top = 360
      Width = 321
      Height = 26
      PageSize = 1
      TabOrder = 32
      ThumbLength = 7
      TickMarks = tmTopLeft
    end
    object CheckBoxZoom: TCheckBox
      Left = 616
      Top = 342
      Width = 49
      Height = 17
      Caption = 'Auto'
      Enabled = False
      TabOrder = 33
    end
    object ButtonDefaultValues: TButton
      Left = 440
      Top = 392
      Width = 129
      Height = 25
      Caption = '&Default values'
      Enabled = False
      TabOrder = 34
    end
  end
  object PanelCenter: TPanel
    Left = 0
    Top = 35
    Width = 324
    Height = 698
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    FullRepaint = False
    ParentBackground = False
    TabOrder = 2
    ExplicitWidth = 518
    ExplicitHeight = 436
    object PaintBox: TPaintBox
      Left = 0
      Top = 0
      Width = 324
      Height = 698
      Align = alClient
      ExplicitWidth = 518
      ExplicitHeight = 436
    end
  end
  object WCamera: TWCamera
    BorderColor = clWhite
    PreviewControl = PanelCenter
    Left = 32
    Top = 49
  end
  object XPManifest: TXPManifest
    Left = 68
    Top = 49
  end
end
