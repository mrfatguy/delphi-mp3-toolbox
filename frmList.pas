unit frmList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, CheckLst, ExtCtrls, Buttons;

type
  TListForm = class(TForm)
    btnOK: TButton;
    btnCancel: TButton;
    lblFolder: TLabel;
    lblInfo: TLabel;
    fList: TCheckListBox;
    lblMainInfo: TLabel;
    pnlMode: TPanel;
    pnlCount: TPanel;
    btnSelectAll: TBitBtn;
    btnDeselectAll: TBitBtn;
    btnChange: TBitBtn;
    btnCloseAndEdit: TBitBtn;

    procedure UpdateFields;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelClick(Sender: TObject);
    procedure fListClick(Sender: TObject);
    procedure fListClickCheck(Sender: TObject);
    procedure btnSelectAllClick(Sender: TObject);
    procedure btnChangeClick(Sender: TObject);
    procedure btnDeselectAllClick(Sender: TObject);
    procedure btnCloseAndEditClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure fListDblClick(Sender: TObject);
    procedure fListDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ListForm: TListForm;

implementation

uses frmMain;

{$R *.DFM}

procedure TListForm.UpdateFields();
var
        a, iChecked, iTotal: Integer;
begin
        if pnlMode.Caption<>'Result' then
        begin
                iChecked:=0;
                iTotal:=fList.Items.Count;
                for a:=0 to iTotal-1 do if fList.Checked[a] then Inc(iChecked);

                lblFolder.Caption:='Wybrany folder: '+MainForm.lbFiles.Directory;
                lblInfo.Caption:='Wszystkich pozycji na liœcie: '+IntToStr(iTotal)+'. Wybrano do automatycznej zmiany nazwy: '+IntToStr(iChecked)+'. Liczba pozycji, które nie bêd¹ zmienione: '+IntToStr(iTotal-iChecked)+'.';
                lblMainInfo.Caption:='Poni¿sza lista zawiera propozycje automatycznej zmiany nazw plików w wybranym folderze. Odznaczone (nie bêd¹ zmieniane) zosta³y te po- zycje, których ID3Tag zawiera niepe³ne dane lub w przypadku, gdy zmiana spowodowa³aby zast¹pienie istniej¹cego pliku.';
                btnOK.Caption:='Rozpocznij zmianê';
                ListForm.Caption:='Lista plików przeznaczonych do zmiany';

                btnSelectAll.Show;
                btnDeselectAll.Show;
                btnChange.Show;
                btnCancel.Show;
                btnCloseAndEdit.Show;

                if iChecked=0 then btnOK.Enabled:=False else btnOK.Enabled:=True;
        end
        else
        begin
                iChecked:=0;
                iTotal:=fList.Items.Count;
                for a:=0 to iTotal-1 do if fList.Checked[a] then Inc(iChecked);

                lblFolder.Caption:='Wybrany folder: '+MainForm.lbFiles.Directory;
                lblMainInfo.Caption:='Poni¿sza lista zawiera wyniki przeprowadzonego procesu automatycznej zmiany nazwy. Nazwy plików zaznaczonych zosta³y zmienione we- d³ug podanego wzorca. Pozycje odznaczone - to pliki, których nazwy z ró¿nych powodów nie mog³y zostaæ zmienione.';
                btnOK.Caption:='Zamknij okno';
                ListForm.Caption:='Wyniki procesu automatycznej zmiany';

                if iTotal=iChecked then
                        lblInfo.Caption:='Nazwy wszystkich '+IntToStr(iTotal)+' wybranych plików zosta³y zmienione.'
                else
                        lblInfo.Caption:='Spoœród wszystkich '+IntToStr(iTotal)+' plików, automatyczna zmiana nazwy powiod³a siê w przypadku '+IntToStr(iChecked)+'. Pozosta³e '+IntToStr(iTotal-iChecked)+' nie zosta³y zmienione.';

                btnSelectAll.Hide;
                btnDeselectAll.Hide;
                btnChange.Hide;
                btnCancel.Hide;
                btnCloseAndEdit.Hide;
        end;

        pnlCount.Caption := IntToStr(iChecked);
end;

procedure TListForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        MainForm.lblDesc.Caption:='Gotowe...';
        MainForm.lblGlobal.Caption:='0%';
        MainForm.pbGlobal.Position:=0;
end;

procedure TListForm.btnCancelClick(Sender: TObject);
begin
        Tag:=2;
        Close;
end;

procedure TListForm.fListClick(Sender: TObject);
begin
        UpdateFields();
end;

procedure TListForm.fListClickCheck(Sender: TObject);
begin
        UpdateFields();

        fList.Invalidate;
end;

procedure TListForm.btnSelectAllClick(Sender: TObject);
var
        a: Integer;
begin
        for a := 0 to fList.Items.Count-1 do if fList.ItemEnabled[a] then fList.Checked[a] := True;

        UpdateFields();
        fList.Invalidate;
end;

procedure TListForm.btnDeselectAllClick(Sender: TObject);
var
        a: Integer;
begin
        for a := 0 to fList.Items.Count-1 do if fList.ItemEnabled[a] then fList.Checked[a] := False;

        UpdateFields();
        fList.Invalidate;
end;

procedure TListForm.btnChangeClick(Sender: TObject);
var
        a: Integer;
begin
        for a := 0 to fList.Items.Count-1 do if fList.ItemEnabled[a] then fList.Checked[a] := not fList.Checked[a];

        UpdateFields();
        fList.Invalidate;
end;

procedure TListForm.btnCloseAndEditClick(Sender: TObject);
begin
        if fList.ItemIndex=-1 then
        begin
                Application.MessageBox('Nie zaznaczono ¿adnej pozycji!'+chr(13)+''+chr(13)+'Najpierw zaznacz na liœcie plik, którego ID3Tag chcesz edytowaæ.','Uwaga!',MB_OK+MB_ICONWARNING+MB_DEFBUTTON1);
                exit;
        end;
        MainForm.lbFiles.ItemIndex:=fList.ItemIndex;
        MainForm.lbFilesChange(self);
        MainForm.pcMain.ActivePageIndex:=0;
        MainForm.pcMainChange(self);
        Tag:=2;
        Close;
end;

procedure TListForm.btnOKClick(Sender: TObject);
begin
        if pnlMode.Caption<>'Result' then if Application.MessageBox('Czy na pewno rozpocz¹æ proces automatycznej zmiany?'+chr(13)+''+chr(13)+'Raz rozpoczêty, nie mo¿e zostaæ zatrzymany, a jego wyniki s¹ nieodwracalne.','Potwierdzenie...',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDNO then exit;
        Tag:=1;
        Close;
end;

procedure TListForm.FormShow(Sender: TObject);
begin
        Tag:=2;
end;

procedure TListForm.fListDblClick(Sender: TObject);
begin
        if (fList.ItemIndex = -1) or (pnlMode.Caption = 'Result') then exit;

        btnCloseAndEditClick(self);
end;

procedure TListForm.fListDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
begin
        fList.Canvas.FillRect(Rect);
        if fList.Checked[Index]=False then fList.Canvas.Font.Style:=[fsBold];
        fList.Canvas.TextOut(Rect.Left+1, Rect.Top, fList.Items[Index]);
end;

end.
