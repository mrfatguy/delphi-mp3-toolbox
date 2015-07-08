object TagForm: TTagForm
  Left = 231
  Top = 103
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Global ID3Tag tag edit'
  ClientHeight = 585
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = EASTEUROPE_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblCheckWarning: TLabel
    Left = 480
    Top = 488
    Width = 199
    Height = 26
    AutoSize = False
    Caption = 'Check at least one checkbox to continue!'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
    WordWrap = True
  end
  object lblListWarning: TLabel
    Left = 480
    Top = 456
    Width = 199
    Height = 26
    AutoSize = False
    Caption = 'Select at least one item on the list to continue!'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
    WordWrap = True
  end
  object lblFolder: TLabel
    Left = 8
    Top = 552
    Width = 90
    Height = 13
    Caption = 'Selected folder:'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblMainInfo: TLabel
    Left = 8
    Top = 8
    Width = 673
    Height = 26
    AutoSize = False
    Caption = 
      'This tool can be used for batch-changing values in ID3Tags of ma' +
      'ny files in one time. Select files, which ID3Tags should be chan' +
      'ged, set parameters and start by clicking on "Start" button.'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object lblInfo: TLabel
    Left = 8
    Top = 568
    Width = 543
    Height = 13
    Caption = 
      'Wszystkich pozycji na liœcie: 0. Wybrano do zmiany tagów ID3Tag:' +
      ' 0. Liczba pozycji, które nie bêd¹ zmienione: 0.'
  end
  object fList: TListView
    Left = 8
    Top = 40
    Width = 672
    Height = 337
    Checkboxes = True
    Columns = <
      item
        Caption = 'Tytu³'
        Width = 180
      end
      item
        Caption = 'Wykonawca'
        Width = 140
      end
      item
        Alignment = taCenter
        Caption = 'Styl muzyki'
        Width = 80
      end
      item
        Caption = 'Album'
        Width = 140
      end
      item
        Alignment = taCenter
        Caption = 'Rok'
        Width = 40
      end
      item
        Alignment = taCenter
        Caption = 'D³ugoœæ'
        Width = 56
      end
      item
        Alignment = taCenter
        Caption = 'Œcie¿ka'
      end
      item
        Caption = 'Komentarz'
        Width = 140
      end
      item
        Caption = 'Plik'
        Width = 280
      end>
    ColumnClick = False
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ReadOnly = True
    RowSelect = True
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    ViewStyle = vsReport
    OnClick = fListClick
    OnDblClick = fListDblClick
  end
  object btnOK: TButton
    Left = 560
    Top = 520
    Width = 120
    Height = 25
    Hint = 
      'Rozpocznij zmianê#Klikniêcie rozpoczyna proces zmiany nazwy wszy' +
      'stkich znaznaczonych plików.'
    Caption = 'Rozpocznij zmianê'
    Default = True
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    OnClick = btnOKClick
  end
  object btnCancel: TButton
    Left = 480
    Top = 520
    Width = 75
    Height = 25
    Hint = 
      'Anuluj#Zamyka to okno, bez wykonywania jakichkolwiek operacji. [' +
      'Esc]'
    Cancel = True
    Caption = 'Anuluj'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    OnClick = btnCancelClick
  end
  object pnlMode: TPanel
    Left = 480
    Top = 496
    Width = 41
    Height = 17
    Caption = 'Result'
    TabOrder = 2
    Visible = False
  end
  object gbParameters: TGroupBox
    Left = 8
    Top = 379
    Width = 465
    Height = 166
    Caption = ' Tagi ID3Tag '
    TabOrder = 1
    object lblTime: TLabel
      Left = 296
      Top = 104
      Width = 66
      Height = 13
      Caption = 'Czas trwania:'
    end
    object Bevel2: TBevel
      Left = 6
      Top = 388
      Width = 267
      Height = 2
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 412
      Height = 13
      Caption = 
        'Zaznaczone poni¿ej tagi zostan¹ wpisane do WSZYSTKICH plików wyb' +
        'ranych na liœcie!'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object eTitle: TEdit
      Left = 8
      Top = 56
      Width = 220
      Height = 21
      Color = clBtnFace
      Enabled = False
      MaxLength = 30
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 3
    end
    object eAuthor: TEdit
      Left = 236
      Top = 56
      Width = 220
      Height = 21
      Color = clBtnFace
      Enabled = False
      MaxLength = 30
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 5
    end
    object eComment: TEdit
      Left = 8
      Top = 136
      Width = 220
      Height = 21
      Color = clBtnFace
      Enabled = False
      MaxLength = 30
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 11
    end
    object eYear: TEdit
      Left = 236
      Top = 136
      Width = 53
      Height = 21
      Color = clBtnFace
      Enabled = False
      MaxLength = 4
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 13
    end
    object eLength: TEdit
      Left = 296
      Top = 136
      Width = 113
      Height = 21
      TabStop = False
      Color = clBtnFace
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 14
    end
    object eGenreList: TComboBox
      Left = 8
      Top = 96
      Width = 220
      Height = 21
      Hint = 'Rodzaj muzyki#Obecnie nie wszystkie rodzaje s¹ obs³ugiwane!'
      Style = csDropDownList
      Color = clBtnFace
      Enabled = False
      ItemHeight = 13
      TabOrder = 7
    end
    object eAlbum: TEdit
      Left = 236
      Top = 96
      Width = 220
      Height = 21
      Color = clBtnFace
      Enabled = False
      MaxLength = 30
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 9
    end
    object eTrack: TEdit
      Left = 420
      Top = 136
      Width = 36
      Height = 21
      Color = clBtnFace
      Enabled = False
      MaxLength = 2
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 17
    end
    object chbTitle: TCheckBox
      Tag = 9
      Left = 8
      Top = 39
      Width = 49
      Height = 17
      Hint = 
        'Tytu³#Odznacz, jeœli nie chcesz zmieniaæ tytu³u utworu w tagach ' +
        'ID3Tag wybranych plików.'
      Caption = 'Tytu³:'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = CheckBoxClick
    end
    object chbAuthor: TCheckBox
      Tag = 9
      Left = 236
      Top = 39
      Width = 81
      Height = 17
      Hint = 
        'Wykonawca#Odznacz, jeœli nie chcesz zmieniaæ wykonawcy w tagach ' +
        'ID3Tag wybranych plików.'
      Caption = 'Wykonawca:'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = CheckBoxClick
    end
    object chbGenreList: TCheckBox
      Tag = 9
      Left = 8
      Top = 79
      Width = 76
      Height = 17
      Hint = 
        'Styl utworu#Odznacz, jeœli nie chcesz zmieniaæ stylu utworu w ta' +
        'gach ID3Tag wybranych plików.'
      Caption = 'Styl utworu:'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = CheckBoxClick
    end
    object chbAlbum: TCheckBox
      Tag = 9
      Left = 236
      Top = 79
      Width = 53
      Height = 17
      Hint = 
        'Album#Odznacz, jeœli nie chcesz zmieniaæ albumu w tagach ID3Tag ' +
        'wybranych plików.'
      Caption = 'Album:'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = CheckBoxClick
    end
    object chbComment: TCheckBox
      Tag = 9
      Left = 8
      Top = 119
      Width = 76
      Height = 17
      Hint = 
        'Komentarz#Odznacz, jeœli nie chcesz zmieniaæ komentarza w tagach' +
        ' ID3Tag wybranych plików.'
      Caption = 'Komentarz:'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = CheckBoxClick
    end
    object chbYear: TCheckBox
      Tag = 9
      Left = 236
      Top = 119
      Width = 40
      Height = 17
      Hint = 
        'Rok#Odznacz, jeœli nie chcesz zmieniaæ roku w tagach ID3Tag wybr' +
        'anych plików.'
      Caption = 'Rok:'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      OnClick = CheckBoxClick
    end
    object chbTrack: TCheckBox
      Tag = 9
      Left = 384
      Top = 119
      Width = 56
      Height = 17
      Hint = 
        'Œcie¿ka#Odznacz, jeœli nie chcesz zmieniaæ œcie¿ki w tagach ID3T' +
        'ag wybranych plików.'
      Alignment = taLeftJustify
      Caption = 'Œcie¿ka:'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
      OnClick = CheckBoxClick
    end
    object chbTrackNum: TCheckBox
      Tag = 9
      Left = 441
      Top = 119
      Width = 15
      Height = 17
      Hint = 
        'Numeruj œcie¿ki#Zaznacz, jeœli chcesz, aby pole œcie¿ka mia³o ko' +
        'lejne numery'
      Alignment = taLeftJustify
      Enabled = False
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
      OnClick = CheckBoxClick
    end
    object chbNameNum: TCheckBox
      Tag = 9
      Left = 154
      Top = 39
      Width = 58
      Height = 17
      Hint = 
        'Numeruj tytu³#Zaznacz jeœli chcesz, aby do tytu³u by³ zawsze dod' +
        'awany kolejny numer. Uwaga! Jeœli tytu³ jest zbyt d³ugi - numera' +
        'cja mo¿e byæ obciêta lub w ogóle siê nie pojawiæ!'
      Alignment = taLeftJustify
      Caption = 'Numeruj'
      Enabled = False
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = CheckBoxClick
    end
    object chbAddBrackets: TCheckBox
      Tag = 9
      Left = 213
      Top = 39
      Width = 15
      Height = 17
      Hint = 
        'Dodaj nawiasy#Zaznacz, jeœli chcesz, aby numeracja by³a dodawana' +
        ' w nawiasach kwadratowych'
      Alignment = taLeftJustify
      Enabled = False
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = CheckBoxClick
    end
  end
  object btnGetID3Tag: TBitBtn
    Left = 480
    Top = 384
    Width = 97
    Height = 25
    Hint = 
      'Odczytaj tagi#Kliknij, aby odczytaæ tagi ID3Tag z zaznaczonej po' +
      'zycji i umieœciæ je w polach po lewej stronie. To samo dzieje si' +
      'ê po dwukrotnym klikniêciu dowolnej pozycji na liœcie.'
    Caption = 'Odczytaj tagi'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = btnGetID3TagClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
      FFFFFFFF77FFFFFFFFFFFFF7A7FFFFFFFFFFFF7AA7FFFFFFFFFFF7AAA7777777
      777F7AAAAAAAAAAAAA7F7AAAAAAAAAAAAA7FF7AAA7777777AA7FFF7AA7FFFFF7
      AA7FFFF7A7FFFFF7AA7FFFFF77FFFFF7AA7FFFFFF7FFFFF7AA7FFFFFFFFFFFF7
      AA7FFFFFFFFFFFF7AA7FFFFFFFFFFFF7777FFFFFFFFFFFFFFFFF}
  end
  object pnlCount: TPanel
    Left = 480
    Top = 472
    Width = 41
    Height = 17
    Caption = '0'
    TabOrder = 11
    Visible = False
  end
  object btnSelectAll: TBitBtn
    Left = 600
    Top = 416
    Width = 24
    Height = 25
    Hint = 
      'Zaznacz wszystkie#Kliknij, aby zaznaczyæ wszystkie pozycje na li' +
      'œcie.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = btnSelectAllClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
      FFFFFFFFFF7777FFFFFFFFFFFF7AA7FFFFFFFFFFFF7AA7FFFFFFFFFFFF7AA7FF
      FFFFFFFFFF7AA7FFFFFFF777777AA777777FF7AAAAAAAAAAAA7FF7AAAAAAAAAA
      AA7FF777777AA777777FFFFFFF7AA7FFFFFFFFFFFF7AA7FFFFFFFFFFFF7AA7FF
      FFFFFFFFFF7AA7FFFFFFFFFFFF7777FFFFFFFFFFFFFFFFFFFFFF}
  end
  object btnDeselectAll: TBitBtn
    Left = 628
    Top = 416
    Width = 24
    Height = 25
    Hint = 
      'Odznacz wszystkie#Kliknij, aby odznaczyæ wszystkie pozycje na li' +
      'œcie.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = btnDeselectAllClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF77777777777777FF7AAAAAAAAAAAA7FF7AAAAAAAAAA
      AA7FF77777777777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object btnChange: TBitBtn
    Left = 656
    Top = 416
    Width = 24
    Height = 25
    Hint = 
      'Odwróæ zaznaczenie#Zamienia wszystkie zaznaczone pozycje w nieza' +
      'znaczone i odwrotnie.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnClick = btnChangeClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
      FFFFFFFFF777777FFFFFFFFF7AAAAAA7FFFFFFF7AAA77AAA7FFFFF7AA77FF77A
      A7FFF7AA7FFFFFF7A7FFF7AA7FFFFFF7AA7FF7A7FFFFFFFF7A7FF7A7FFFFFFFF
      7A7FF7AA7FFFFFF7AA7FF7AA7FFFFFF7A7FFFF7AA77FF77AA7FFFFF7AAA77AAA
      7FFFFFFF7AAAAAA7FFFFFFFFF777777FFFFFFFFFFFFFFFFFFFFF}
  end
  object btnClearAll: TBitBtn
    Left = 480
    Top = 416
    Width = 97
    Height = 25
    Hint = 
      'Wyczyœæ#Klikniêcie powoduje wyczyszczenie wszystkich pól w ramce' +
      ' Tagi ID3Tag'
    Caption = 'Wyczyœæ...'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = btnClearAllClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000C40E0000C40E0000100000000000000004FE04008482
      8400C4C2C400FCFEFC0000000100000000000000000000000000DF013000DA00
      1800D300160077000000001C380000E818000012160000000000333333333333
      3333333333333333333333333333333333333333333333333333331111111111
      1133331111111111113333100000000001333312222222222133331000000000
      0133331222222222213333100000000001333312222222222133331111111111
      1133331111111111113333333333333333333333333333333333333333333333
      3333333333333333333333111111111111333311111111111133331000000000
      0133331222222222213333100000000001333312222222222133331000000000
      0133331222222222213333111111111111333311111111111133333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object btnCloseAndEdit: TBitBtn
    Left = 584
    Top = 384
    Width = 97
    Height = 25
    Hint = 
      'Edytuj...#Kliknij, aby zamkn¹æ to okno i przejœæ do edycji tagów' +
      ' ID3Tagu zaznaczonej pozycji, na pierwszej zak³adce w oknie g³ów' +
      'nym programu'
    Caption = 'Edytuj...'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = btnCloseAndEditClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000C40E0000C40E0000100000000000000004FE04008482
      8400C4C2C400FCFEFC0000000100000000000000000000000000DF013000DA00
      1800D300160077000000001C380000E818000012160000000000333333333333
      3333333333333333333333333333333333333333333333333333311113111131
      1113311113111131111331001310013100133122131221312213310013100131
      0013312213122131221331111311113111133111131111311113333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
end
