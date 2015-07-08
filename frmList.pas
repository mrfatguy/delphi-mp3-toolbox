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

                lblFolder.Caption:='Selected folder: '+MainForm.lbFiles.Directory;
                lblInfo.Caption:='All items on the list: '+IntToStr(iTotal)+'. Selected for an automated name change: '+IntToStr(iChecked)+'. Number of items, that will not be changed: '+IntToStr(iTotal-iChecked)+'.';
                lblMainInfo.Caption:='This list contains suggestions for an automated name change for files in selected folder. When ID3Tag is empty or contains not enough data or when automated name change would overwrite an existing file -- such items are unselected and will not be changed.';
                btnOK.Caption:='Start';
                ListForm.Caption:='List of files to be changed';

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

                lblFolder.Caption:='Selected folder: '+MainForm.lbFiles.Directory;
                lblMainInfo.Caption:='This list contains a result of automated filename change, using selected pattern. Unchecked items are files, which name could not be changed, for various reasons.';
                btnOK.Caption:='Close window';
                ListForm.Caption:='Result of automated name change';

                if iTotal=iChecked then
                        lblInfo.Caption:='Names of all '+IntToStr(iTotal)+' files were changed.'
                else
                        lblInfo.Caption:='Out of '+IntToStr(iTotal)+' files automated filename change was successfull in case of '+IntToStr(iChecked)+' files. Names of remaining '+IntToStr(iTotal-iChecked)+' files were not changed.';

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
        MainForm.lblDesc.Caption:='Ready...';
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
                Application.MessageBox('No selection!'+chr(13)+''+chr(13)+'Select file, which ID3Tag you want to edit','Warning!',MB_OK+MB_ICONWARNING+MB_DEFBUTTON1);
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
        if pnlMode.Caption<>'Result' then if Application.MessageBox('Are you sure, that you want to start automated filename change process?'+chr(13)+''+chr(13)+'Once started, it can not be stopped and changes are permanent','Confirm...',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDNO then exit;
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
