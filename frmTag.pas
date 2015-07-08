unit frmTag;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, CheckLst, ExtCtrls, Buttons, MPGTools;

type
  TTagForm = class(TForm)
    btnOK: TButton;
    btnCancel: TButton;
    lblFolder: TLabel;
    lblMainInfo: TLabel;
    lblInfo: TLabel;
    pnlMode: TPanel;
    fList: TListView;
    gbParameters: TGroupBox;
    lblTime: TLabel;
    Bevel2: TBevel;
    eTitle: TEdit;
    eAuthor: TEdit;
    eComment: TEdit;
    eYear: TEdit;
    eLength: TEdit;
    eGenreList: TComboBox;
    eAlbum: TEdit;
    eTrack: TEdit;
    btnGetID3Tag: TBitBtn;
    pnlCount: TPanel;
    btnSelectAll: TBitBtn;
    btnDeselectAll: TBitBtn;
    btnChange: TBitBtn;
    btnClearAll: TBitBtn;
    btnCloseAndEdit: TBitBtn;
    chbTitle: TCheckBox;
    chbAuthor: TCheckBox;
    chbGenreList: TCheckBox;
    chbAlbum: TCheckBox;
    chbComment: TCheckBox;
    chbYear: TCheckBox;
    chbTrack: TCheckBox;
    lblCheckWarning: TLabel;
    lblListWarning: TLabel;
    Label1: TLabel;
    chbTrackNum: TCheckBox;
    chbNameNum: TCheckBox;
    chbAddBrackets: TCheckBox;

    procedure UpdateFields;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelClick(Sender: TObject);
    procedure fListClick(Sender: TObject);
    procedure btnSelectAllClick(Sender: TObject);
    procedure btnChangeClick(Sender: TObject);
    procedure btnDeselectAllClick(Sender: TObject);
    procedure btnCloseAndEditClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure fListDblClick(Sender: TObject);
    procedure btnGetID3TagClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnClearAllClick(Sender: TObject);
    procedure CheckBoxClick(Sender: TObject);
  private
    { Private declarations }
  public
    function GetListItemIndexByCaption(Caption: String): Integer;
  end;

var
  TagForm: TTagForm;

implementation

uses frmMain, pasProcs;

{$R *.DFM}

procedure TTagForm.UpdateFields();
var
        I, a, iChecked, iTotal: Integer;
        Temp: TComponent;
        bAtLeastOneChecked: Boolean;
begin
        if pnlMode.Caption<>'Result' then
        begin
                iChecked := 0;
                iTotal := fList.Items.Count;

                for a:=0 to iTotal-1 do if fList.Items[a].Checked then Inc(iChecked);

                lblFolder.Caption:='Wybrany folder: '+MainForm.lbFiles.Directory;
                lblInfo.Caption:='Wszystkich pozycji na liœcie: '+IntToStr(iTotal)+'. Wybrano do zmiany tagów ID3Tag: '+IntToStr(iChecked)+'. Liczba pozycji, które nie bêd¹ zmienione: '+IntToStr(iTotal-iChecked)+'.';
                lblMainInfo.Caption:='Narzêdzie to mo¿na wykorzystaæ do zmiany (ujednolicenia) wartoœci w tagach ID3Tag, w wielu plikach jednoczeœnie. Zaznacz pliki, których tagi maj¹ byæ zmienione, ustal parametry oraz kliknij na klawiszu --> "Rozpocznij zmianê".';
                btnOK.Caption:='Rozpocznij zmianê';

                btnSelectAll.Show;
                btnDeselectAll.Show;
                btnChange.Show;
                btnCancel.Show;

                bAtLeastOneChecked := False;

                for I := TagForm.ComponentCount - 1 downto 0 do
                begin
                        Temp := TagForm.Components[I];

                        if Temp.Tag = 9 then
                        begin
                                if (Temp as TCheckBox).Checked then
                                begin
                                        bAtLeastOneChecked := True;
                                end;
                        end;
                end;

                lblCheckWarning.Visible := not bAtLeastOneChecked;
                lblListWarning.Visible := not (iChecked <> 0);

                btnOK.Enabled := bAtLeastOneChecked;

                if (iChecked <> 0) and bAtLeastOneChecked then btnOK.Enabled := True else btnOK.Enabled := False;
        end
        else
        begin
                iChecked:=0;
                iTotal:=fList.Items.Count;
                for a:=0 to iTotal-1 do if fList.Items[a].Checked then Inc(iChecked);

                lblFolder.Caption:='Wybrany folder: '+MainForm.lbFiles.Directory;
                lblMainInfo.Caption:='Poni¿sza lista zawiera wyniki przeprowadzonego procesu zmiany tagów ID3Tag. Pozycje zaznaczone zosta³y zmienione. Pozycje odznaczone - to pliki, których tagi ID3Tag z ró¿nych powodów nie mog³y zostaæ zmienione.';
                btnOK.Caption:='Zamknij okno';

                if iTotal=iChecked then
                        lblInfo.Caption:='Nazwy wszystkich '+IntToStr(iTotal)+' wybranych plików zosta³y zmienione.'
                else
                        lblInfo.Caption:='Spoœród wszystkich '+IntToStr(iTotal)+' plików, automatyczna zmiana nazwy powiod³a siê w przypadku '+IntToStr(iChecked)+'. Pozosta³e '+IntToStr(iTotal-iChecked)+' nie zosta³y zmienione.';

                btnSelectAll.Hide;
                btnDeselectAll.Hide;
                btnChange.Hide;
                btnCancel.Hide;
        end;

        pnlCount.Caption := IntToStr(iChecked);
end;

procedure TTagForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        MainForm.lblStatus.Caption:='Gotowe...';
        MainForm.lblProgress.Caption:='0%';
        MainForm.pbStatus.Position:=0;
end;

procedure TTagForm.btnCancelClick(Sender: TObject);
begin
        Tag:=2;
        Close;
end;

procedure TTagForm.fListClick(Sender: TObject);
begin
        UpdateFields();
end;

procedure TTagForm.btnSelectAllClick(Sender: TObject);
var
        a: Integer;
begin
        for a:=0 to fList.Items.Count-1 do fList.Items[a].Checked := True;
        UpdateFields();
end;

procedure TTagForm.btnDeselectAllClick(Sender: TObject);
var
        a: Integer;
begin
        for a:=0 to fList.Items.Count-1 do fList.Items[a].Checked := False;
        UpdateFields();
end;

procedure TTagForm.btnChangeClick(Sender: TObject);
var
        a: Integer;
begin
        for a:=0 to fList.Items.Count-1 do fList.Items[a].Checked := not fList.Items[a].Checked;
        UpdateFields();
end;

procedure TTagForm.btnCloseAndEditClick(Sender: TObject);
begin
        if fList.Selected = nil then
        begin
                Application.MessageBox('Najpierw zaznacz na liœcie utwór, którego tagi ID3Tag chcesz edytowaæ.','Uwaga!',MB_OK+MB_ICONWARNING+MB_DEFBUTTON1);
                exit;
        end;
        
        MainForm.lbFiles.ItemIndex := fList.Selected.Index;
        MainForm.lbFilesChange(self);
        MainForm.pcMain.ActivePageIndex := 0;
        MainForm.pcMainChange(self);
        Tag := 2;
        Close;
end;

procedure TTagForm.btnOKClick(Sender: TObject);
begin
        if pnlMode.Caption <> 'Result' then if Application.MessageBox('Tagi ID3Tag wszystkich zaznaczonych pozycji zostan¹ zast¹pione wartoœciami wpisanymi w pola poni¿ej listy. Czy na pewno kontynuowaæ?'+chr(13)+''+chr(13)+'Raz rozpoczêty, nie mo¿e zostaæ zatrzymany, a jego wyniki s¹ nieodwracalne.','Potwierdzenie...',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = IDNO then exit;
        Tag := 1;
        Close;
end;

procedure TTagForm.FormShow(Sender: TObject);
begin
        Tag := 2;
end;

procedure TTagForm.fListDblClick(Sender: TObject);
begin
        if fList.Selected = nil then exit;

        btnGetID3TagClick(self);
end;

function TTagForm.GetListItemIndexByCaption(Caption: String): Integer;
var
        a: Integer;
begin
        Result := -1;

        for a := 0 to fList.Items.Count - 1 do
        begin
                if fList.Items[a].Caption = Caption then Result := a;
        end;
end;

procedure TTagForm.btnGetID3TagClick(Sender: TObject);
var
        mp3: TMPEGAudio;
begin
        if fList.Selected = nil then
        begin
                Application.MessageBox('Najpierw zaznacz na liœcie utwór, którego tagi ID3Tag chcesz odczytaæ.','Uwaga!',MB_OK+MB_ICONWARNING+MB_DEFBUTTON1);
                exit;
        end;

        mp3 := TMPEGAudio.Create;
        mp3.FileName := MainForm.lbFiles.Items[fList.Selected.Index];
        eTitle.Text := ClearWrongTag(mp3.Title);
        eAuthor.Text:=ClearWrongTag(mp3.Artist);
        eYear.Text:=ClearWrongTag(mp3.Year);
        eAlbum.Text:=ClearWrongTag(mp3.Album);

        if mp3.Genre > MaxStyles then
                eGenreList.ItemIndex := eGenreList.Items.Count-1
        else
                eGenreList.ItemIndex := mp3.Genre;

        eComment.Text:=ClearWrongTag(mp3.Comment);
        eTrack.Text:=IntToStr(mp3.Track);

        if mp3.Duration < 3600 then
                eLength.Text := FormatDateTime('nn:ss', mp3.DurationTime) + ' (' + IntToStr (mp3.Duration) + ' sek.)'
        else
                eLength.Text := FormatDateTime('hh:nn:ss', mp3.DurationTime) + ' (' + IntToStr (mp3.Duration) + ' sek.)';

        mp3.Free;
end;

procedure TTagForm.FormCreate(Sender: TObject);
var
        a: Integer;
begin
        for a := 0 to MaxStyles do eGenreList.Items.Add(MusicStyle[a]);
        eGenreList.Items.Add('(Nie znany)');

        btnClearAllClick(self);
end;

procedure TTagForm.btnClearAllClick(Sender: TObject);
begin
        eTitle.Text := '';
        eAuthor.Text := '';
        eYear.Text := '';
        eAlbum.Text := '';
        eGenreList.ItemIndex := eGenreList.Items.Count-1;
        eComment.Text := '';
        eTrack.Text := '';
        eLength.Text := '00:00 (0 sek.)';
end;

procedure TTagForm.CheckBoxClick(Sender: TObject);
var
        sName: String;
        Temp: TComponent;
        I: Integer;
begin
        sName := 'e' + Copy((Sender as TCheckBox).Name, 4, Length((Sender as TCheckBox).Name));

        for I := TagForm.ComponentCount - 1 downto 0 do
        begin
                Temp := TagForm.Components[I];

                if Temp.Name = sName then
                begin
                        if (Temp is TEdit) then
                        begin
                                (Temp as TEdit).Enabled := (Sender as TCheckBox).Checked;
                                (Temp as TEdit).ReadOnly := not (Sender as TCheckBox).Checked;

                                if (Sender as TCheckBox).Checked then
                                begin
                                        (Temp as TEdit).Color := clWindow;
                                        (Temp as TEdit).SetFocus;
                                        (Temp as TEdit).SelectAll;
                                end
                                else (Temp as TEdit).Color := clBtnFace;
                        end;

                        if (Temp is TComboBox) then
                        begin
                                (Temp as TComboBox).Enabled := (Sender as TCheckBox).Checked;

                                if (Sender as TCheckBox).Checked then
                                begin
                                        (Temp as TComboBox).Color := clWindow;
                                        (Temp as TComboBox).SetFocus;
                                end
                                else (Temp as TComboBox).Color := clBtnFace;
                        end;
                end;
        end;

        chbTrackNum.Enabled := chbTrack.Checked;
        chbAddBrackets.Enabled := chbNameNum.Checked and chbTitle.Checked;
        chbNameNum.Enabled := chbTitle.Checked;

        UpdateFields();
end;

end.
