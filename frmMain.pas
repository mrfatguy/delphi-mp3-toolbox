unit frmMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FileCtrl, StdCtrls, MPGTools, ExtCtrls, XaudioPlayer, Buttons, ComCtrls,
  Menus, ShellAPI, Clipbrd, FolderDialog;

type
  TMainForm = class(TForm)
    pcMain: TPageControl;
    tsMain: TTabSheet;
    gbParameters: TGroupBox;
    lblTitle: TLabel;
    lblTime: TLabel;
    eTitle: TEdit;
    eAuthor: TEdit;
    eComment: TEdit;
    cbComment: TCheckBox;
    eYear: TEdit;
    cbGenre: TCheckBox;
    eLength: TEdit;
    cbGenreList: TComboBox;
    eAlbum: TEdit;
    cbAlbum: TCheckBox;
    cbAuthor: TCheckBox;
    cbYear: TCheckBox;
    gbChange: TGroupBox;
    XaudioPlayer: TXaudioPlayer;
    pmFiles: TPopupMenu;
    mnuPlay: TMenuItem;
    mnuPause: TMenuItem;
    mnuStop: TMenuItem;
    N1: TMenuItem;
    mnuFiles: TMenuItem;
    mnuDelete: TMenuItem;
    mnuMove: TMenuItem;
    mnuCopy: TMenuItem;
    N3: TMenuItem;
    mnuExecute: TMenuItem;
    N2: TMenuItem;
    mnuRefresh: TMenuItem;
    mnuTrackChanges: TMenuItem;
    fd: TFolderDialog;
    tsList: TTabSheet;
    Label3: TLabel;
    btnDoIt: TButton;
    pbStatus: TProgressBar;
    mList: TListBox;
    btnClear: TButton;
    cbDirectory: TDriveComboBox;
    rgSpaces: TRadioGroup;
    Bevel2: TBevel;
    btnID3: TButton;
    btnFile: TButton;
    btnAll: TButton;
    eOrigFile: TEdit;
    lblOriginalName: TLabel;
    lblDestinationName: TLabel;
    eNewFile: TEdit;
    gbChanges: TGroupBox;
    chbPolishLetters: TCheckBox;
    chbBreakSigns: TCheckBox;
    lblSeparator: TLabel;
    gbPlayer: TGroupBox;
    btnPlay: TSpeedButton;
    btnPause: TSpeedButton;
    btnStop: TSpeedButton;
    Posit: TTrackBar;
    chbUsePlayer: TCheckBox;
    Label6: TLabel;
    TabSheet1: TTabSheet;
    eSeparator: TEdit;
    lblFilesCount: TLabel;
    lblProgress: TLabel;
    btnCopyToClipboard: TButton;
    Label7: TLabel;
    pbGlobal: TProgressBar;
    lblGlobal: TLabel;
    lblDesc: TLabel;
    chbFastEditor: TCheckBox;
    btnRemoveTag: TButton;
    gbMissingData: TGroupBox;
    Label10: TLabel;
    chbAlsoMissingData: TCheckBox;
    gbAlbum: TGroupBox;
    Label8: TLabel;
    chbDontAddArtistName: TCheckBox;
    gbNumbering: TGroupBox;
    chbNumbering: TCheckBox;
    lblStart: TLabel;
    eStart: TEdit;
    eKrok: TEdit;
    lblKrok: TLabel;
    lblNums: TLabel;
    cbNums: TComboBox;
    gbList: TGroupBox;
    Label1: TLabel;
    btnList: TButton;
    chbMustBeSeparator: TCheckBox;
    chbDot: TCheckBox;
    chbSpace: TCheckBox;
    btnShowID3Tag: TButton;
    pmSigns: TPopupMenu;
    mnuSAllLowercase: TMenuItem;
    mnuSAllUppercase: TMenuItem;
    mnuSFirstUppercase: TMenuItem;
    mnuSFirstInWordUppercase: TMenuItem;
    mnuSEnglishStyle: TMenuItem;
    btnSigns1: TButton;
    btnSigns2: TButton;
    btnSigns3: TButton;
    eTrack: TEdit;
    cbTrack: TCheckBox;
    chbNoSummaryIfNoErrors: TCheckBox;
    btnMore: TButton;
    lblStatus: TLabel;
    chbAddStyle: TCheckBox;
    lblSize: TLabel;
    lblLength: TLabel;
    eAllLength: TEdit;
    eAllSize: TEdit;
    Panel1: TPanel;
    lbDirectory: TDirectoryListBox;
    spNavigation: TSplitter;
    lbFiles: TFileListBox;
    btnAbout: TBitBtn;

    function GenerateFileNameFromID3(aName, sName: String; OnlyTitle: Boolean): String;
    function GetOriginalTextFromEdit(WhichEdit: Integer): String;
    function AnsiUpperCaseFirstLetterInWord(S: String): String;
    function SecondsToTime(Seconds: Integer): String;

    procedure SaveSettings();
    procedure LoadSettings();
    procedure UpdateFields();
    procedure RereadID3Tag();
    procedure InsertModifiedTextToEdit(WhatToInsert: String);

    procedure eTitleChange(Sender: TObject);
    procedure eAuthorChange(Sender: TObject);
    procedure rgSpacesClick(Sender: TObject);
    procedure chbPolishLettersClick(Sender: TObject);
    procedure lbFilesChange(Sender: TObject);
    procedure chbBreakSignsClick(Sender: TObject);
    procedure btnPlayClick(Sender: TObject);
    procedure btnPauseClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure PositChange(Sender: TObject);
    procedure XaudioPlayerNotifyInputPosition(Sender: TXaudioPlayer;
      Offset, Range: Cardinal);
    procedure mnuPlayClick(Sender: TObject);
    procedure mnuPauseClick(Sender: TObject);
    procedure mnuStopClick(Sender: TObject);
    procedure mnuDeleteClick(Sender: TObject);
    procedure mnuRefreshClick(Sender: TObject);
    procedure chbUsePlayerClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnID3Click(Sender: TObject);
    procedure btnFileClick(Sender: TObject);
    procedure btnAllClick(Sender: TObject);
    procedure mnuTrackChangesClick(Sender: TObject);
    procedure mnuMoveClick(Sender: TObject);
    procedure mnuCopyClick(Sender: TObject);
    procedure mnuExecuteClick(Sender: TObject);
    procedure btnDoItClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure imgAboutClick(Sender: TObject);
    procedure eSeparatorChange(Sender: TObject);
    procedure pcMainChange(Sender: TObject);
    procedure mListClick(Sender: TObject);
    procedure btnCopyToClipboardClick(Sender: TObject);
    procedure btnListClick(Sender: TObject);
    procedure lbFilesClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chbFastEditorClick(Sender: TObject);
    procedure btnRemoveTagClick(Sender: TObject);
    procedure eNewFileChange(Sender: TObject);
    procedure EditControlEnter(Sender: TObject);
    procedure EditControlExit(Sender: TObject);
    procedure ValidateInput(Sender: TObject);
    procedure chbNumberingClick(Sender: TObject);
    procedure btnShowID3TagClick(Sender: TObject);
    procedure PopupSignsMenu(Sender: TObject);
    procedure ChangeMenuSelection(Sender: TObject);
    procedure btnMoreClick(Sender: TObject);
    procedure mListDblClick(Sender: TObject);
    procedure SizeAndLengthToClipboard(Sender: TObject);
  private
    { Private declarations }
  public
    AutoU: Boolean;
    mp3: TMPEGAudio;
  end;

var
  MainForm: TMainForm;

implementation

uses frmInfo, frmList, frmTag, pasProcs;

{$R *.DFM}
{$R WinXP.res}

function TMainForm.SecondsToTime(Seconds: Integer): String;
var
        tmpHour, tmpMin, tmpSec: Word;
        sHour, sMin, sSec: String;
begin
        tmpHour := Seconds div (60*60);
        tmpMin := (Seconds - (tmpHour * 60 * 60)) div 60;
        tmpSec := Seconds - (tmpHour * 60 * 60) - (tmpMin * 60);

        sHour := IntToStr(tmpHour);
        sMin := IntToStr(tmpMin);
        sSec := IntToStr(tmpSec);

        if tmpHour < 10 then sHour := '0' + sHour;
        if tmpMin < 10 then sMin := '0' + sMin;
        if tmpSec < 10 then sSec := '0' + sSec;

        Result := sHour + ':' + sMin + ':' + sSec;
end;

function TMainForm.GenerateFileNameFromID3(aName, sName: String; OnlyTitle: Boolean): String;
var
        a, c: Integer;
begin
        //Procedury zamiany nazwy artysty
        case rgSpaces.ItemIndex of
                0: aName:=StringReplace(aName,' ', '', [rfReplaceAll, rfIgnoreCase]);
                1: for a:=1 to Length(aName) do
                begin
                        if aName[a]=' ' then
                        begin
                                c:=Ord(aName[a+1]);
                                if c>=97 then Dec(c,32);
                                aName:=Copy(aName,1,a-1)+Char(c)+Copy(aName,a+2,Length(aName));
                        end;
                end;
                3: aName:=StringReplace(aName,' ',eSeparator.Text, [rfReplaceAll, rfIgnoreCase]);
        end;
        if chbBreakSigns.Checked then for a:=1 to Length(aName) do if aName[a]='.' then aName:=Copy(aName,1,a-1)+Copy(aName,a+1,Length(aName));
        if chbBreakSigns.Checked then for a:=1 to Length(aName) do if aName[a]=',' then aName:=Copy(aName,1,a-1)+Copy(aName,a+1,Length(aName));
        if chbBreakSigns.Checked then for a:=1 to Length(aName) do if aName[a]='''' then aName:=Copy(aName,1,a-1)+Copy(aName,a+1,Length(aName));

        if chbPolishLetters.Checked then for a:=1 to Length(aName) do
        begin
                if aName[a]='Í' then aName[a]:=Char('e');
                if aName[a]='Û' then aName[a]:=Char('o');
                if aName[a]='π' then aName[a]:=Char('a');
                if aName[a]='ú' then aName[a]:=Char('s');
                if aName[a]='≥' then aName[a]:=Char('l');
                if aName[a]='ø' then aName[a]:=Char('z');
                if aName[a]='ü' then aName[a]:=Char('z');
                if aName[a]='Ê' then aName[a]:=Char('c');
                if aName[a]='Ò' then aName[a]:=Char('n');
                if aName[a]=' ' then aName[a]:=Char('E');
                if aName[a]='”' then aName[a]:=Char('O');
                if aName[a]='•' then aName[a]:=Char('A');
                if aName[a]='å' then aName[a]:=Char('S');
                if aName[a]='£' then aName[a]:=Char('L');
                if aName[a]='Ø' then aName[a]:=Char('Z');
                if aName[a]='è' then aName[a]:=Char('Z');
                if aName[a]='∆' then aName[a]:=Char('C');
                if aName[a]='—' then aName[a]:=Char('N');
        end;

        //Procedury zamiany nazwy utworu
        case rgSpaces.ItemIndex of
                0: sName:=StringReplace(sName,' ', '', [rfReplaceAll, rfIgnoreCase]);
                1: for a:=1 to Length(sName) do
                begin
                        if sName[a]=' ' then
                        begin
                                c:=Ord(sName[a+1]);
                                if c>=97 then Dec(c,32);
                                sName:=Copy(sName,1,a-1)+Char(c)+Copy(sName,a+2,Length(sName));
                        end;
                end;
                3: sName:=StringReplace(sName,' ',eSeparator.Text, [rfReplaceAll, rfIgnoreCase]);
        end;
        if chbBreakSigns.Checked then for a:=1 to Length(sName) do if sName[a]='.' then sName:=Copy(sName,1,a-1)+Copy(sName,a+1,Length(sName));
        if chbBreakSigns.Checked then for a:=1 to Length(sName) do if sName[a]=',' then sName:=Copy(sName,1,a-1)+Copy(sName,a+1,Length(sName));
        if chbBreakSigns.Checked then for a:=1 to Length(sName) do if sName[a]='''' then sName:=Copy(sName,1,a-1)+Copy(sName,a+1,Length(sName));

        if chbPolishLetters.Checked then for a:=1 to Length(sName) do
        begin
                if sName[a]='Í' then sName[a]:=Char('e');
                if sName[a]='Û' then sName[a]:=Char('o');
                if sName[a]='π' then sName[a]:=Char('a');
                if sName[a]='ú' then sName[a]:=Char('s');
                if sName[a]='≥' then sName[a]:=Char('l');
                if sName[a]='ø' then sName[a]:=Char('z');
                if sName[a]='ü' then sName[a]:=Char('z');
                if sName[a]='Ê' then sName[a]:=Char('c');
                if sName[a]='Ò' then sName[a]:=Char('n');
                if sName[a]=' ' then sName[a]:=Char('E');
                if sName[a]='”' then sName[a]:=Char('O');
                if sName[a]='•' then sName[a]:=Char('A');
                if sName[a]='å' then sName[a]:=Char('S');
                if sName[a]='£' then sName[a]:=Char('L');
                if sName[a]='Ø' then sName[a]:=Char('Z');
                if sName[a]='è' then sName[a]:=Char('Z');
                if sName[a]='∆' then sName[a]:=Char('C');
                if sName[a]='—' then sName[a]:=Char('N');
        end;

        //Finalowe laczenie
        if OnlyTitle then
                Result:=sName+'.mp3'
        else
                Result:=aName+eSeparator.Text+sName+'.mp3';
end;

procedure TMainForm.UpdateFields();
var
        sResult: String;
begin
        lblFilesCount.Caption:='Liczba wszystkich plikÛw w folderze: '+IntToStr(lbFiles.Items.Count);
        sResult:=GenerateFileNameFromID3(Trim(eAuthor.Text), Trim(eTitle.Text), False);
        if (eTitle.Text<>'') and (eAuthor.Text<>'') and (eTitle.Text<>'[brak danych]') and (eAuthor.Text<>'[brak danych]') then eNewFile.Text:=sResult else eNewFile.Text:='';

        btnDoIt.Enabled:=(lbFiles.Items.Count>1);
        btnList.Enabled:=(lbFiles.Items.Count>1);
        btnClearClick(self);
end;

procedure TMainForm.RereadID3Tag();
begin
        Screen.Cursor:=crHourglass;
        if lbFiles.FileName='' then
        begin
                btnID3.Enabled:=False;
                btnFile.Enabled:=False;
                btnAll.Enabled:=False;
                btnRemoveTag.Enabled:=False;
                btnShowID3Tag.Enabled:=False;
                eOrigFile.Enabled:=False;
                eTitle.Enabled:=False;
                eAuthor.Enabled:=False;
                eYear.Enabled:=False;
                eAlbum.Enabled:=False;
                cbGenreList.Enabled:=False;
                eComment.Enabled:=False;
                eTrack.Enabled:=False;
                eLength.Enabled:=False;
                cbAuthor.Enabled:=False;
                cbYear.Enabled:=False;
                cbAlbum.Enabled:=False;
                cbGenre.Enabled:=False;
                cbComment.Enabled:=False;
                cbTrack.Enabled:=False;
                lblTitle.Enabled:=False;
                lblTime.Enabled:=False;
                lblOriginalName.Enabled:=False;
                lblDestinationName.Enabled:=False;
        end
        else
        begin
                if chbFastEditor.Checked then
                begin
                        btnFile.Enabled:=False;
                        btnAll.Enabled:=False;
                end
                else
                begin
                        btnFile.Enabled:=True;
                        btnAll.Enabled:=True;
                end;
                btnID3.Enabled:=True;
                btnRemoveTag.Enabled:=True;
                btnShowID3Tag.Enabled:=True;
                eOrigFile.Enabled:=True;
                eTitle.Enabled:=True;
                eAuthor.Enabled:=True;
                eYear.Enabled:=True;
                eAlbum.Enabled:=True;
                cbGenreList.Enabled:=True;
                eComment.Enabled:=True;
                eTrack.Enabled:=True;
                eLength.Enabled:=True;
                cbAuthor.Enabled:=True;
                cbYear.Enabled:=True;
                cbAlbum.Enabled:=True;
                cbGenre.Enabled:=True;
                cbComment.Enabled:=True;
                cbTrack.Enabled:=True;
                lblTitle.Enabled:=True;
                lblTime.Enabled:=True;
                lblOriginalName.Enabled:=True;
                lblDestinationName.Enabled:=True;

                eOrigFile.Text:=ExtractFileName(lbFiles.FileName);
                mp3:=TMPEGAudio.Create;
                mp3.FileName:=lbFiles.FileName;
                eTitle.Text:=ClearWrongTag(mp3.Title);

                if not cbAuthor.Checked then eAuthor.Text:=ClearWrongTag(mp3.Artist);
                if not cbYear.Checked then eYear.Text:=ClearWrongTag(mp3.Year);
                if not cbAlbum.Checked then eAlbum.Text:=ClearWrongTag(mp3.Album);

                if not cbGenre.Checked then
                begin
                        if mp3.Genre > MaxStyles then
                                cbGenreList.ItemIndex := cbGenreList.Items.Count-1
                        else
                                cbGenreList.ItemIndex := mp3.Genre;
                end;

                if not cbComment.Checked then eComment.Text:=ClearWrongTag(mp3.Comment);
                if not cbTrack.Checked then eTrack.Text:=IntToStr(mp3.Track);

                if chbUsePlayer.Checked then
                begin
                        XaudioPlayer.Stop;
                        XaudioPlayer.InputOpen(lbFiles.FileName);
                end;

                if mp3.Duration < 3600 then
                        eLength.Text := FormatDateTime('nn:ss', mp3.DurationTime) + ' (' + IntToStr (mp3.Duration) + ' sek.)'
                else
                        eLength.Text := FormatDateTime('hh:nn:ss', mp3.DurationTime) + ' (' + IntToStr (mp3.Duration) + ' sek.)';
        end;
        Screen.Cursor:=crDefault;
end;

procedure TMainForm.eTitleChange(Sender: TObject);
begin
        UpdateFields;
end;

procedure TMainForm.eAuthorChange(Sender: TObject);
begin
        UpdateFields;
end;

procedure TMainForm.rgSpacesClick(Sender: TObject);
begin
        UpdateFields;
end;

procedure TMainForm.chbPolishLettersClick(Sender: TObject);
begin
        UpdateFields;
end;

procedure TMainForm.lbFilesChange(Sender: TObject);
begin
        RereadID3Tag;
        UpdateFields;
end;

procedure TMainForm.chbBreakSignsClick(Sender: TObject);
begin
        UpdateFields;
end;

procedure TMainForm.btnPlayClick(Sender: TObject);
begin
        if chbUsePlayer.Checked then XaudioPlayer.Play;
end;

procedure TMainForm.btnPauseClick(Sender: TObject);
begin
        if chbUsePlayer.Checked then XaudioPlayer.Pause;
end;

procedure TMainForm.btnStopClick(Sender: TObject);
begin
        if chbUsePlayer.Checked then
        begin
                XaudioPlayer.Stop;
                Posit.Position:=0;
        end;
end;

procedure TMainForm.PositChange(Sender: TObject);
begin
        if not chbUsePlayer.Checked then exit;
        if AutoU=True then
        begin
                AutoU:=false;
                exit;
        end
        else
        begin
                XaudioPlayer.InputSeek(Posit.Position, Posit.Max);
        end;
end;

procedure TMainForm.XaudioPlayerNotifyInputPosition(Sender: TXaudioPlayer;
  Offset, Range: Cardinal);
begin
        AutoU:=True;
        Posit.Position := Offset;
end;

procedure TMainForm.mnuPlayClick(Sender: TObject);
begin
        if chbUsePlayer.Checked then XaudioPlayer.Play;
end;

procedure TMainForm.mnuPauseClick(Sender: TObject);
begin
        if chbUsePlayer.Checked then XaudioPlayer.Pause;
end;

procedure TMainForm.mnuStopClick(Sender: TObject);
begin
	if chbUsePlayer.Checked then
	begin
		XaudioPlayer.Stop;
		Posit.Position:=0;
	end;
end;

procedure TMainForm.mnuDeleteClick(Sender: TObject);
var
	fil: String;
begin
	if lbFiles.ItemIndex=-1 then exit;
	fil:=lbFiles.Items.Strings[lbFiles.ItemIndex];
	if Application.MessageBox(PCHar('Plik "'+fil+'" zostanie usuniÍty.'+#13+#13+'Program pnM3 usuwa pliki bez poúrednictwa Kosza'+#13+'systemowego i operacji takiej nie moøna cofnπÊ ani zatrzymaÊ!'+#13+#13+'UsunπÊ?'),'Potwierdü...',MB_YESNO+MB_ICONWARNING+MB_DEFBUTTON2)=ID_NO then exit;
	if chbUsePlayer.Checked then
	begin
		XaudioPlayer.Stop;
		XaudioPlayer.InputClose;
		btnStopClick(self);
	end;
	DeleteFile(fil);
	mnuRefreshClick(self);
end;

procedure TMainForm.mnuRefreshClick(Sender: TObject);
var
	tmp: String;
begin
        tmp:=lbFiles.Directory;
        lbFiles.Directory:='\';
        lbFiles.Directory:=tmp;
        lbFiles.ItemIndex:=0;
        lbFilesChange(self);
end;

procedure TMainForm.chbUsePlayerClick(Sender: TObject);
begin
        if chbUsePlayer.Checked then
        begin
                btnPlay.Enabled:=True;
                btnPause.Enabled:=True;
                btnStop.Enabled:=True;
                Posit.Enabled:=True;
                mnuPlay.Enabled:=True;
                mnuPause.Enabled:=True;
                mnuStop.Enabled:=True;

                XaudioPlayer.Stop;
                XaudioPlayer.InputOpen(lbFiles.FileName);
        end
        else
        begin
                btnPlay.Enabled:=False;
                btnPause.Enabled:=False;
                btnStop.Enabled:=False;
                Posit.Enabled:=False;
                mnuPlay.Enabled:=False;
                mnuPause.Enabled:=False;
                mnuStop.Enabled:=False;

                XaudioPlayer.Stop;
                Posit.Position:=0;
        end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
var
        a: Integer;
begin
        for a := 0 to MaxStyles do cbGenreList.Items.Add(MusicStyle[a]);        
        cbGenreList.Items.Add('(Nie znany)');

        LoadSettings();
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
        cbNums.ItemIndex:=0;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        XaudioPlayer.Stop;
        XaudioPlayer.InputClose;
        SaveSettings();
end;

procedure TMainForm.btnID3Click(Sender: TObject);
begin
        if (lbFiles.ItemIndex=-1) or (eNewFile.Text='') then exit;

        if chbUsePlayer.Checked then
        begin
                XaudioPlayer.Stop;
                XaudioPlayer.InputClose;
                btnStopClick(self);
        end;

        mp3:=TMPEGAudio.Create;
        mp3.FileName:=lbFiles.FileName;
        mp3.Title:=eTitle.Text;
        mp3.Artist:=eAuthor.Text;
        mp3.Comment:=eComment.Text;
        mp3.Track:=StrToIntDef(eTrack.Text,0);
        mp3.Year:=eYear.Text;
        mp3.Album:=eAlbum.Text;

        if cbGenreList.Text <> '(Nie znany)' then mp3.Genre := cbGenreList.ItemIndex else mp3.Genre := 255;

        if mp3.WriteTag<>0 then Application.MessageBox(PChar('Wystπpi≥ b≥πd podczas prÛby zapisu ID3Tag dla pliku:'+chr(13)+mp3.FileName+chr(13)+chr(13)+'Plik moøe byÊ tylko do odczytu lub uszkodzony.'),'B≥πd...',MB_OK+MB_ICONERROR+MB_DEFBUTTON2);

        mp3.Free;

        if chbFastEditor.Checked then
        begin
                lbFiles.ItemIndex:=lbFiles.ItemIndex+1;
                RereadID3Tag;
                UpdateFields;

                if MainForm.ActiveControl=eTitle then
                begin
                        eTitle.SetFocus;
                        eTitle.SelectAll;
                end;

                if MainForm.ActiveControl=eAuthor then
                begin
                        eAuthor.SetFocus;
                        eAuthor.SelectAll;
                end;

                if MainForm.ActiveControl=eAlbum then
                begin
                        eAlbum.SetFocus;
                        eAlbum.SelectAll;
                end;

                if MainForm.ActiveControl=eYear then
                begin
                        eYear.SetFocus;
                        eYear.SelectAll;
                end;

                if MainForm.ActiveControl=eComment then
                begin
                        eComment.SetFocus;
                        eComment.SelectAll;
                end;

                if MainForm.ActiveControl=eTrack then
                begin
                        eTrack.SetFocus;
                        eTrack.SelectAll;
                end;
        end;
end;

procedure TMainForm.btnFileClick(Sender: TObject);
var
        IsOK: Boolean;
        sOldName, sNewName: String;
begin
        if lbFiles.ItemIndex=-1 then exit;

        if eNewFile.Text='' then
        begin
                Application.MessageBox('Nie moøna zmieniÊ nazwy pliku, gdyø pole "Proponowana nazwa pliku" jest puste!','Ostrzeøenie',MB_OK+MB_ICONWARNING+MB_DEFBUTTON1);
                exit;
        end;

        if chbUsePlayer.Checked then
        begin
                XaudioPlayer.Stop;
                XaudioPlayer.InputClose;
                btnStopClick(self);
        end;

        sOldName:=lbFiles.FileName;
        sNewName:=eNewFile.Text;

        IsOK:=RenameFile(sOldName,sNewName);
        if IsOK=False then Application.MessageBox(PChar('Wystπpi≥ b≥πd przy prÛbie zmiany nazwy pliku:'+chr(13)+sOldName+chr(13)+chr(13)+'Operacja nie powiod≥a siÍ - plik o zadanej nazwie moøe juø istnieÊ lub byÊ tylko do odczytu lub uszkodzony.'),'B≥πd!',MB_OK+MB_ICONERROR+MB_DEFBUTTON1);

        mnuRefreshClick(self);
        if mnuTrackChanges.Checked then lbFiles.ItemIndex:=lbFiles.Items.IndexOf(sNewName);
end;

procedure TMainForm.btnAllClick(Sender: TObject);
begin
        if eNewFile.Text='' then
        begin
                Application.MessageBox('Nie moøna zmieniÊ nazwy pliku, gdyø pole "Proponowana nazwa pliku" jest puste!','Ostrzeøenie',MB_OK+MB_ICONWARNING+MB_DEFBUTTON1);
                exit;
        end;
        
        btnID3Click(self);
        btnFileClick(self);
end;

procedure TMainForm.mnuTrackChangesClick(Sender: TObject);
begin
        mnuTrackChanges.Checked:=not mnuTrackChanges.Checked;
end;

procedure TMainForm.mnuMoveClick(Sender: TObject);
var
        fil: String;
        tst: Boolean;
begin
	if lbFiles.ItemIndex=-1 then exit;
	XaudioPlayer.Stop;
	XaudioPlayer.InputClose;
	fil:=lbFiles.Items.Strings[lbFiles.ItemIndex];
	fd.Directory:=lbFiles.Directory;

	if fd.Execute then
	begin
		if fd.Directory=lbFiles.Directory then
		begin
			Application.MessageBox('Foldery ürÛd≥owy i docelowy sπ identyczne!'+#13+#13+'Operacja zosta≥a anulowana.','Ostrzeøenie!',MB_OK+MB_ICONWARNING+MB_DEFBUTTON1);
			exit;
		end;
		if Application.MessageBox(PCHar('Plik "'+fil+'" zostanie przeniesiony.'+#13+#13+'Folder ürÛd≥owy: '+lbFiles.Directory+#13+'Folder docelowy: '+fd.Directory+#13+#13+'PrzenieúÊ?'),'Potwierdü...',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=ID_YES then
		begin
			tst:=CopyFile(PChar(lbFiles.Directory+'\'+fil),PChar(fd.Directory+'\'+fil),True);
			if tst=False then
			begin
				Application.MessageBox('Wystπpi≥ b≥πd przy prÛbie przenoszenia pliku!','Ostrzeøenie!',MB_OK+MB_ICONERROR+MB_DEFBUTTON1);
				exit;
			end;
			tst:=DeleteFile(lbFiles.Directory+'\'+fil);
			if tst=False then
			begin
				Application.MessageBox('Wystπpi≥ b≥πd przy prÛbie przenoszenia pliku!','Ostrzeøenie!',MB_OK+MB_ICONERROR+MB_DEFBUTTON1);
				exit;
			end;
		end;

	end;

	//Refresh
	mnuRefreshClick(self);
end;

procedure TMainForm.mnuCopyClick(Sender: TObject);
var
	fil: String;
	tst: Boolean;
begin
	if lbFiles.ItemIndex=-1 then exit;
	XaudioPlayer.Stop;
	XaudioPlayer.InputClose;
	fil:=lbFiles.Items.Strings[lbFiles.ItemIndex];
	fd.Directory:=lbFiles.Directory;

	if fd.Execute then
	begin
		if fd.Directory=lbFiles.Directory then
		begin
			Application.MessageBox('Foldery ürÛd≥owy i docelowy sπ identyczne!'+#13+#13+'Operacja zosta≥a anulowana.','Ostrzeøenie!',MB_OK+MB_ICONWARNING+MB_DEFBUTTON1);
			exit;
		end;
		tst:=CopyFile(PChar(lbFiles.Directory+'\'+fil),PChar(fd.Directory+'\'+fil),True);
		if tst=False then Application.MessageBox('Wystπpi≥ b≥πd przy prÛbie kopiowania pliku!','Ostrzeøenie!',MB_OK+MB_ICONERROR+MB_DEFBUTTON1);
	end;
end;

procedure TMainForm.mnuExecuteClick(Sender: TObject);
var
	fil: String;
begin
	if lbFiles.ItemIndex=-1 then exit;
	fil:=lbFiles.Items.Strings[lbFiles.ItemIndex];
	ShellExecute(Handle,'open',PChar(fil),'','',SW_SHOW);
end;

procedure TMainForm.btnDoItClick(Sender: TObject);
var
	wAllLength, a, b: Integer;
	sArtist, sTitle, sItem: String;
        lst: TListItem;
        wAllDuration: Integer;
begin
        wAllDuration := 0;
        wAllLength := 0;

        mnuRefreshClick(self);
	mList.Clear;
        TagForm.fList.Items.Clear;

        Application.ProcessMessages;
        Screen.Cursor := crHourglass;
        MainForm.Enabled := False;

	mp3:=TMPEGAudio.Create;

        lblStatus.Caption:='Generowanie listy zmian...';
	pbStatus.Min:=0;
	pbStatus.Max:=lbFiles.Items.Count-1;

	for a:=0 to lbFiles.Items.Count-1 do
	begin
		mp3.FileName:=lbFiles.Items.Strings[a];
		sArtist:=ClearWrongTag(mp3.Artist);
		sTitle:=ClearWrongTag(mp3.Title);

		sItem:=sArtist+eSeparator.Text+sTitle;
		mList.Items.Add(sItem);

  		lst := TagForm.fList.Items.Add;
                mp3.FileName := lbFiles.Items.Strings[a];

                wAllDuration := wAllDuration + mp3.Duration;
                wAllLength := wAllLength + mp3.FileLength;
                eAllLength.Text := SecondsToTime(wAllDuration);

                eAllSize.Text := FloatToStrF((wAllLength / 1073741824), ffFixed, 7,2)+' GB';
                if wAllLength < 1073741824 then eAllSize.Text := FloatToStrF((wAllLength / 1048576), ffFixed, 7,0)+' MB';
                if wAllLength < 104857600 then eAllSize.Text := FloatToStrF((wAllLength / 1048576), ffFixed, 7,2)+' MB';
                if wAllLength < 1048576 then eAllSize.Text := FloatToStrF((wAllLength / 1024), ffFixed, 7,2)+' kB';
                if wAllLength < 1024 then eAllSize.Text := IntToStr(wAllLength) + ' B';

                sArtist := ClearWrongTag(mp3.Title);
                sTitle := ClearWrongTag(mp3.Artist);
                lst.Caption := sArtist;
                lst.SubItems.Add(sTitle);

                if mp3.Genre > MaxStyles then
                        lst.SubItems.Add('(Nie znany)')
                else
                        lst.SubItems.Add(MainForm.cbGenreList.Items[mp3.Genre]);

                lst.SubItems.Add(ClearWrongTag(mp3.Album));
                lst.SubItems.Add(ClearWrongTag(mp3.Year));

                if mp3.Duration < 3600 then
                        lst.SubItems.Add(FormatDateTime('nn:ss', mp3.DurationTime))
                else
                        lst.SubItems.Add(FormatDateTime('hh:nn:ss', mp3.DurationTime));

                lst.SubItems.Add(IntToStr(mp3.Track));
                lst.SubItems.Add(ClearWrongTag(mp3.Comment));
                lst.SubItems.Add(lbFiles.Items.Strings[a]);

                b := TagForm.GetListItemIndexByCaption(sArtist);

                if ((sArtist <> '[brak danych]') and (sTitle <> '[brak danych]')) or (chbDontAddArtistName.Checked and (sTitle<>'[brak danych]')) then
                begin
                        TagForm.fList.Items[b].Checked := True;
                end
                else
                begin
                        TagForm.fList.Items[b].Caption := '{Niepe≥ne dane!} ' + TagForm.fList.Items[b].Caption;
                        if chbAlsoMissingData.Checked then
                                TagForm.fList.Items[b].Checked := True
                        else
                                TagForm.fList.Items[b].Checked := False;
                end;

                if FileGetAttr(mp3.FileName) and faReadOnly<>0 then
                begin
                        TagForm.fList.Items[b].Caption := '{Atrybut tylko-do-odczytu!} '+TagForm.fList.Items[b].Caption;
                        TagForm.fList.Items[b].Checked := False;
                end;

		pbStatus.Position:=a;
                lblProgress.Caption:=IntToStr(Round((pbStatus.Position/pbStatus.Max)*100))+'%';
                Application.ProcessMessages;
	end;

	mp3.Free;
        MainForm.Enabled := True;
        pbStatus.Position := 0;
        lblStatus.Caption := 'Gotowe...';
	Screen.Cursor := crDefault;

        btnCopyToClipboard.Enabled := (mList.Items.Count > 0);
        btnMore.Enabled := (mList.Items.Count > 0);
end;

procedure TMainForm.btnClearClick(Sender: TObject);
begin
	mList.Clear;
        pbStatus.Position:=0;
        lblProgress.Caption:='0%';
        btnCopyToClipboard.Enabled := (mList.Items.Count > 0);
        btnMore.Enabled := (mList.Items.Count > 0);

        eAllLength.Text := '';
        eAllSize.Text := '';
end;

procedure TMainForm.SaveSettings();
var
        sFile: TStringList;
begin
        sFile:=TStringList.Create;

        sFile.Values['WordSpaces']:=IntToStr(rgSpaces.ItemIndex);
        sFile.Values['PolishLetters']:=IntToStr(Ord(chbPolishLetters.Checked));
        sFile.Values['UsePlayer']:=IntToStr(Ord(chbUsePlayer.Checked));
        sFile.Values['BreakSigns']:=IntToStr(Ord(chbBreakSigns.Checked));
        sFile.Values['Directory']:=lbFiles.Directory;
        sFile.Values['FileName']:=ExtractFileName(lbFiles.FileName);
        sFile.Values['Separator']:=eSeparator.Text;
        sFile.Values['TabIndex']:=IntToStr(pcMain.ActivePageIndex);
        sFile.Values['AlsoMissingData']:=IntToStr(Ord(chbAlsoMissingData.Checked));
        sFile.Values['FastEditor']:=IntToStr(Ord(chbFastEditor.Checked));
        sFile.Values['NoSummaryIfNoErrors']:=IntToStr(Ord(chbNoSummaryIfNoErrors.Checked));
        sFile.Values['SplitterPosition'] := IntToStr(lbDirectory.Height);

        if mnuSAllLowercase.Checked then sFile.Values['MenuCheck']:='0';
        if mnuSAllUppercase.Checked then sFile.Values['MenuCheck']:='1';
        if mnuSFirstUppercase.Checked then sFile.Values['MenuCheck']:='2';
        if mnuSFirstInWordUppercase.Checked then sFile.Values['MenuCheck']:='3';
        if mnuSEnglishStyle.Checked then sFile.Values['MenuCheck']:='4';

        sFile.SaveToFile(ExtractFilePath(Application.ExeName)+'settings.dat');
        sFile.Free;
end;

procedure TMainForm.LoadSettings();
var
        sFile: TStringList;
        sSettingsFile, sDir, sFil: String;
        iMenuCheck: Integer;
begin
        sSettingsFile:=ExtractFilePath(Application.ExeName)+'settings.dat';
        if FileExists(sSettingsFile) then
        begin
                sFile:=TStringList.Create;
                sFile.LoadFromFile(sSettingsFile);

                rgSpaces.ItemIndex:=StrToIntDef(sFile.Values['WordSpaces'],0);
                chbPolishLetters.Checked:=(StrToIntDef(sFile.Values['PolishLetters'],0) = 1);
                chbUsePlayer.Checked:=(StrToIntDef(sFile.Values['UsePlayer'],0) = 1);
                chbBreakSigns.Checked:=(StrToIntDef(sFile.Values['BreakSigns'],0) = 1);

                sDir:=sFile.Values['Directory'];
                if DirectoryExists(sDir) then
                begin
                        lbFiles.Directory:=sDir;
                        lbDirectory.Directory:=sDir;

                        sFil:=sFile.Values['FileName'];
                        if FileExists(sDir+'\'+sFil) then lbFiles.FileName:=sDir+'\'+sFil;
                end;

                eSeparator.Text:=sFile.Values['Separator'];
                pcMain.ActivePageIndex:=StrToIntDef(sFile.Values['TabIndex'],0);
                pcMainChange(self);

                chbAlsoMissingData.Checked:=(StrToIntDef(sFile.Values['AlsoMissingData'],0) = 1);
                chbFastEditor.Checked:=(StrToIntDef(sFile.Values['FastEditor'],0) = 1);
                chbNoSummaryIfNoErrors.Checked:=(StrToIntDef(sFile.Values['NoSummaryIfNoErrors'],0) = 1);

                iMenuCheck:=StrToIntDef(sFile.Values['MenuCheck'],2);
                case iMenucheck of
                        0: mnuSAllLowercase.Checked:=True;
                        1: mnuSAllUppercase.Checked:=True;
                        2: mnuSFirstUppercase.Checked:=True;
                        3: mnuSFirstInWordUppercase.Checked:=True;
                        4: mnuSEnglishStyle.Checked:=True;
                end;

                lbDirectory.Height := StrToIntDef(sFile.Values['SplitterPosition'], 240);

                sFile.Free;
        end;
end;

procedure TMainForm.imgAboutClick(Sender: TObject);
begin
        InfoForm.ShowModal;
end;

procedure TMainForm.eSeparatorChange(Sender: TObject);
begin
        eSeparator.Text:=StringReplace(eSeparator.Text,'?', '', [rfReplaceAll, rfIgnoreCase]);
        eSeparator.Text:=StringReplace(eSeparator.Text,'*', '', [rfReplaceAll, rfIgnoreCase]);
        UpdateFields;
end;

procedure TMainForm.pcMainChange(Sender: TObject);
begin
        rgSpaces.Enabled:=(pcMain.ActivePageIndex<>1);
        chbPolishLetters.Enabled:=(pcMain.ActivePageIndex<>1);
        chbBreakSigns.Enabled:=(pcMain.ActivePageIndex<>1);
end;

procedure TMainForm.mListClick(Sender: TObject);
begin
        btnCopyToClipboard.Enabled := (mList.Items.Count > 0);
        btnMore.Enabled := (mList.Items.Count > 0);
end;

procedure TMainForm.btnCopyToClipboardClick(Sender: TObject);
var
        clp: TClipboard;
begin
        clp:=TClipboard.Create;
        clp.AsText:=mList.Items.Text;
        clp.Free;
end;

procedure TMainForm.btnListClick(Sender: TObject);
var
        iTotal, iChecked, iCurrent, iKrok, a, b: Integer;
	sGenre, sAdd, sArtist, sTitle, sItem, sResult, sOldFile, sNewFile: String;
        CanRename, IsOK: Boolean;
begin
        Screen.Cursor:=crHourglass;

        mnuRefreshClick(self);
        MainForm.Enabled:=False;
        lblDesc.Caption:='Generowanie listy zmian...';
	ListForm.fList.Clear;

	mp3:=TMPEGAudio.Create;
	pbGlobal.Min := 0;
	pbGlobal.Max := lbFiles.Items.Count - 1;

        iKrok:=StrToIntDef(eKrok.Text,1);
        iCurrent:=StrToIntDef(eStart.Text,1);

	for a:=0 to lbFiles.Items.Count - 1 do
	begin
		mp3.FileName:=lbFiles.Items.Strings[a];
		sArtist:=ClearWrongTag(mp3.Artist);
		sTitle:=ClearWrongTag(mp3.Title);

                sResult := '';

                sGenre := mp3.GenreStr;
                if sGenre = 'Unknown' then sGenre := 'Nie znany';
                if chbAddStyle.Checked then sResult := '[' + sGenre + '] ';

                if chbDontAddArtistName.Checked then
                        sResult := sResult + GenerateFileNameFromID3(sArtist, sTitle, True)
                else
                        sResult := sResult + GenerateFileNameFromID3(sArtist, sTitle, False);

                if chbNumbering.Checked then
                begin
                        sAdd:=Copy('000000000',1,cbNums.ItemIndex-(Length(IntToStr(iCurrent))-1));
                        sAdd:=sAdd+IntToStr(iCurrent);

                        if chbMustBeSeparator.Checked then sAdd:=sAdd+eSeparator.Text;
                        if chbDot.Checked then sAdd:=sAdd+'.';
                        if chbSpace.Checked then sAdd:=sAdd+' ';

                        Inc(iCurrent,iKrok);
                        sResult:=sAdd+sResult;
                end;

		sItem:=ExtractFileName(mp3.FileName)+' --> '+sResult;
                sOldFile:=mp3.FileName;
                sNewFile:=ExtractFilePath(mp3.FileName)+sResult;

		ListForm.fList.Items.Add(sItem);
                b:=ListForm.fList.Items.IndexOf(sItem);

                if ((sArtist<>'[brak danych]') and (sTitle<>'[brak danych]')) or (chbDontAddArtistName.Checked and (sTitle<>'[brak danych]')) then
                begin
                        ListForm.fList.Checked[b]:=True;
                end
                else
                begin
                        ListForm.fList.Items[b]:='{Niepe≥ne dane!} '+ListForm.fList.Items[b];
                        if chbAlsoMissingData.Checked then
                        begin
                                ListForm.fList.Checked[b]:=False;
                        end
                        else
                        begin
                                ListForm.fList.Checked[b]:=False;
                                ListForm.fList.ItemEnabled[b]:=False;
                        end;
                end;

                if FileExists(sNewFile) then
                begin
                        if sOldFile=sNewFile then
                        begin
                                ListForm.fList.Items[b]:='{Nazwa pliku nie ulega zmianie} '+ListForm.fList.Items[b];
                                ListForm.fList.Checked[b]:=False;
                                ListForm.fList.ItemEnabled[b]:=False;
                        end
                        else
                        begin
                                ListForm.fList.Items[b]:='{Plik o nazwie docelowej juø istnieje!} '+ListForm.fList.Items[b];
                                ListForm.fList.Checked[b]:=False;
                                ListForm.fList.ItemEnabled[b]:=False;
                        end;
                end;

                if FileGetAttr(mp3.FileName) and faReadOnly<>0 then
                begin
                        ListForm.fList.Items[b]:='{Atrybut tylko-do-odczytu!} '+ListForm.fList.Items[b];
                        ListForm.fList.Checked[b]:=False;
                        ListForm.fList.ItemEnabled[b]:=False;
                end;

		pbGlobal.Position:=a;
                lblGlobal.Caption:=IntToStr(Round((pbGlobal.Position/pbGlobal.Max)*100))+'%';
                Application.ProcessMessages;
	end;

	mp3.Free;
        MainForm.Enabled:=True;
        pbGlobal.Position:=0;
        lblDesc.Caption:='Gotowe...';
	Screen.Cursor:=crDefault;

        ListForm.pnlMode.Caption:='Test';
        ListForm.UpdateFields();
        ListForm.ShowModal;

        if ListForm.Tag=2 then exit;

        Application.ProcessMessages;
        Screen.Cursor:=crHourglass;
        MainForm.Enabled:=False;
        lblDesc.Caption:='Automatyczna zmiana nazwy...';

	mp3:=TMPEGAudio.Create;
	pbGlobal.Min := 0;
	pbGlobal.Max := StrToIntDef(ListForm.pnlCount.Caption, 0);

        iKrok:=StrToIntDef(eKrok.Text,1);
        iCurrent:=StrToIntDef(eStart.Text,1);

	for a:=0 to lbFiles.Items.Count - 1 do
	begin
                if ListForm.fList.Checked[a] then
                begin
                        CanRename:=True;

        		mp3.FileName:=lbFiles.Items.Strings[a];
        		sArtist:=ClearWrongTag(mp3.Artist);
        		sTitle:=ClearWrongTag(mp3.Title);

                        sResult := '';

                        sGenre := mp3.GenreStr;
                        if sGenre = 'Unknown' then sGenre := 'Nie znany';
                        if chbAddStyle.Checked then sResult := '[' + sGenre + '] ';

                        if chbDontAddArtistName.Checked then
                                sResult := sResult + GenerateFileNameFromID3(sArtist, sTitle, True)
                        else
                                sResult := sResult + GenerateFileNameFromID3(sArtist, sTitle, False);

                        if chbNumbering.Checked then
                        begin
                                sAdd:=Copy('000000000',1,cbNums.ItemIndex-(Length(IntToStr(iCurrent))-1));
                                sAdd:=sAdd+IntToStr(iCurrent);

                                if chbMustBeSeparator.Checked then sAdd:=sAdd+eSeparator.Text;
                                if chbDot.Checked then sAdd:=sAdd+'.';
                                if chbSpace.Checked then sAdd:=sAdd+' ';

                                Inc(iCurrent,iKrok);
                                sResult:=sAdd+sResult;
                        end;

                        sOldFile:=mp3.FileName;
                        sNewFile:=ExtractFilePath(mp3.FileName)+sResult;

                        if FileExists(sNewFile) then
                        begin
                                ListForm.fList.Checked[a]:=False;
                                ListForm.fList.ItemEnabled[a]:=False;
                                ListForm.fList.Items[a]:='[B£•D! Plik o nazwie docelowej juø istnieje!] '+ExtractFileName(sOldFile)+' --> '+ExtractFileName(sNewFile);
                                CanRename:=False;
                        end;

                        if ((sArtist<>'[brak danych]') and (sTitle<>'[brak danych]')) or (chbDontAddArtistName.Checked and (sTitle<>'[brak danych]')) then
                        begin
                                //Only mark as read-only, so user can select / deselect item on result list.
                                ListForm.fList.ItemEnabled[a] := False;
                        end
                        else
                        begin
                                if not chbAlsoMissingData.Checked then
                                begin
                                        ListForm.fList.Checked[a]:=False;
                                        ListForm.fList.ItemEnabled[a]:=False;
                                        ListForm.fList.Items[a]:='[B£•D! Brakujπce dane w ID3Tag!] '+ExtractFileName(sOldFile)+' --> '+ExtractFileName(sNewFile);
                                        CanRename:=False;
                                end;
                        end;

                        if FileGetAttr(sOldFile) and faReadOnly<>0 then
                        begin
                                ListForm.fList.Checked[a]:=False;
                                ListForm.fList.ItemEnabled[a]:=False;
                                ListForm.fList.Items[a]:='[B£•D! Plik typu tylko-do-odczytu!] '+ExtractFileName(sOldFile)+' --> '+ExtractFileName(sNewFile);
                                CanRename:=False;
                        end;

                        if CanRename then
                        begin
                                IsOK:=RenameFile(sOldFile,sNewFile);
                                if not IsOK then
                                begin
                                        ListForm.fList.Checked[a]:=False;
                                        ListForm.fList.ItemEnabled[a]:=False;
                                        ListForm.fList.Items[a]:='[B£•D! Zmiana nazwy nie powiod≥a siÍ!] '+ExtractFileName(sOldFile)+' --> '+ExtractFileName(sNewFile);
                                end;
                        end;

        		pbGlobal.Position:=a;
                        lblGlobal.Caption:=IntToStr(Round((pbGlobal.Position/pbGlobal.Max)*100))+'%';
                        Application.ProcessMessages;
                end
                else ListForm.fList.Items[a]:='###';
        end;

        while ListForm.fList.Items.IndexOf('###')<>-1 do ListForm.fList.Items.Delete(ListForm.fList.Items.IndexOf('###'));

	mp3.Free;
        MainForm.Enabled:=True;
        mnuRefreshClick(self);
        pbGlobal.Position:=0;
        MainForm.lblGlobal.Caption:='0%';
        lblDesc.Caption:='Gotowe...';
	Screen.Cursor:=crDefault;

        iChecked:=0;
        iTotal:=ListForm.fList.Items.Count;
        for a:=0 to iTotal-1 do if ListForm.fList.Checked[a] then Inc(iChecked);

        if (iTotal<>iChecked) or (chbNoSummaryIfNoErrors.Checked<>True) then
        begin
                ListForm.pnlMode.Caption:='Result';
                ListForm.UpdateFields();
                ListForm.ShowModal;
        end;
end;

procedure TMainForm.lbFilesClick(Sender: TObject);
begin
        RereadID3Tag;
        UpdateFields;
end;

procedure TMainForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if ssCtrl in Shift then
        begin
                if (Key=112) and (btnID3.Enabled) then btnID3Click(self);
                if (Key=113) and (btnFile.Enabled) then btnFileClick(self);
                if (Key=114) and (btnAll.Enabled) then btnAllClick(self);
        end;

end;

procedure TMainForm.chbFastEditorClick(Sender: TObject);
begin
        RereadID3Tag();
        UpdateFields;
end;

procedure TMainForm.btnRemoveTagClick(Sender: TObject);
var
        msg: String;
begin
        msg:='Plik "'+ExtractFileName(lbFiles.FileName)+'" zawiera w ID3Tag dane:'+#13#13;
        msg:=msg+'Tytu≥: '+eTitle.Text+#13;
        msg:=msg+'Wykonawca: '+eAuthor.Text+#13;
        msg:=msg+'Album: '+eAlbum.Text+#13;
        msg:=msg+'Rok: '+eYear.Text+#13;
        msg:=msg+'Styl: '+cbGenreList.Text+#13;
        msg:=msg+'Komentarz: '+eComment.Text+#13#13;
        msg:=msg+'UsunπÊ ID3Tag z pliku?';

        if Application.MessageBox(PChar(msg),'Potwierdzenie...',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=ID_NO then exit;

        mp3:=TMPEGAudio.Create;
        mp3.FileName:=lbFiles.FileName;
        if mp3.RemoveTag<>0 then Application.MessageBox(PChar('Wystπpi≥ b≥πd podczas prÛby usuniÍcia ID3Tag dla pliku:'+chr(13)+lbFiles.FileName+chr(13)+'Plik moøe byÊ zabiezpieczony przed zapisem (tylko-do-odczytu) lub uszkodzony.'),'B≥πd...',MB_OK+MB_ICONERROR+MB_DEFBUTTON2);
        mp3.Free;
end;

procedure TMainForm.eNewFileChange(Sender: TObject);
begin
        eNewFile.Text:=StringReplace(eNewFile.Text,'?', '', [rfReplaceAll, rfIgnoreCase]);
        eNewFile.Text:=StringReplace(eNewFile.Text,'*', '', [rfReplaceAll, rfIgnoreCase]);
end;

procedure TMainForm.EditControlEnter(Sender: TObject);
begin
        if Sender is TEdit then (Sender as TEdit).Color:=clAqua;

        if Sender is TComboBox then (Sender as TComboBox).Color:=clAqua;
end;

procedure TMainForm.EditControlExit(Sender: TObject);
begin
        if Sender is TEdit then (Sender as TEdit).Color:=clWindow;

        if Sender is TComboBox then (Sender as TComboBox).Color:=clWindow;
end;

procedure TMainForm.ValidateInput(Sender: TObject);
var
        sMess: String;
begin
        if (StrToIntDef((Sender as TEdit).Text,0)<1) or (StrToIntDef((Sender as TEdit).Text,0)>9999) then
        begin
                sMess:='WartoúÊ pola "'+Copy((Sender as TEdit).Name,2,Length((Sender as TEdit).Name))+'" musi zawieraÊ siÍ w przedziale 1-9999!';
                Application.MessageBox(PChar(sMess),'Ostrzeøenie!',MB_OK+MB_ICONWARNING+MB_DEFBUTTON1);
                (Sender as TEdit).Text:='1';
                (Sender as TEdit).SetFocus;
                (Sender as TEdit).SelectAll;
        end;
end;

procedure TMainForm.chbNumberingClick(Sender: TObject);
begin
        if chbNumbering.Checked then
        begin
                lblStart.Enabled:=True;
                eStart.Enabled:=True;
                lblKrok.Enabled:=True;
                eKrok.Enabled:=True;
                lblNums.Enabled:=True;
                cbNums.Enabled:=True;
                chbMustBeSeparator.Enabled:=True;
                chbDot.Enabled:=True;
                chbSpace.Enabled:=True;
        end
        else
        begin
                lblStart.Enabled:=False;
                eStart.Enabled:=False;
                lblKrok.Enabled:=False;
                eKrok.Enabled:=False;
                lblNums.Enabled:=False;
                cbNums.Enabled:=False;
                chbMustBeSeparator.Enabled:=False;
                chbDot.Enabled:=False;
                chbSpace.Enabled:=False;
        end;
end;

procedure TMainForm.btnShowID3TagClick(Sender: TObject);
var
        msg: String;
begin
        mp3:=TMPEGAudio.Create;
        mp3.FileName:=lbFiles.FileName;

        msg:='Plik: '+ExtractFileName(mp3.FileName)+#13;
        msg:=msg+'Tytu≥: '+mp3.Title+#13;
        msg:=msg+'Wykonawca: '+mp3.Artist+#13;
        msg:=msg+'Album: '+mp3.Album+#13;
        msg:=msg+'Rok: '+Trim(mp3.Year)+#13;
        msg:=msg+'Styl: '+mp3.GenreStr+#13;
        msg:=msg+'Komentarz: '+mp3.Comment+#13;
        msg:=msg+'Numer utworu (Track): '+IntToStr(mp3.Track)+#13;
        msg:=msg+'D≥ugoúÊ: ' + FormatDateTime('hh:nn:ss', mp3.DurationTime) + ' ('+IntToStr(mp3.Duration)+' sek.)' +#13;
        msg:=msg+'Rozmiar pliku: ' + FloatToStrF((mp3.FileLength / 1048576),ffFixed,7,2)+' MB ('+IntToStr(mp3.FileLength)+' bajtÛw)' + #13;
        msg:=msg+'Wersja: '+mp3.VersionStr+#13;
        msg:=msg+'Wersja (Layer): '+mp3.LayerStr+#13;
        msg:=msg+'CzÍstotliwoúÊ samplowania: '+IntToStr(mp3.SampleRate)+#13;
        msg:=msg+'CzÍstotliwoúÊ bitÛw: '+IntToStr(mp3.BitRate)+#13;
        msg:=msg+'D≥ugoúÊ ramki: '+IntToStr(mp3.FrameLength)+#13;
        msg:=msg+'UderzeÒ (Bit Per Minute): '+IntToStr(mp3.BPM)+#13;
        msg:=msg+'Suma kontrolna (CRC): '+IntToStr(mp3.CRC)+#13;

        Application.MessageBox(PChar(msg),'Informacje z ID3Tag...',MB_ICONINFORMATION);
        mp3.Free;
end;

procedure TMainForm.PopupSignsMenu(Sender: TObject);
var
        sNew, sOrig: String;
begin
        pmSigns.Tag:=(Sender as TButton).Tag;
        sOrig:=GetOriginalTextFromEdit(pmSigns.Tag);

        if mnuSAllLowercase.Checked then sNew:=AnsiLowerCase(sOrig);
        if mnuSAllUppercase.Checked then sNew:=AnsiUpperCase(sOrig);
        if mnuSFirstUppercase.Checked then sNew:=AnsiUpperCase(Copy(sOrig,1,1))+AnsiLowerCase(Copy(sOrig,2,Length(sOrig)));
        if mnuSFirstInWordUppercase.Checked then sNew:=AnsiUpperCaseFirstLetterInWord(sOrig);
        if mnuSEnglishStyle.Checked then
        begin
                sNew:=AnsiUpperCaseFirstLetterInWord(sOrig);
                sNew:=sNew+' ';

                sNew:=StringReplace(sNew, ' Is ', ' is ', [rfReplaceAll]);
                sNew:=StringReplace(sNew, ' The ', ' the ', [rfReplaceAll]);
                sNew:=StringReplace(sNew, ' In ', ' in ', [rfReplaceAll]);
                sNew:=StringReplace(sNew, ' It ', ' it ', [rfReplaceAll]);
                sNew:=StringReplace(sNew, ' It''s ', ' it''s ', [rfReplaceAll]);
                sNew:=StringReplace(sNew, ' As ', ' as ', [rfReplaceAll]);
                sNew:=StringReplace(sNew, ' At ', ' at ', [rfReplaceAll]);
                sNew:=StringReplace(sNew, ' On ', ' on ', [rfReplaceAll]);
                sNew:=StringReplace(sNew, ' Of ', ' of ', [rfReplaceAll]);
                sNew:=StringReplace(sNew, ' By ', ' by ', [rfReplaceAll]);
                sNew:=StringReplace(sNew, ' Or ', ' or ', [rfReplaceAll]);
                sNew:=StringReplace(sNew, ' To ', ' to ', [rfReplaceAll]);
                sNew:=StringReplace(sNew, ' A ', ' a ', [rfReplaceAll]);
                sNew:=StringReplace(sNew, ' Is ', ' is ', [rfReplaceAll]);
                sNew:=StringReplace(sNew, ' De ', ' de ', [rfReplaceAll]);
                sNew:=StringReplace(sNew, ' La ', ' la ', [rfReplaceAll]);
                sNew:=StringReplace(sNew, ' Off ', ' off ', [rfReplaceAll]);
                sNew:=StringReplace(sNew, ' For ', ' for ', [rfReplaceAll]);
                sNew:=StringReplace(sNew, ' Not ', ' not ', [rfReplaceAll]);
                sNew:=StringReplace(sNew, ' So ', ' so ', [rfReplaceAll]);
                sNew:=StringReplace(sNew, ' Do ', ' do ', [rfReplaceAll]);
                sNew:=StringReplace(sNew, ' An ', ' an ', [rfReplaceAll]);
                sNew:=StringReplace(sNew, ' And ', ' and ', [rfReplaceAll]);
                sNew:=StringReplace(sNew, ' Am ', ' am ', [rfReplaceAll]);
                sNew:=StringReplace(sNew, ' With ', ' with ', [rfReplaceAll]);

                sNew:=Trim(sNew);
        end;

        InsertModifiedTextToEdit(sNew);
end;

function TMainForm.GetOriginalTextFromEdit(WhichEdit: Integer): String;
begin
        case WhichEdit of
                0: Result:=eTitle.Text;
                1: Result:=eAuthor.Text;
                2: Result:=eAlbum.Text;
        end;
end;

procedure TMainForm.InsertModifiedTextToEdit(WhatToInsert: String);
begin
        case pmSigns.Tag of
                0: eTitle.Text:=WhatToInsert;
                1: eAuthor.Text:=WhatToInsert;
                2: eAlbum.Text:=WhatToInsert;
        end;
end;

function TMainForm.AnsiUpperCaseFirstLetterInWord(S: String): String;
var
        a: Integer;
        SkipNext: Boolean;
begin
        SkipNext:=False;
        for a:=2 to Length(S) do
        begin
                if S[a]=' ' then
                begin
                        Result:=Result+' '+AnsiUpperCase(Copy(S,a+1,1));
                        SkipNext:=True;
                end
                else
                begin
                        if SkipNext=True then
                                SkipNext:=False
                        else
                                Result:=Result+AnsiLowerCase(S[a]);
                end;
        end;
        Result:=AnsiUpperCase(Copy(S,1,1))+Result;
end;

procedure TMainForm.ChangeMenuSelection(Sender: TObject);
begin
        (Sender as TMenuItem).Checked := True;
end;

procedure TMainForm.btnMoreClick(Sender: TObject);
var
        sLen, iError, a: Integer;
        sAdd, sLastChar: String;
        mp3: TMPEGAudio;
begin
        TagForm.pnlMode.Caption:='Test';
        TagForm.UpdateFields();
        TagForm.ShowModal;

        if TagForm.Tag=2 then exit;

        Application.ProcessMessages;
        Screen.Cursor:=crHourglass;
        MainForm.Enabled:=False;
        lblStatus.Caption:='Automatyczna zmiana tagÛw ID3Tag...';

        iError := 0;

	mp3:=TMPEGAudio.Create;
	pbStatus.Min := 0;
	pbStatus.Max := StrToIntDef(TagForm.pnlCount.Caption, 0);

        sLen := Length(IntToStr(TagForm.fList.Items.Count)) - 1;

	for a:=0 to lbFiles.Items.Count - 1 do
	begin
                if TagForm.fList.Items[a].Checked then
                begin
                        mp3.FileName := lbFiles.Items.Strings[a];

                        if TagForm.chbTitle.Checked then
                        begin
                                mp3.Title := TagForm.eTitle.Text;
                                if TagForm.chbNameNum.Checked then
                                begin
                                        sAdd := Copy('000000000', 1, sLen - (Length(IntToStr(a + 1)) - 1));
                                        sAdd := sAdd + IntToStr(a + 1);

                                        if TagForm.chbAddBrackets.Checked then sAdd := '[' + sAdd + ']';

                                        sLastChar := Copy(TagForm.eTitle.Text, Length(TagForm.eTitle.Text), 1);

                                        if (sLastChar = ' ') or (StrToIntDef(sLastChar, -1) <> -1) or (TagForm.eTitle.Text = '') then
                                        begin
                                                sAdd := '' + sAdd;
                                        end
                                        else
                                        begin
                                                sAdd := ' ' + sAdd;
                                        end;

                                        mp3.Title := mp3.Title + sAdd;
                                end;
                        end;

                        if TagForm.chbAuthor.Checked then mp3.Artist := TagForm.eAuthor.Text;
                        if TagForm.chbComment.Checked then mp3.Comment := TagForm.eComment.Text;

                        if TagForm.chbTrack.Checked then
                        begin
                                if TagForm.chbTrackNum.Checked then
                                        mp3.Track := a + 1
                                else
                                        mp3.Track := StrToIntDef(TagForm.eTrack.Text, 0);
                        end;

                        if TagForm.chbYear.Checked then mp3.Year := TagForm.eYear.Text;
                        if TagForm.chbAlbum.Checked then mp3.Album := TagForm.eAlbum.Text;

                        if TagForm.chbGenreList.Checked then if TagForm.eGenreList.Text <> '(Nie znany)' then mp3.Genre := TagForm.eGenreList.ItemIndex else mp3.Genre := 255;

                        if mp3.WriteTag <> 0 then Inc(iError);

        		pbStatus.Position := a;
                        lblProgress.Caption := IntToStr(Round((pbStatus.Position/pbStatus.Max)*100))+'%';
                        Application.ProcessMessages;
                end
                else TagForm.fList.Items[a].Caption := '###';
        end;

        while TagForm.GetListItemIndexByCaption('###')<>-1 do TagForm.fList.Items.Delete(TagForm.GetListItemIndexByCaption('###'));

        mp3.Free;
        btnDoItClick(self);

        MainForm.Enabled:=True;
        pbStatus.Position:=0;
        MainForm.lblProgress.Caption:='0%';
        lblStatus.Caption:='Gotowe...';
	Screen.Cursor:=crDefault;

        if iError = 1 then Application.MessageBox(PChar('W przypadku 1 pliku wystπpi≥ b≥πd podczas prÛby zapisu tagÛw ID3Tag. Plik ten moøe byÊ tylko do odczytu lub uszkodzony.'),'B≥πd...',MB_OK+MB_ICONERROR+MB_DEFBUTTON2);
        if iError > 1 then Application.MessageBox(PChar('W przypadku ' + IntToStr(iError) + ' plikÛw wystπpi≥ b≥πd podczas prÛby zapisu tagÛw ID3Tag. Pliki te pogπ byÊ tylko do odczytu lub uszkodzone.'),'B≥πd...',MB_OK+MB_ICONERROR+MB_DEFBUTTON2);
end;

procedure TMainForm.mListDblClick(Sender: TObject);
begin
        if mList.ItemIndex = -1 then exit;
        
        lbFiles.ItemIndex:=mList.ItemIndex;
        lbFilesChange(self);
        pcMain.ActivePageIndex:=0;
        pcMainChange(self);
end;

procedure TMainForm.SizeAndLengthToClipboard(Sender: TObject);
var
        clp: TClipboard;
begin
        clp := TClipboard.Create;
        clp.AsText := eAllLength.Text + ' (' + eAllSize.Text + ')';
        clp.Free;
end;

end.
