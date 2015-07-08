object MainForm: TMainForm
  Left = 204
  Top = 84
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'pnMP3 - panel narz'#281'dziowy MP3, wersja 2.2'
  ClientHeight = 617
  ClientWidth = 585
  Color = clBtnFace
  Font.Charset = EASTEUROPE_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblFilesCount: TLabel
    Left = 8
    Top = 546
    Width = 220
    Height = 13
    Caption = 'Liczba wszystkich plik'#243'w w folderze: 0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnAbout: TBitBtn
    Left = 502
    Top = 537
    Width = 78
    Height = 72
    Hint = 'O programie#Kliknij, aby wy'#347'wietli'#263' informacje o programie.'
    Caption = 'O programie'
    TabOrder = 8
    OnClick = imgAboutClick
    Glyph.Data = {
      DE100000424DDE100000000000003604000028000000460000002D0000000100
      080000000000A80C0000130B0000130B000000010000000000000402040004D2
      FC008482840084E6FC00C4C2C4004442440044DEFC00C4F6FC00242224006462
      6400E4E2E400A4A2A400A4EEFC0064E2FC00E4FAFC0024D6FC00141214005452
      54003432340074727400B4B2B400F4F2F40094929400D4D2D40074E6FC0094EA
      FC00B4F2FC0034DAFC0014D6FC0054DEFC00F4FEFC000C0A0C008C8A8C00CCCA
      CC004C4A4C00D4F6FC002C2A2C006C6A6C00ECEAEC00ACAAAC006CE2FC001C1A
      1C005C5A5C003C3A3C007C7A7C00BCBABC000CD2FC008CEAFC00ACEEFC00ECFA
      FC002CDAFC009C9A9C00DCDEDC007CE6FC009CEEFC00BCF2FC003CDAFC005CE2
      FC00FCFAFC00040604008486840084EAFC00C4C6C400444644004CDEFC00CCF6
      FC002426240064666400E4E6E400A4A6A40064E6FC0024DAFC00141614005456
      54003436340074767400B4B6B400F4F6F400D4D6D40094EEFC001CD6FC0054E2
      FC000C0E0C008C8E8C00CCCECC004C4E4C00DCFAFC002C2E2C006C6E6C00ECEE
      EC00ACAEAC006CE6FC001C1E1C005C5E5C003C3E3C007C7E7C00BCBEBC000CD6
      FC00ACF2FC00ECFEFC009C9E9C007CEAFC00BCF6FC003CDEFC00FCFEFC000000
      0000000015000000000000000900F000030017001000000000000010EB000000
      06001500910000007C00600100009E000000010000000000000008005800F090
      00001700B200000000000040E000000640001515880000007C0080310000E983
      000012910000007C000000FFB40000FFE90000FF120000FF000000D84D0000E8
      9D001512360000007E008C887000E9E8020012123C0000007E00ABBA02003782
      7F00919100007C7C0000C70088003790E700911612007C000000080091000600
      0B001515BC00000002005840230000060400B21500000000000000D0600000E8
      9D000012360000007E0000780000000100000015000000000000C8D00100E9E8
      00001212000000000000FD450000FE850000809100007C7C000005000000FF00
      0000801500007C0000007400000015200000181700000000000082007000FE00
      020080153C007C007E000000020000907F000016000000000000580100000000
      0000B200360000007E0009B0A200030D0C0000001D00000000000100A2000020
      0C0000171D000000000098005000E90054001200380000000000F898D000F705
      E7001215120000000000F8002300F700360012001D0000005B00A800A2009A00
      0C0083001D007C00000008E80100FF8F0000801600007C000000FF000000FF00
      0000FF000000FF00000005000000FF000000800000007C000000D4B6A2000101
      0C0042001D000000000008A03F00F0E9E5001512380000007E002FCA2900FC0E
      4E0080911D007C7C5B008200A200FE900C0080161D007C00000058000200D690
      0000360000007E0000007A6D3F001405E500389138007E7C7E00686868686868
      6868686868686868686868686868686868686868686868686868686868686868
      6868686868686868686868686868686844023C26686868686868686868686868
      0000686868686868686868686868686868686868686868686868686868686868
      6868686868686868686868151515686868686868686868684A00003F68686868
      6868686868686868000068686868686868686868686868686868686868686868
      68686868686868686868686868592D5F1124101F1F1F5242225F145968686826
      0000001F15686868686868686868686800006868686868686868686868686868
      68686868686868686868686868686868686815455510105E13334C3E213E2D64
      2C3F48522245144A0000003F6868686868686868686868680000686868686868
      686868686868686868686868686868686868686868686868445F2910434C1568
      6868686868686868686815605700005C3E023C26686868686868686868686868
      000068686868686868686868686868686868686868686868686868686868262C
      52126415686868686868686868686868683420575258335748163A6868686868
      6868686868686868000068686868686868686868686868686868686868686868
      6868686868645C24273A68686868686868686868683A3E025E1F573C4468684D
      64292B5468686868686868686868686800006868686868686868686868686868
      68686868686868686868680A5510533A6868686868684D264E4C16434A1F102B
      5F17686868686868685909523368686868686868686868680000686868686868
      686868686868170421545454545454545454452948164533535F585D3F125C52
      0052122A3C2D266868686868686868686868680B102C68686868686868686868
      00006868686868686868686868260852101010101010101052003B52105C4212
      5E552A5802165A21444D6868686868686868686868686868686868684E5A6868
      686868686868686800006868686868686868686868684D4D4D4D4D4D4D4D4D15
      58102D4D68686868686868686868686868686868686868686868686868686868
      6868686868686868686868686868686800006868686868686868686868686868
      6868686868683A58483E68686868686868686868686868686868686868686868
      6868686868686868686868686868686868686868686868680000686868686868
      6868686868686868686868686868582954686868686868686868686868686868
      6868686868686868686868686868686868686868686868686868686868686868
      0000686868686868686868686868686868686868686410216868686868686868
      6868686868686868686868686868686868686868686868686868686868686868
      686868686868686800006868686868686868686868686868686868683E524568
      6868686868686868686868686868686868686868686868686868686868686868
      6868686868686868686868686868686800006868686868686868686868686868
      6868682608136868686868686868686868686868686868686868686868686868
      6868686868686868686868686868686868686868686868680000686868686868
      68686868686868686868682A054D686868684F61616161616161616161616161
      6161616161616161616161616136686868686868686868686868686868686868
      0000686868686868686868686868686868682D524E68686868682F0101010101
      0101010101010101010101010101010101010101013668686868686868686868
      686868686868686800006868686868686868686868686868683A121368686868
      68682F0101010101010101010101010101010101010101010101010101366868
      6868686868686868686868686868686800006868686868686868686868686868
      68165C596868686868682F010101010101010101010101010101010101010101
      0101010101366868686868686868686868686868686868680000686868686868
      6868686868686868155C33686868686868682F01010101010101010101010101
      0101010101010101010101010136686868686868686868686868686868686868
      00006868686868686868686868686868335C4D686868686868682F0101010101
      0101010101010101010101010101010101010101013668686868686868686868
      68686868686868680000686868686868686868686868683A4A3C686868686868
      68682F0101010101010101010101010101010101010101010101010101366868
      6868686868686868686868686868686800006868686868686868686868686817
      1F3468686868686868682F01010101010101012E47010101010101010F010101
      0101010101366868686868686868686868686868686868680000686868686868
      686868686868685F056868686868686868682F0101010101010101381D010101
      0101010118010101010101010136686868686868686868686868686868686868
      0000686868686868686868686868682B206868686868686868682F0101010101
      0101010D18010101010101501A01010101010101013668686868686868686868
      6868686868686868000068686868686868686868686826525468686868686868
      68682F01010101470601402F0C01280138012E38310101010101010101366868
      6868686868686868686868686868686800006868686868686868686868680410
      4D68686868686868686807654601010C3501363741060E2E3639400D68500F32
      350C656565416868686868686868686868686868686868680000686868686868
      686868686868164A686868686868686868680E371E0D3268302E561E31566847
      070E2F2F68403918566662626256686868686868686868686868686868686868
      00006868686868686868686868684B49686868686868686868682F015163070E
      2350686868410E403168411A68182F0E63610101013668686868686868686868
      686868686868686800006868686868686868686868685D136868686868686868
      68682F0101191E511E40681E0E1B1A2F68686831230C07683601010101366868
      686868686868686868686868686868680000686868686868686868686868555F
      686868686868686868682F01012E0D1C6319684151013D563136316803566368
      6701010101366868686868686868686868686868686868680000686868686868
      6868686868685502686868686868686868682F010101010123561E0C01013968
      231C626338681E0C010101010136686868686868686868686868686868686868
      0000686868686868686868686868492C686868686868686868682F0101010101
      0C6830350101326862015B412E1E071C01010101013668686868686868686868
      6868686868686868000068686868686868686868686825096868686868686868
      68682F010101010135680D0601011C312F01320C01232F010101010101366868
      6868686868686868686868686868686800006868686868686868686868683C3F
      686868686868686868682F010101010140683201010101410D012E0D010C3901
      0101010101366868686868686868686868686868686868680000686868686868
      6868686868681429686868686868686868682F010101010132631C010101010C
      0601016101184701010101010136686868686868686868686868686868686868
      00006868686868686868686868683452346868686868686868682F0101010101
      2E4101010101011850010101011B2E0101010101013668686868686868686868
      6868686868686868000068686868686868686868686868243368686868686868
      68682F0101010101013D01010101013801010101010101010101010101366868
      6868686868686868686868686868686800006868686868686868686868686813
      226868686868686868682F0101010101011B0101010101010101010101010101
      0101010101366868686868686868686868686868686868680000686868686868
      68686868686868541F0468686868686868682F01010101010101010101010101
      0101010101010101010101010136686868686868686868686868686868686868
      00006868686868686868686868686816000058686868686868682F0101010101
      0101010101010101010101010101010101010101013668686868686868686868
      68686868686868680000686868686868686868686868682900003B0A68686868
      6868192E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E366868
      6868686868686868686868686868686800006868686868686868686868686824
      000010266868686868681E313131313131313131313131313131313131313131
      31313131311E6868686868686868686868686868686868680000686868686868
      6868686868686804242945686868686868686868686868686868686868686868
      6868686868686868686868686868686868686868686868686868686868686868
      0000}
    Layout = blGlyphTop
  end
  object Panel1: TPanel
    Left = 8
    Top = 30
    Width = 240
    Height = 483
    BevelOuter = bvNone
    TabOrder = 7
    object spNavigation: TSplitter
      Left = 0
      Top = 240
      Width = 240
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object lbDirectory: TDirectoryListBox
      Left = 0
      Top = 0
      Width = 240
      Height = 240
      Align = alTop
      FileList = lbFiles
      ItemHeight = 16
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
    end
    object lbFiles: TFileListBox
      Left = 0
      Top = 243
      Width = 240
      Height = 240
      Align = alClient
      FileType = [ftReadOnly, ftHidden, ftSystem, ftArchive, ftNormal]
      ItemHeight = 13
      Mask = '*.mp3'
      ParentShowHint = False
      PopupMenu = pmFiles
      ShowHint = False
      TabOrder = 1
      OnChange = lbFilesChange
      OnClick = lbFilesClick
    end
  end
  object pcMain: TPageControl
    Left = 256
    Top = 4
    Width = 322
    Height = 448
    ActivePage = tsMain
    TabOrder = 0
    OnChange = pcMainChange
    object tsMain: TTabSheet
      Caption = 'Tagi i nazwa pliku'
      object Label6: TLabel
        Left = 4
        Top = 4
        Width = 304
        Height = 39
        AutoSize = False
        Caption = 
          'Tutaj mo'#380'esz zmienia'#263' tagi ID3Tag oraz generowa'#263' nazw'#281' pliku na ' +
          'podstawie jego zawarto'#347'ci. Dodatkowe narz'#281'dzia s'#261' dost'#281'- pne w m' +
          'enu podr'#281'cznym listy plik'#243'w, po lewej stronie okna.'
        WordWrap = True
      end
      object gbParameters: TGroupBox
        Left = 4
        Top = 46
        Width = 306
        Height = 221
        Caption = ' Parametry zamiany '
        TabOrder = 0
        object lblTitle: TLabel
          Left = 6
          Top = 16
          Width = 66
          Height = 13
          Caption = 'Tytu'#322' utworu:'
        end
        object lblTime: TLabel
          Left = 56
          Top = 137
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
        object eTitle: TEdit
          Left = 6
          Top = 32
          Width = 266
          Height = 21
          MaxLength = 30
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          OnChange = eTitleChange
          OnEnter = EditControlEnter
          OnExit = EditControlExit
        end
        object eAuthor: TEdit
          Left = 6
          Top = 73
          Width = 266
          Height = 21
          MaxLength = 30
          ParentShowHint = False
          ShowHint = False
          TabOrder = 1
          OnChange = eAuthorChange
          OnEnter = EditControlEnter
          OnExit = EditControlExit
        end
        object eComment: TEdit
          Left = 6
          Top = 193
          Width = 250
          Height = 21
          MaxLength = 30
          ParentShowHint = False
          ShowHint = False
          TabOrder = 6
          OnEnter = EditControlEnter
          OnExit = EditControlExit
        end
        object cbComment: TCheckBox
          Left = 6
          Top = 176
          Width = 73
          Height = 17
          Hint = 'Komentarz#Zaznacz, by zapami'#281'ta'#263' ten parametr.'
          TabStop = False
          Caption = 'Komentarz:'
          TabOrder = 12
        end
        object eYear: TEdit
          Left = 6
          Top = 153
          Width = 43
          Height = 21
          MaxLength = 4
          ParentShowHint = False
          ShowHint = False
          TabOrder = 3
          OnChange = eAuthorChange
          OnEnter = EditControlEnter
          OnExit = EditControlExit
        end
        object cbGenre: TCheckBox
          Left = 158
          Top = 136
          Width = 74
          Height = 17
          Hint = 'Rodzaj muzyki#Zaznacz, by zapami'#281'ta'#263' ten parametr.'
          TabStop = False
          Caption = 'Styl muzyki:'
          TabOrder = 11
        end
        object eLength: TEdit
          Left = 54
          Top = 153
          Width = 99
          Height = 21
          TabStop = False
          Color = clBtnFace
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 4
        end
        object cbGenreList: TComboBox
          Left = 158
          Top = 153
          Width = 140
          Height = 21
          Hint = 'Rodzaj muzyki#Obecnie nie wszystkie rodzaje s'#261' obs'#322'ugiwane!'
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 5
          OnEnter = EditControlEnter
          OnExit = EditControlExit
        end
        object eAlbum: TEdit
          Left = 6
          Top = 113
          Width = 266
          Height = 21
          MaxLength = 30
          ParentShowHint = False
          ShowHint = False
          TabOrder = 2
          OnChange = eAuthorChange
          OnEnter = EditControlEnter
          OnExit = EditControlExit
        end
        object cbAlbum: TCheckBox
          Left = 6
          Top = 96
          Width = 51
          Height = 17
          Hint = 'Album#Zaznacz, by zapami'#281'ta'#263' ten parametr.'
          TabStop = False
          Caption = 'Album:'
          TabOrder = 9
        end
        object cbAuthor: TCheckBox
          Left = 6
          Top = 56
          Width = 83
          Height = 17
          Hint = 'Wykonawca#Zaznacz, by zapami'#281'ta'#263' ten parametr.'
          TabStop = False
          Caption = 'Wykonawca:'
          TabOrder = 7
        end
        object cbYear: TCheckBox
          Left = 6
          Top = 136
          Width = 43
          Height = 17
          Hint = 'Rok#Zaznacz, by zapami'#281'ta'#263' ten parametr.'
          TabStop = False
          Caption = 'Rok:'
          TabOrder = 10
        end
        object btnSigns1: TButton
          Left = 275
          Top = 32
          Width = 21
          Height = 21
          Hint = 
            'Wielko'#347#263' liter#Kliknij prawym, aby wybra'#263' szablon zmiany. Klikni' +
            'j lewym, aby u'#380'y'#263' go w wybranym polu.'
          Caption = '...'
          PopupMenu = pmSigns
          TabOrder = 14
          TabStop = False
          OnClick = PopupSignsMenu
        end
        object btnSigns2: TButton
          Tag = 1
          Left = 275
          Top = 73
          Width = 21
          Height = 21
          Hint = 
            'Wielko'#347#263' liter#Kliknij prawym, aby wybra'#263' szablon zmiany. Klikni' +
            'j lewym, aby u'#380'y'#263' go w wybranym polu.'
          Caption = '...'
          PopupMenu = pmSigns
          TabOrder = 15
          TabStop = False
          OnClick = PopupSignsMenu
        end
        object btnSigns3: TButton
          Tag = 2
          Left = 275
          Top = 113
          Width = 21
          Height = 21
          Hint = 
            'Wielko'#347#263' liter#Kliknij prawym, aby wybra'#263' szablon zmiany. Klikni' +
            'j lewym, aby u'#380'y'#263' go w wybranym polu.'
          Caption = '...'
          PopupMenu = pmSigns
          TabOrder = 16
          TabStop = False
          OnClick = PopupSignsMenu
        end
        object eTrack: TEdit
          Left = 262
          Top = 193
          Width = 36
          Height = 21
          MaxLength = 2
          ParentShowHint = False
          ShowHint = False
          TabOrder = 8
          OnChange = eAuthorChange
          OnEnter = EditControlEnter
          OnExit = EditControlExit
        end
        object cbTrack: TCheckBox
          Left = 242
          Top = 176
          Width = 56
          Height = 17
          Hint = #346'cie'#380'ka#Zaznacz, by zapami'#281'ta'#263' ten parametr.'
          TabStop = False
          Alignment = taLeftJustify
          Caption = #346'cie'#380'ka:'
          TabOrder = 13
        end
      end
      object gbChange: TGroupBox
        Left = 4
        Top = 270
        Width = 306
        Height = 147
        Caption = ' Zmie'#324'... '
        TabOrder = 1
        object lblOriginalName: TLabel
          Left = 8
          Top = 16
          Width = 114
          Height = 13
          Caption = 'Oryginalna nazwa pliku:'
        end
        object lblDestinationName: TLabel
          Left = 6
          Top = 58
          Width = 153
          Height = 13
          Caption = 'Proponowana nazwa pliku:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btnID3: TButton
          Left = 8
          Top = 100
          Width = 94
          Height = 25
          Hint = 
            'Zmie'#324' ID3Tag#Zmienia tylko zawarto'#347#263' p'#243#322' ID3Tag w zaznaczonym pl' +
            'iku. [Ctrl+F1]'
          Caption = 'Zmie'#324' ID3Tag'
          TabOrder = 2
          OnClick = btnID3Click
        end
        object btnFile: TButton
          Left = 105
          Top = 100
          Width = 94
          Height = 25
          Hint = 
            'Zmie'#324' nazw'#281'#Zmienia tylko nazw'#281' zaznaczonego pliku, pozostawiaj'#261 +
            'c oryginalny ID3Tag (je'#347'li istnieje). [Ctrl+F2]'
          Caption = 'Zmie'#324' nazw'#281
          TabOrder = 3
          OnClick = btnFileClick
        end
        object btnAll: TButton
          Left = 202
          Top = 100
          Width = 94
          Height = 25
          Hint = 
            'Zmie'#324' wszystko#Zmienia zar'#243'wno zawarto'#347#263' ID3Tag, jak i nazw'#281' pli' +
            'ku. [Ctrl+F3]'
          Caption = 'Zmie'#324' wszystko'
          TabOrder = 4
          OnClick = btnAllClick
        end
        object eOrigFile: TEdit
          Left = 6
          Top = 32
          Width = 291
          Height = 21
          Hint = 'Oryginalna nazwa pliku#Pierwotna nazwa pliku, przed jej zmian'#261'.'
          TabStop = False
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 0
        end
        object eNewFile: TEdit
          Left = 6
          Top = 74
          Width = 291
          Height = 21
          Hint = 
            'Proponowana nazwa pliku#Nazwa pliku zostanie zmieniona na zaprop' +
            'onowan'#261'. Mo'#380'esz swobodnie zmienia'#263' zawarto'#347#263' tego pola.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnChange = eNewFileChange
        end
        object chbFastEditor: TCheckBox
          Left = 8
          Top = 128
          Width = 174
          Height = 17
          Hint = 
            'Szybki edytor ID3Tag#W tym trybie pracy zmiana ID3Tag powoduje a' +
            'utomatyczne przej'#347'cie do nast'#281'pnego pliku w folderze oraz powr'#243't' +
            ' kursora do aktualnie edytowanego pola.'
          Caption = 'Tryb szybkiego edytora ID3Tag'
          TabOrder = 5
          OnClick = chbFastEditorClick
        end
      end
    end
    object tsList: TTabSheet
      Caption = 'Lista utwor'#243'w'
      ImageIndex = 1
      object Label3: TLabel
        Left = 4
        Top = 4
        Width = 304
        Height = 39
        AutoSize = False
        Caption = 
          'Na tej zak'#322'adce mo'#380'esz utworzy'#263' list'#281' wykonawc'#243'w i tytu'#322#243'w na po' +
          'dstawie danych z ID3Tag we wszystkich plikach znajdu- j'#261'cych si'#281 +
          ' w wybranym folderze.'
        WordWrap = True
      end
      object lblProgress: TLabel
        Left = 272
        Top = 350
        Width = 36
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0%'
      end
      object lblStatus: TLabel
        Left = 4
        Top = 332
        Width = 49
        Height = 13
        Caption = 'Gotowe...'
      end
      object lblSize: TLabel
        Left = 156
        Top = 400
        Width = 42
        Height = 13
        Caption = 'Rozmiar:'
        OnDblClick = SizeAndLengthToClipboard
      end
      object lblLength: TLabel
        Left = 4
        Top = 400
        Width = 42
        Height = 13
        Caption = 'D'#322'ugo'#347#263':'
        OnDblClick = SizeAndLengthToClipboard
      end
      object btnDoIt: TButton
        Left = 4
        Top = 368
        Width = 60
        Height = 25
        Hint = 
          'Utw'#243'rz!#Kliknij, aby utworzy'#263' list'#281' na podstawie tag'#243'w ID3Tag ws' +
          'zystkich plik'#243'w znajduj'#261'cych si'#281' w wybranym folderze'
        Caption = 'Utw'#243'rz!'
        Default = True
        Enabled = False
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btnDoItClick
      end
      object pbStatus: TProgressBar
        Left = 4
        Top = 348
        Width = 270
        Height = 17
        TabOrder = 5
      end
      object mList: TListBox
        Left = 4
        Top = 50
        Width = 304
        Height = 279
        Hint = 
          'Lista utwor'#243'w i wykonawc'#243'w#Kliknij dwukrotnie wybran'#261' pozycj'#281', a' +
          'by przej'#347#263' na pierwsz'#261' zak'#322'adk'#281', do edycji zaznaczonego pliku.'
        ItemHeight = 13
        TabOrder = 4
        OnClick = mListClick
        OnDblClick = mListDblClick
      end
      object btnClear: TButton
        Left = 132
        Top = 368
        Width = 60
        Height = 25
        Hint = 'Wyczy'#347#263'!#Kliknij, aby opr'#243#380'ni'#263' list'#281' z zawarto'#347'ci'
        Caption = 'Wyczy'#347#263'!'
        TabOrder = 2
        OnClick = btnClearClick
      end
      object btnCopyToClipboard: TButton
        Left = 68
        Top = 368
        Width = 60
        Height = 25
        Hint = 
          'Kopiuj#Kliknij, aby skopiowa'#263' list'#281' do Schowka (format tekstu zw' +
          'yk'#322'ego)'
        Caption = 'Kopiuj'
        Enabled = False
        TabOrder = 1
        OnClick = btnCopyToClipboardClick
      end
      object btnMore: TButton
        Left = 248
        Top = 368
        Width = 60
        Height = 25
        Hint = 
          'Wi'#281'cej...#Otwiera okno zaawansowanej zmiany globalnej tag'#243'w ID3T' +
          'ag'
        Caption = 'Wi'#281'cej...'
        Enabled = False
        TabOrder = 3
        OnClick = btnMoreClick
      end
      object eAllLength: TEdit
        Left = 48
        Top = 396
        Width = 104
        Height = 21
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 6
        OnDblClick = SizeAndLengthToClipboard
      end
      object eAllSize: TEdit
        Left = 200
        Top = 396
        Width = 104
        Height = 21
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 7
        OnDblClick = SizeAndLengthToClipboard
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Zmiana globalna'
      ImageIndex = 2
      object Label7: TLabel
        Left = 4
        Top = 4
        Width = 302
        Height = 26
        AutoSize = False
        Caption = 
          'To narz'#281'dzie, po uruchomieniu pobierze dane z ID3Tag. Na ich pod' +
          'stawie (i poni'#380'szych parametr'#243'w) zmieni nazwy plik'#243'w.'
        WordWrap = True
      end
      object lblGlobal: TLabel
        Left = 272
        Top = 398
        Width = 36
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0%'
      end
      object lblDesc: TLabel
        Left = 4
        Top = 380
        Width = 49
        Height = 13
        Caption = 'Gotowe...'
      end
      object pbGlobal: TProgressBar
        Left = 4
        Top = 396
        Width = 270
        Height = 17
        TabOrder = 0
      end
      object gbMissingData: TGroupBox
        Left = 4
        Top = 32
        Width = 299
        Height = 86
        Caption = ' Niepe'#322'ne dane '
        TabOrder = 1
        object Label10: TLabel
          Left = 8
          Top = 16
          Width = 284
          Height = 39
          AutoSize = False
          Caption = 
            'Nazwy plik'#243'w, kt'#243're maj'#261' brakuj'#261'ce dane w ID3Tag (tytu'#322' lub wyko' +
            'nawca) nie b'#281'd'#261' zmieniane. Aby uwzgl'#281'dni'#263' r'#243'wnie'#380' takie pliki, z' +
            'aznacz poni'#380'sze pole.'
          WordWrap = True
        end
        object chbAlsoMissingData: TCheckBox
          Left = 8
          Top = 64
          Width = 276
          Height = 17
          Hint = 
            'B'#322#281'dny ID3Tag#Je'#347'li to pole jest zaznaczone, do automatycznej zm' +
            'iany nazw mo'#380'na wybra'#263' tak'#380'e te pliki, kt'#243're posiadaj'#261' braki (wy' +
            'konawca, tytu'#322') w ID3Tag.'
          Caption = 'Zmiana tak'#380'e nazw plik'#243'w posiadaj'#261'cych b'#322#281'dne dane'
          TabOrder = 0
        end
      end
      object gbAlbum: TGroupBox
        Left = 4
        Top = 120
        Width = 299
        Height = 156
        Caption = ' Tryb albumu '
        TabOrder = 2
        object Label8: TLabel
          Left = 8
          Top = 16
          Width = 282
          Height = 26
          AutoSize = False
          Caption = 
            'Gdy dokonujesz zmiany nazw plik'#243'w, kt'#243're nale'#380#261' do jakie- go'#347' al' +
            'bumu, mo'#380'esz skorzysta'#263' z dodatkowych opcji.'
          WordWrap = True
        end
        object chbDontAddArtistName: TCheckBox
          Left = 8
          Top = 48
          Width = 209
          Height = 17
          Hint = 
            'Bez wykonawcy#Zaznacz to pole, aby docelowa nazwa pliku zawiera'#322 +
            'a tylko tytu'#322' utworu, bez wykonawcy.'
          Caption = 'Nie dodawaj wykonawcy do nazwy pliku'
          TabOrder = 0
        end
        object gbNumbering: TGroupBox
          Left = 8
          Top = 82
          Width = 284
          Height = 69
          Caption = '   '
          TabOrder = 2
          object lblStart: TLabel
            Left = 8
            Top = 24
            Width = 28
            Height = 13
            Caption = 'Start:'
            Enabled = False
          end
          object lblKrok: TLabel
            Left = 90
            Top = 24
            Width = 25
            Height = 13
            Caption = 'Krok:'
            Enabled = False
          end
          object lblNums: TLabel
            Left = 176
            Top = 24
            Width = 55
            Height = 13
            Caption = 'Liczba cyfr:'
            Enabled = False
          end
          object chbNumbering: TCheckBox
            Left = 12
            Top = -1
            Width = 82
            Height = 17
            Hint = 
              'Numeruj pliki#Okre'#347'la, czy w nazwach plik'#243'w pojawi si'#281' dodatkowo' +
              ' numeracja.'
            Caption = 'Numeruj pliki'
            TabOrder = 0
            OnClick = chbNumberingClick
          end
          object eStart: TEdit
            Left = 40
            Top = 20
            Width = 40
            Height = 21
            Hint = 
              'Warto'#347#263' pocz'#261'tkowa#Liczba jak'#261' b'#281'dzie posiada'#322' w nazwie pierwszy' +
              ' z grupy plik'#243'w poddawanej automatycznej zmianie nazwy.'
            Enabled = False
            MaxLength = 4
            TabOrder = 1
            Text = '1'
            OnExit = ValidateInput
          end
          object eKrok: TEdit
            Left = 119
            Top = 20
            Width = 40
            Height = 21
            Hint = 
              'Krok numeracji#Post'#281'p - czyli r'#243#380'nica pomi'#281'dzy numerami kolejnyc' +
              'h dw'#243'ch plik'#243'w.'
            Enabled = False
            MaxLength = 4
            TabOrder = 2
            Text = '1'
            OnExit = ValidateInput
          end
          object cbNums: TComboBox
            Left = 235
            Top = 20
            Width = 40
            Height = 21
            Hint = 
              'Liczba cyfr#Nadmiarowe miejsca w liczbie b'#281'd'#261' uzupe'#322'niane zerami' +
              '. Np. przy trzech cyfrach liczba 7 przedstawiona b'#281'dzie jako 007' +
              '.'
            Style = csDropDownList
            Enabled = False
            ItemHeight = 13
            TabOrder = 3
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9')
          end
          object chbMustBeSeparator: TCheckBox
            Left = 8
            Top = 48
            Width = 105
            Height = 17
            Hint = 
              'Wymu'#347' spearator#Zaznacz to pole, aby pomi'#281'dzy numeracj'#261', a reszt' +
              #261' nazwy pojawi si'#281' separator.'
            Caption = 'Wymu'#347' spearator'
            Enabled = False
            TabOrder = 4
          end
          object chbDot: TCheckBox
            Left = 120
            Top = 48
            Width = 50
            Height = 17
            Hint = 
              'Kropka#Zaznacz to pole, aby wymusi'#263' pojawienie si'#281' kropki po num' +
              'erze porz'#261'dkowym w nazwie pliku.'
            Caption = 'Kropka'
            Checked = True
            Enabled = False
            State = cbChecked
            TabOrder = 5
          end
          object chbSpace: TCheckBox
            Left = 176
            Top = 48
            Width = 97
            Height = 17
            Hint = 
              'Odst'#281'p#Zaznacz to pole, aby wymusi'#263' pojawienie si'#281' odst'#281'pu (spac' +
              'ji) po numerze porz'#261'dkowym w nazwie pliku.'
            Caption = 'Odst'#281'p (spacja)'
            Checked = True
            Enabled = False
            State = cbChecked
            TabOrder = 6
          end
        end
        object chbAddStyle: TCheckBox
          Left = 8
          Top = 64
          Width = 177
          Height = 17
          Hint = 
            'Dodaj styl#Zaznacz, aby na pocz'#261'tku nazwy pliku (w nawiasach kwa' +
            'dratowych) doda'#263' styl utworu.'
          Caption = 'Dodaj styl utworu do nazwy pliku'
          TabOrder = 1
        end
      end
      object gbList: TGroupBox
        Left = 4
        Top = 278
        Width = 299
        Height = 100
        Caption = ' Lista plik'#243'w do zmiany nazwy '
        TabOrder = 3
        object Label1: TLabel
          Left = 8
          Top = 16
          Width = 282
          Height = 26
          Caption = 
            'Najpierw nale'#380'y wygenerowa'#263' list'#281' zmian i zaznaczy'#263' pliki, kt'#243'ry' +
            'ch nazwy maj'#261' zosta'#263' zmienione.'
          WordWrap = True
        end
        object btnList: TButton
          Left = 89
          Top = 48
          Width = 120
          Height = 29
          Hint = 
            'Utw'#243'rz list'#281' plik'#243'w#Kliknij, aby rozpocz'#261#263' proces globalnej zmia' +
            'ny nazwy'
          Caption = 'Utw'#243'rz list'#281' plik'#243'w'
          TabOrder = 0
          OnClick = btnListClick
        end
        object chbNoSummaryIfNoErrors: TCheckBox
          Left = 8
          Top = 80
          Width = 284
          Height = 17
          Hint = 
            'Bez podsumowania#Zaznaczenie tego pola powoduje, '#380'e okno podsumo' +
            'wania nie zostanie wy'#347'wietlone po zako'#324'czeniu procesu globalnej ' +
            'zmiany nazwy plik'#243'w (tylko, je'#347'li nie wyst'#261'pi'#322'y b'#322#281'dy)'
          Caption = 'Nie wy'#347'wietlaj podsumowania, je'#347'li nie wyst'#261'pi'#322'y b'#322#281'dy'
          TabOrder = 1
        end
      end
    end
  end
  object cbDirectory: TDriveComboBox
    Left = 8
    Top = 6
    Width = 240
    Height = 19
    Hint = 'Lista dysk'#243'w#Wybierz dysk na kt'#243'rym znajduj'#261' si'#281' pliki MP3'
    DirList = lbDirectory
    TabOrder = 3
  end
  object rgSpaces: TRadioGroup
    Left = 256
    Top = 532
    Width = 240
    Height = 76
    Hint = 
      'Ost'#281'py mi'#281'dzy wyrazami#Okre'#347'la spos'#243'b zamiany odst'#281'p'#243'w mi'#281'dzy wy' +
      'razami (spacji) w nazwie pliku.'
    Caption = ' Odst'#281'py mi'#281'dzy wyrazami '
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Usuwaj odst'#281'py mi'#281'dzy wyrazami'
      'Usuwaj odst'#281'py i zmieniaj na du'#380'e litery'
      'Nie usuwaj odst'#281'p'#243'w'
      'Zamieniaj na znak separatora')
    ParentFont = False
    TabOrder = 1
    OnClick = rgSpacesClick
  end
  object gbChanges: TGroupBox
    Left = 256
    Top = 453
    Width = 240
    Height = 76
    Caption = ' Zmiany w nazwach plik'#243'w '
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object lblSeparator: TLabel
      Left = 6
      Top = 54
      Width = 192
      Height = 13
      Caption = 'Separator mi'#281'dzy tytu'#322'em i wykonawc'#261':'
    end
    object chbPolishLetters: TCheckBox
      Left = 6
      Top = 16
      Width = 211
      Height = 17
      Hint = 
        'Polskie znaki#Zamienia polskie znaki na odpowiadaj'#261'ce im litery ' +
        'bez "ogonk'#243'w".'
      Caption = 'Polskie znaki na odpowiedaj'#261'ce im litery'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = chbPolishLettersClick
    end
    object chbBreakSigns: TCheckBox
      Left = 6
      Top = 32
      Width = 170
      Height = 17
      Hint = 
        'Znaki przestankowe#Okre'#347'la, czy usuwa'#263' znaki przestankowe w nazw' +
        'ie pliku.'
      Caption = 'Usuwaj znaki przestankowe (.,'#39')'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = chbBreakSignsClick
    end
    object eSeparator: TEdit
      Left = 204
      Top = 50
      Width = 30
      Height = 21
      Hint = 
        'Separator#Sekwencja znak'#243'w oddzielaj'#261'ca tytu'#322' utworu od nazwy wy' +
        'konwacy w nazwie pliku.'
      TabOrder = 2
      Text = ' - '
      OnChange = eSeparatorChange
    end
  end
  object gbPlayer: TGroupBox
    Left = 8
    Top = 564
    Width = 240
    Height = 44
    Caption = '   '
    TabOrder = 6
    object btnPlay: TSpeedButton
      Left = 8
      Top = 16
      Width = 23
      Height = 22
      Hint = 
        'Graj!#Rozpocz'#281'cie odtwarzania zaznaczonego pliku od jego pocz'#261'tk' +
        'u.'
      Enabled = False
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000C40E0000C40E0000100000000000000004FE04008482
        8400C4C2C400FCFEFC0000004000000000000000000000000000DF013800DA00
        0D00D300160077000000001C400000E80D000012160000000000333333333333
        3333333333333333333333331113333333333333311133333333333310013333
        3333333331221333333333331000133333333333312221333333333310000133
        3333333331222213333333331000001333333333312222213333333310000001
        3333333331222222133333331000000013333333312222222133333310000000
        1333333331222222213333331000000133333333312222221333333310000013
        3333333331222221333333331000013333333333312222133333333310001333
        3333333331222133333333331001333333333333312213333333333311133333
        3333333331113333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = btnPlayClick
    end
    object btnPause: TSpeedButton
      Left = 32
      Top = 16
      Width = 23
      Height = 22
      Hint = 
        'Pauza#Wstrzymanie odtwarzania aktualnego utworu. Zapami'#281'tuje mie' +
        'jsce zatrzymania.'
      Enabled = False
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000C40E0000C40E0000100000000000000004FE04008482
        8400C4C2C400FCFEFC0000000100000000000000000000000000DF013000DA00
        1800D300160077000000001C380000E818000012160000000000333333333333
        3333333333333333333333333333333333333333333333333333331111133111
        1133331111133111113333100013310001333312221331222133331000133100
        0133331222133122213333100013310001333312221331222133331000133100
        0133331222133122213333100013310001333312221331222133331000133100
        0133331222133122213333100013310001333312221331222133331000133100
        0133331222133122213333100013310001333312221331222133331000133100
        0133331222133122213333111113311111333311111331111133333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = btnPauseClick
    end
    object btnStop: TSpeedButton
      Left = 56
      Top = 16
      Width = 23
      Height = 22
      Hint = 
        'Stop#Zatrzymanie odtwarzania aktualnego utworu. Przewija utw'#243'r d' +
        'o pocz'#261'tku.'
      Enabled = False
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000C40E0000C40E0000100000000000000004FE04008482
        8400C4C2C400FCFEFC00000004000000E7000000120000000000DF01F800DA00
        F700D300170077000000001C000000E8F8000012170000000000333333333333
        3333333333333333333333333333333333333333333333333333331111111111
        1133331111111111113333100000000001333312222222222133331000000000
        0133331222222222213333100000000001333312222222222133331000000000
        0133331222222222213333100000000001333312222222222133331000000000
        0133331222222222213333100000000001333312222222222133331000000000
        0133331222222222213333100000000001333312222222222133331000000000
        0133331222222222213333111111111111333311111111111133333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = btnStopClick
    end
    object Posit: TTrackBar
      Left = 80
      Top = 16
      Width = 156
      Height = 25
      Hint = 'Pozycja'
      Enabled = False
      Max = 400
      PageSize = 10
      Frequency = 25
      TabOrder = 1
      TabStop = False
      ThumbLength = 15
      OnChange = PositChange
    end
    object chbUsePlayer: TCheckBox
      Left = 12
      Top = -1
      Width = 120
      Height = 17
      Hint = 
        'U'#380'ywaj odtwarzacza#Zaznacz, aby odtwarza'#263' pliki. Domy'#347'lnie wy'#322#261'c' +
        'zone, gdy'#380' mo'#380'e blokowa'#263' kart'#281' muzyczn'#261'!'
      TabStop = False
      Caption = 'U'#380'ywaj odtwarzacza'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = chbUsePlayerClick
    end
  end
  object btnRemoveTag: TButton
    Left = 158
    Top = 518
    Width = 90
    Height = 25
    Hint = 
      'Usu'#324' ID3Tag#Usuwa ca'#322#261' zawarto'#347#263' ID3Tag z nag'#322#243'wka wybranego pli' +
      'ku.'
    Caption = 'Usu'#324' ID3Tag'
    TabOrder = 5
    OnClick = btnRemoveTagClick
  end
  object btnShowID3Tag: TButton
    Left = 8
    Top = 518
    Width = 90
    Height = 25
    Hint = 
      'Poka'#380' ID3Tag#Wy'#347'wietla pe'#322'ne informacje zapisane w nag'#322#243'wku wybr' +
      'anego pliku.'
    Caption = 'Poka'#380' ID3Tag'
    TabOrder = 4
    OnClick = btnShowID3TagClick
  end
  object XaudioPlayer: TXaudioPlayer
    Priority = 4
    XaudioPath = 'xaudio.dll'
    OnNotifyInputPosition = XaudioPlayerNotifyInputPosition
    Left = 72
    Top = 40
  end
  object pmFiles: TPopupMenu
    Left = 136
    Top = 40
    object mnuPlay: TMenuItem
      Bitmap.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888888088888888888888800888888888888880008888
        8888888880000888888888888000008888888888800000088888888880000008
        8888888880000088888888888000088888888888800088888888888880088888
        8888888880888888888888888888888888888888888888888888}
      Caption = 'Graj!'
      OnClick = mnuPlayClick
    end
    object mnuPause: TMenuItem
      Bitmap.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777000770007777777700077000
        7777777700077000777777770007700077777777000770007777777700077000
        7777777700077000777777770007700077777777000770007777777700077000
        7777777777777777777777777777777777777777777777777777}
      Caption = 'Pauza'
      OnClick = mnuPauseClick
    end
    object mnuStop: TMenuItem
      Bitmap.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888888888888888888880000000000888888000000000
        0888888000000000088888800000000008888880000000000888888000000000
        0888888000000000088888800000000008888880000000000888888000000000
        0888888888888888888888888888888888888888888888888888}
      Caption = 'Stop'
      OnClick = mnuStopClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object mnuFiles: TMenuItem
      Bitmap.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
        2222200000000002222203300007030222220330000703000222033000000303
        0222033333333303000203300000330303020307777703030302030777770303
        0302030777770003030203077777070303020000000000000302220307777707
        0302220000000000000222220307777707022222000000000002}
      Caption = 'Operacje plikowe'
      object mnuDelete: TMenuItem
        Bitmap.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000CE0E0000D80E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777777777777777777777777777777770F77770F7777777777777000F777777
          0F7777000F777770F777777000F77700F7777777000F700F77777777700000F7
          7777777777000F7777777777700000F777777777000F70F77777770000F77700
          F77770000F7777700F77700F7777777700F77777777777777777}
        Caption = 'Usu'#324' zaznaczony plik'
        OnClick = mnuDeleteClick
      end
      object mnuMove: TMenuItem
        Bitmap.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000C40E0000C40E00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888888888888888888844444444488888884FFFFFFF488888884F0000
          0F488080804FFFFFFF4808F8FF4F00000F488F80804FFFFFFF4808F8FF4F00F4
          44488F80804FFFF4F48808F8FF4FFFF448888F8080444444888808F8F8F88888
          88888F8F80888888888808080888888888888888888888888888}
        Caption = 'Przenie'#347' zaznaczony plik'
        OnClick = mnuMoveClick
      end
      object mnuCopy: TMenuItem
        Bitmap.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000CE0E0000D80E00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888888888888888888844444444488888884FFFFFFF488888884F0000
          0F480000004FFFFFFF480FFFFF4F00000F480F00004FFFFFFF480FFFFF4F00F4
          44480F00004FFFF4F4880FFFFF4FFFF448880F00F044444488880FFFF0F08888
          88880FFFF0088888888800000088888888888888888888888888}
        Caption = 'Kopiuj zaznaczony plik'
        OnClick = mnuCopyClick
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object mnuExecute: TMenuItem
        Bitmap.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FFFFFFFFF00FFFFFFFFFFFFFF8A0FFFFFFFFFFFFF8AA0FFFFFFFFFFFF8AAA0FF
          FFFFFFFFF8AAAA0FFFFFFFFFF8AAAAA0FFFFFFFFF8AAAAAA0FFFFFFFF8AAAAAA
          8FFFFFFFF8AAAAA8FFFFFFFFF8AAAA8FFFFFFFFFF8AAA8FFFFFFFFFFF8AA8FFF
          FFFFFFFFF8A8FFFFFFFFFFFFF88FFFFFFFFFFFFFFFFFFFFFFFFF}
        Caption = 'Wykonaj (odtw'#243'rz w odtwarzaczu systemowym)'
        OnClick = mnuExecuteClick
      end
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object mnuRefresh: TMenuItem
      Bitmap.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777744447777777777444444447777777444777744
        4777777447777774477777447777777744777744777777774477774477777777
        4477774477777777447777744777747447777774477774444777777777777444
        7777777777777444477777777777777777777777777777777777}
      Caption = 'Od'#347'wie'#380' list'#281' plik'#243'w'
      OnClick = mnuRefreshClick
    end
    object mnuTrackChanges: TMenuItem
      Caption = #346'ledzenie od'#347'wie'#380'ania listy'
      Checked = True
      OnClick = mnuTrackChangesClick
    end
  end
  object fd: TFolderDialog
    Title = 'Wska'#380' katalog'
    BrowsType = btNone
    SpecialFolder = sfNone
    Left = 168
    Top = 40
  end
  object pmSigns: TPopupMenu
    Left = 104
    Top = 40
    object mnuSAllLowercase: TMenuItem
      Caption = 'wszystkie ma'#322'e'
      GroupIndex = 1
      RadioItem = True
      OnClick = ChangeMenuSelection
    end
    object mnuSAllUppercase: TMenuItem
      Tag = 1
      Caption = 'WSZYSTKIE DU'#379'E'
      GroupIndex = 1
      RadioItem = True
      OnClick = ChangeMenuSelection
    end
    object mnuSFirstUppercase: TMenuItem
      Tag = 2
      Caption = 'Pierwsza litera du'#380'a'
      Checked = True
      GroupIndex = 1
      RadioItem = True
      OnClick = ChangeMenuSelection
    end
    object mnuSFirstInWordUppercase: TMenuItem
      Tag = 3
      Caption = 'Pierwsza Litera W S'#322'owie Du'#380'a'
      GroupIndex = 1
      RadioItem = True
      OnClick = ChangeMenuSelection
    end
    object mnuSEnglishStyle: TMenuItem
      Tag = 4
      Caption = 'Tytu'#322' angielski (np. Jack in the Box)'
      GroupIndex = 1
      RadioItem = True
      OnClick = ChangeMenuSelection
    end
  end
end
