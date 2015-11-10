unit frmMandala;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, _frMyEdit, StdCtrls, uConst, uCode, xmldom, XMLIntf,
  msxmldom, XMLDoc, Buttons, _frMyMemo;

type
  Tfrm_Mandala = class(TForm)
    p_l: TPanel;
    p_r: TPanel;
    p_b: TPanel;
    p_t: TPanel;
    p_c: TPanel;
    GroupBox1: TGroupBox;
    p_ll: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    fr_I: Tfr_MyEdit;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    btn_Cancel: TButton;
    Panel9: TPanel;
    fr_O: Tfr_MyEdit;
    fr_F: Tfr_MyEdit;
    p_person: TPanel;
    Panel1: TPanel;
    p_NumPerson: TPanel;
    XMLDoc: TXMLDocument;
    Panel10: TPanel;
    cb_ListUser: TComboBox;
    Panel11: TPanel;
    btn_name: TSpeedButton;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    fr_Descr: Tfr_MyMemo;
    procedure WMEditCmd(var msg: TMessage); message WM_EDIT_CMD;
    procedure FormShow(Sender: TObject);
    procedure btn_CancelClick(Sender: TObject);
    procedure btn_nameClick(Sender: TObject);
    procedure cb_ListUserChange(Sender: TObject);
  private
    procedure AllClear;
    { Private declarations }
  public
    { Public declarations }
    FalseClick: boolean;
    procedure AllReset;
  end;

var
  frm_Mandala: Tfrm_Mandala;

implementation
uses
    uXMLfile;

{$R *.dfm}

procedure Tfrm_Mandala.AllClear;
begin
AllReset;
fr_F.p_text.Caption:='';
fr_I.p_text.Caption:='';
fr_O.p_text.Caption:='';
p_NumPerson.Caption:='';
end;

procedure Tfrm_Mandala.AllReset;
begin
fr_I.ResetEdit(false);
fr_O.ResetEdit(false);
fr_F.ResetEdit(false);
fr_Descr.MemoClear;
end;

procedure Tfrm_Mandala.btn_CancelClick(Sender: TObject);
begin
Close;
end;

procedure Tfrm_Mandala.btn_nameClick(Sender: TObject);
begin
SaveDataUser;
end;

procedure Tfrm_Mandala.cb_ListUserChange(Sender: TObject);
var
    iCode: TCharCode;
begin
if FalseClick then Exit;
if cb_ListUser.ItemIndex>0 then begin
   iCode:= GetNodeDataUser(cb_ListUser.Items[cb_ListUser.ItemIndex]);
   fr_F.SetEdit(iCode.sF);
   fr_I.SetEdit(iCode.sI);
   fr_O.SetEdit(iCode.sO);
end else AllClear;
btn_Cancel.SetFocus;
end;

procedure Tfrm_Mandala.FormShow(Sender: TObject);
var Layout: array [0.. KL_NAMELENGTH] of char;
begin
FalseClick:= true;
fr_I.SetBtn(50,'»м€', false, TWinControl(btn_Cancel), Handle, Ord('I'));
fr_O.SetBtn(50,'ќтчество', false, TWinControl(btn_Cancel), Handle, Ord('O'));
fr_F.SetBtn(50,'‘амили€', false, TWinControl(btn_Cancel), Handle, Ord('F'));
fr_Descr.SetBtn(TWinControl(btn_Cancel));
AllReset;
LoadKeyboardLayout(StrCopy(Layout, '00000419'), KLF_ACTIVATE);
//en: LoadKeyboardLayout(StrCopy(Layout, '00000409'), KLF_ACTIVATE);
//next: ActivateKeyboardLayout(HKL_NEXT,0);
CreateDataUserFile;
LoadDataUser;
FalseClick:= false;
end;

procedure Tfrm_Mandala.WMEditCmd(var msg: TMessage);
var i:integer;
    iCode: TCharCode;
begin
Case msg.wParam of
  CMD_EditClick: begin
                 AllReset;
      //написать по€снени€ к полю
      if msg.lParam = ord('F') then begin
         fr_Descr.SetTitle('Ёгрегор личности:');
         fr_Descr.SetEdit(sF[fr_F.NumCode.CodeResult]);
      end else
      if msg.lParam = ord('I') then begin
         fr_Descr.SetTitle('÷ель личности:');
         fr_Descr.SetEdit(sI);
      end else
      if msg.lParam = ord('O') then begin
         fr_Descr.SetTitle('‘орма адаптации личности:');
         fr_Descr.SetEdit(sO[fr_O.NumCode.CodeResult]);
      end else
      begin end;
  end;
  CMD_EditButton: Begin
      //пересчитать код личности
      iCode.CodeArray[1]:= fr_I.NumCode.CodeResult;
      iCode.CodeArray[2]:= fr_O.NumCode.CodeResult;
      iCode.CodeArray[3]:= fr_F.NumCode.CodeResult;
      iCode.CodeCount:=3;
//составл€ем строку сода
  for i:=1 to iCode.CodeCount do begin
      if iCode.CodeArray[i] = 0 then
      iCode.CodeString:= iCode.CodeString + '...'+'+' else
      iCode.CodeString:= iCode.CodeString + IntToStr(iCode.CodeArray[i])+'+';
  end;
//убираем последний +
  Delete(iCode.CodeString,Length(iCode.CodeString),1);
//рассчитываем результирующий код строки
  iCode.CodeResult:= GetCodeResult(iCode);
  if iCode.CodeResult<>0 then
     iCode.CodeString:= iCode.CodeString + ' = '+ IntToStr(iCode.CodeResult) +
     ' ('+Planets[iCode.CodeResult]+')';
  p_NumPerson.Caption:= iCode.CodeString;
  end;
End;
btn_Cancel.SetFocus;
msg.Result := 1;
end;

end.
