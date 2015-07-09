object MainForm: TMainForm
  Left = 204
  Top = 84
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'MP3 Toolbox 2.2'
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
    Caption = 'Number of files in folder: 0'
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
    Caption = 'About'
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
      Caption = 'Tags and file name'
      object Label6: TLabel
        Left = 4
        Top = 4
        Width = 304
        Height = 39
        AutoSize = False
        Caption = 
          'Here you can change ID3Tag fields and generate filename basing on ID3Tag. Additional' +
          'tools are accessible through context menu of file lists on left window site.'
        WordWrap = True
      end
      object gbParameters: TGroupBox
        Left = 4
        Top = 46
        Width = 306
        Height = 221
        Caption = ' Change parameters '
        TabOrder = 0
        object lblTitle: TLabel
          Left = 6
          Top = 16
          Width = 66
          Height = 13
          Caption = 'Title:'
        end
        object lblTime: TLabel
          Left = 56
          Top = 137
          Width = 66
          Height = 13
          Caption = 'Length:'
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
          Hint = 'Check to keep this value when changing files on file list'
          TabStop = False
          Caption = 'Comment:'
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
          Hint = 'Check to keep this value when changing files on file list'
          TabStop = False
          Caption = 'Genre:'
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
          Hint = 'Not all MP3 genres are supported! Sorry...'
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
          Hint = 'Check to keep this value when changing files on file list'
          TabStop = False
          Caption = 'Album:'
          TabOrder = 9
        end
        object cbAuthor: TCheckBox
          Left = 6
          Top = 56
          Width = 83
          Height = 17
          Hint = 'Check to keep this value when changing files on file list'
          TabStop = False
          Caption = 'Artist:'
          TabOrder = 7
        end
        object cbYear: TCheckBox
          Left = 6
          Top = 136
          Width = 43
          Height = 17
          Hint = 'Check to keep this value when changing files on file list'
          TabStop = False
          Caption = 'Year:'
          TabOrder = 10
        end
        object btnSigns1: TButton
          Left = 275
          Top = 32
          Width = 21
          Height = 21
          Hint = 'Right-click to pick value change scheme. Left-click to apply current scheme.'
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
          Hint = 'Right-click to pick value change scheme. Left-click to apply current scheme.'
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
          Hint = 'Right-click to pick value change scheme. Left-click to apply current scheme.'
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
          Hint = 'Check to keep this value when changing files on file list'
          TabStop = False
          Alignment = taLeftJustify
          Caption = 'Path'
          TabOrder = 13
        end
      end
      object gbChange: TGroupBox
        Left = 4
        Top = 270
        Width = 306
        Height = 147
        Caption = ' Change '
        TabOrder = 1
        object lblOriginalName: TLabel
          Left = 8
          Top = 16
          Width = 114
          Height = 13
          Caption = 'Original filename:'
        end
        object lblDestinationName: TLabel
          Left = 6
          Top = 58
          Width = 153
          Height = 13
          Caption = 'Suggested filename:'
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
          Hint = 'Change ID3Tag only, leave filename unchanged [Ctrl+F1]'
          Caption = 'Change ID3Tag'
          TabOrder = 2
          OnClick = btnID3Click
        end
        object btnFile: TButton
          Left = 105
          Top = 100
          Width = 94
          Height = 25
          Hint = 'Change filename only, leave ID3Tag unchanged [Ctrl+F2]'
          Caption = 'Change filename'
          TabOrder = 3
          OnClick = btnFileClick
        end
        object btnAll: TButton
          Left = 202
          Top = 100
          Width = 94
          Height = 25
          Hint = 'Change both ID3Tag and filename only [Ctrl+F3]'
          Caption = 'Change everything'
          TabOrder = 4
          OnClick = btnAllClick
        end
        object eOrigFile: TEdit
          Left = 6
          Top = 32
          Width = 291
          Height = 21
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
            'Quick ID3Tag edit mode moves selection of file list to another file and returns' +
            'focus to tag field you are editing, allowing you to quickly change the same tag' +
            ' in many files'
          Caption = 'Quick ID3Tag edit mode'
          TabOrder = 5
          OnClick = chbFastEditorClick
        end
      end
    end
    object tsList: TTabSheet
      Caption = 'File list'
      ImageIndex = 1
      object Label3: TLabel
        Left = 4
        Top = 4
        Width = 304
        Height = 39
        AutoSize = False
        Caption = 
          'Here you can build list of artists and titles of all files stored in currently sel' +
          'ected folder. These information will be obtained from ID3Tag of each file. Warning'
          '! This process may take some time, if you have many files in this folder...'
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
        Caption = 'Reade...'
      end
      object lblSize: TLabel
        Left = 156
        Top = 400
        Width = 42
        Height = 13
        Hint = 'Double-click to copy size and length to clipboard'
        Caption = 'Size:'
        OnDblClick = SizeAndLengthToClipboard
      end
      object lblLength: TLabel
        Left = 4
        Top = 400
        Width = 42
        Height = 13
        Hint = 'Double-click to copy size and length to clipboard'
        Caption = 'Lenght:'
        OnDblClick = SizeAndLengthToClipboard
      end
      object btnDoIt: TButton
        Left = 4
        Top = 368
        Width = 60
        Height = 25
        Caption = 'Go!'
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
          'Double-click on any list item to go back to first tab and start editing ID3Tag of se' +
          'lected item.'
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
        Caption = 'Clear'
        TabOrder = 2
        OnClick = btnClearClick
      end
      object btnCopyToClipboard: TButton
        Left = 68
        Top = 368
        Width = 60
        Height = 25
        Hint = 'Copy list to clipboard (plain text, no formatting)'
        Caption = 'Copy'
        Enabled = False
        TabOrder = 1
        OnClick = btnCopyToClipboardClick
      end
      object btnMore: TButton
        Left = 248
        Top = 368
        Width = 60
        Height = 25
        Hint = 'Open advanced ID3Tag change window'
        Caption = 'More...'
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
      Caption = 'Global changes'
      ImageIndex = 2
      object Label7: TLabel
        Left = 4
        Top = 4
        Width = 302
        Height = 26
        AutoSize = False
        Caption = 
          'Here you have a tool very similar to the one on first tab (changes fi' +
          'lename basing on ID3Tag), but for batch-change of all files in folder.'
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
        Caption = 'Ready...'
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
        Caption = ' Missing data '
        TabOrder = 1
        object Label10: TLabel
          Left = 8
          Top = 16
          Width = 284
          Height = 39
          AutoSize = False
          Caption = 
            'Files containing invalid or empty ID3Tags will be skipped during batch-change of filename' +
            's. To include this kind of files as well, check follwoing checkbox.'
          WordWrap = True
        end
        object chbAlsoMissingData: TCheckBox
          Left = 8
          Top = 64
          Width = 276
          Height = 17
          Caption = 'Include files with empty or invalid ID3Tag'
          TabOrder = 0
        end
      end
      object gbAlbum: TGroupBox
        Left = 4
        Top = 120
        Width = 299
        Height = 156
        Caption = ' Album mode '
        TabOrder = 2
        object Label8: TLabel
          Left = 8
          Top = 16
          Width = 282
          Height = 26
          AutoSize = False
          Caption = 'Additional options for batch-change of filenames, that are part of some album.'
          WordWrap = True
        end
        object chbDontAddArtistName: TCheckBox
          Left = 8
          Top = 48
          Width = 209
          Height = 17
          Caption = 'Do not add artist name to filename'
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
            Caption = 'Step:'
            Enabled = False
          end
          object lblNums: TLabel
            Left = 176
            Top = 24
            Width = 55
            Height = 13
            Caption = 'Digits:'
            Enabled = False
          end
          object chbNumbering: TCheckBox
            Left = 12
            Top = -1
            Width = 82
            Height = 17
            Caption = 'Add numbers to filenames'
            TabOrder = 0
            OnClick = chbNumberingClick
          end
          object eStart: TEdit
            Left = 40
            Top = 20
            Width = 40
            Height = 21
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
            Hint = 'Add separator after numbering'
            Caption = 'Separator'
            Enabled = False
            TabOrder = 4
          end
          object chbDot: TCheckBox
            Left = 120
            Top = 48
            Width = 50
            Height = 17
            Hint = 'Add dot after numbering'
            Caption = 'Separator'
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
            Hint = 'Add space after numbering'
            Caption = 'Space'
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
          Caption = 'Add genre to the beginning of filename'
          TabOrder = 1
        end
      end
      object gbList: TGroupBox
        Left = 4
        Top = 278
        Width = 299
        Height = 100
        Caption = ' List of files for name change '
        TabOrder = 3
        object Label1: TLabel
          Left = 8
          Top = 16
          Width = 282
          Height = 26
          Caption = 
            'You must generate file list first and check, which files should have name changed in batc' +
            'h-mode filename change process.'
          WordWrap = True
        end
        object btnList: TButton
          Left = 89
          Top = 48
          Width = 120
          Height = 29
          Caption = 'Generate list of files
          TabOrder = 0
          OnClick = btnListClick
        end
        object chbNoSummaryIfNoErrors: TCheckBox
          Left = 8
          Top = 80
          Width = 284
          Height = 17
          Caption = 'Do not display summary, if there was no errors'
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
    DirList = lbDirectory
    TabOrder = 3
  end
  object rgSpaces: TRadioGroup
    Left = 256
    Top = 532
    Width = 240
    Height = 76
    Caption = ' Spaces between words '
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Remove spaces between words in filename'
      'Remove spaces and uppercase first letters'
      'Do not remove spaces'
      'Change spaces into separator string')
    ParentFont = False
    TabOrder = 1
    OnClick = rgSpacesClick
  end
  object gbChanges: TGroupBox
    Left = 256
    Top = 453
    Width = 240
    Height = 76
    Caption = ' Changes in filenames '
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
      Caption = 'Separator between artist and title in filename'
    end
    object chbPolishLetters: TCheckBox
      Left = 6
      Top = 16
      Width = 211
      Height = 17
      Caption = 'Replace Polish characters with corresponding letters'
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
      Caption = 'Remove punctuation (dots, commas etc.)'
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
        'Check to use audioplayer to play selected file. This checkbox is disabled by default, b' +
        'ecause it my block soundcard on certain systems and prevent closing of program'
      TabStop = False
      Caption = 'Use audio player'
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
    Caption = 'Remove ID3Tag'
    TabOrder = 5
    OnClick = btnRemoveTagClick
  end
  object btnShowID3Tag: TButton
    Left = 8
    Top = 518
    Width = 90
    Height = 25
    Caption = 'Show ID3Tag'
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
      Caption = 'Play!'
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
      Caption = 'Pause'
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
      Caption = 'File operations'
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
        Caption = Delete selected file'
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
        Caption = 'Move selected file'
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
        Caption = 'Copy selected file'
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
        Caption = 'Execute (run in associated external program)'
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
      Caption = 'Refresh file list'
      OnClick = mnuRefreshClick
    end
    object mnuTrackChanges: TMenuItem
      Caption = 'Lock list updates'
      Checked = True
      OnClick = mnuTrackChangesClick
    end
  end
  object fd: TFolderDialog
    Title = 'Select folder'
    BrowsType = btNone
    SpecialFolder = sfNone
    Left = 168
    Top = 40
  end
  object pmSigns: TPopupMenu
    Left = 104
    Top = 40
    object mnuSAllLowercase: TMenuItem
      Caption = 'all lowercase'
      GroupIndex = 1
      RadioItem = True
      OnClick = ChangeMenuSelection
    end
    object mnuSAllUppercase: TMenuItem
      Tag = 1
      Caption = 'ALL UPPERCASE'
      GroupIndex = 1
      RadioItem = True
      OnClick = ChangeMenuSelection
    end
    object mnuSFirstUppercase: TMenuItem
      Tag = 2
      Caption = 'First lestter in sentence uppercase'
      Checked = True
      GroupIndex = 1
      RadioItem = True
      OnClick = ChangeMenuSelection
    end
    object mnuSFirstInWordUppercase: TMenuItem
      Tag = 3
      Caption = 'First lestter in word uppercase'
      GroupIndex = 1
      RadioItem = True
      OnClick = ChangeMenuSelection
    end
    object mnuSEnglishStyle: TMenuItem
      Tag = 4
      Caption = 'English title (i.e. Jack in the Box)'
      GroupIndex = 1
      RadioItem = True
      OnClick = ChangeMenuSelection
    end
  end
end
