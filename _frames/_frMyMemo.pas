unit _frMyMemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, Buttons, StdCtrls, ExtCtrls, DB, DBTables, ExtDlgs;

type
  Tfr_MyMemo = class(TFrame)
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    memo: TMemo;
    p_top: TPanel;
    Panel1: TPanel;
    p_memo: TPanel;
    p_title: TPanel;
    procedure memoClick(Sender: TObject);
    procedure memoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    OldEdit:string;
    FocusComp: TWinControl;
    GLineNum: integer;
    EditMode, ModalMode: boolean;
    flEdit: boolean;
    Integer_ID: integer;
    MemoStringMode, BigSizeMode, BoldSizeMode, ScrollMode: boolean;
  public
    { Public declarations }
    FalseClick: boolean;
    procedure ScrollControl;
    procedure SetModalMode(flMode: boolean);
    procedure SetEditMode(flEdit: boolean);
    procedure SetBtn(fComp: TWinControl);
    procedure AddString(memostr:string);
    procedure ChangeString(memostr: string);
    procedure SetBigSize;
    procedure SetBoldSize;
    procedure SetStringMode;
    procedure SetScrollMode(mode: boolean);
    procedure SetID(ID: integer);
    procedure SetEdit(istr: String); overload;
    procedure SetEdit(strlst: TMemoField); overload;
    procedure ResetEdit(flReset: boolean);
    procedure SetTitle(istr: String);
    procedure MemoClear;
  end;

implementation

{$R *.dfm}

{ Tfr_MyMemo }

procedure Tfr_MyMemo.MemoClear;
begin
  Memo.Clear;
  p_title.Caption:='';
end;

procedure Tfr_MyMemo.SetEdit(istr: String);
begin
  Memo.Clear;
  if istr <> '' then begin
    Memo.Text := iStr;
  end;
  ScrollControl;
end;

procedure Tfr_MyMemo.SetEdit(strlst: TMemoField);
var
   MS: TMemoryStream;
   iString: string;
begin
  MS := TMemoryStream.Create;
  strlst.SaveToStream(MS);
  Memo.Clear;
  if MS.Size > 0 then begin
    iString := WideCharLenToString(PWideChar(MS.Memory), MS.Size);
    SetLength(iString, MS.Size div 2);
    Memo.Text := iString;
  end;
  MS.Free;
  ScrollControl;
end;


procedure Tfr_MyMemo.ChangeString(memostr: string);
begin
Memo.Lines.Strings[GLineNum]:=memostr;
HideCaret(Memo.Handle);
end;

procedure Tfr_MyMemo.memoClick(Sender: TObject);
var s: string;
begin
if memo.Color = clWhite then Exit;
if not EditMode then begin
   s:= FocusComp.Name;
   FocusComp.SetFocus;
   Exit;
end;
  flEdit:= true;
  memo.Color:= clWhite;
  OldEdit:= memo.Lines.Text;

  memo.SetFocus;
end;

procedure Tfr_MyMemo.memoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//Escape
   if Ord(Key)=27 then begin
      //стать в начало строки
      keybd_event(VK_CONTROL, 0, 0, 0);
      keybd_event(VK_HOME, 0, 0, 0);
      keybd_event(VK_CONTROL, 0, KEYEVENTF_KEYUP, 0);
      keybd_event(VK_HOME, 0, KEYEVENTF_KEYUP, 0);
      Application.ProcessMessages;
   end;
end;

procedure Tfr_MyMemo.SetEditMode(flEdit: boolean);
begin
  EditMode:= flEdit;
end;

procedure Tfr_MyMemo.SetModalMode(flMode: boolean);
begin
  ModalMode:= flMode;
end;

procedure Tfr_MyMemo.AddString(memostr: string);
begin
Memo.Lines.Add(memostr);
HideCaret(Memo.Handle);
GLineNum:= Memo.Perform(EM_LINEFROMCHAR, Memo.SelStart,0);
end;

procedure Tfr_MyMemo.SetID(ID: integer);
begin
Integer_ID:= ID;
end;

procedure Tfr_MyMemo.ScrollControl;
begin
if (memo.Lines.Count>0)and(ScrollMode) then
   memo.ScrollBars:= ssVertical else
   memo.ScrollBars:= ssNone;
end;

procedure Tfr_MyMemo.SetScrollMode(mode: boolean);
begin
ScrollMode:= mode;
end;

procedure Tfr_MyMemo.SetStringMode;
begin
//режим одной строки, ограниченной до 255
MemoStringMode:= true;
end;

procedure Tfr_MyMemo.SetTitle(istr: String);
begin
p_title.Caption:= iStr;
end;

procedure Tfr_MyMemo.SetBigSize;
begin
BigSizeMode:= true;
memo.Font.Size:= 10;
end;

procedure Tfr_MyMemo.SetBoldSize;
begin
BoldSizeMode:=true;
memo.Font.Style:= [fsBold];
end;

procedure Tfr_MyMemo.SetBtn(fComp: TWinControl);
begin
EditMode:= false;
ModalMode:= false;
flEdit:= false;
MemoStringMode:= false;
BigSizeMode:= false;
BoldSizeMode:= false;
ScrollMode:= false;
FalseClick:= true;
  p_title.Caption:= '';
  FocusComp:= fComp;
OldEdit:= '';
FalseClick:= false;
ResetEdit(false);
Memo.Clear;
end;

procedure Tfr_MyMemo.ResetEdit(flReset: boolean);
begin
if FalseClick then Exit;
FalseClick:=true;
  memo.Color:= $00C8D0D4;
  if flReset and (OldEdit<>'') then memo.Text:= OldEdit;
  OldEdit:= '';
FocusComp.SetFocus;
FalseClick:=false;
end;

end.
