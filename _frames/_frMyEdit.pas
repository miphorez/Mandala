unit _frMyEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Buttons, ExtCtrls, Menus, uCode, uConst;

type
  Tfr_MyEdit = class(TFrame)
    Panel35: TPanel;
    p_name: TPanel;
    Panel37: TPanel;
    p_Edit: TPanel;
    btn_name: TSpeedButton;
    pp_Edit: TPanel;
    p_t: TPanel;
    e_name: TEdit;
    p_l: TPanel;
    ppp_Edit: TPanel;
    p_comment: TPanel;
    Panel1: TPanel;
    p_text: TPanel;
    procedure e_nameClick(Sender: TObject);
    procedure e_nameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_nameClick(Sender: TObject);
  private
    flEdit: boolean;
    flDel, flAutoSelect: boolean;
    { Private declarations }
  public
    { Public declarations }
    OldEdit:string;
    FalseClick: boolean;
    NumCode: TCharCode;
    FocusComp: TWinControl;
    formHandle: THandle;
    typeEdit: integer;
    procedure ResetEdit(flReset: boolean);
    procedure SetBtn(wName:integer; tName:string; fMode: boolean;
              fComp: TWinControl; frmHandle: THandle; tEdit:integer);
    procedure SetEdit(eName:string); overload;
    function GetStr: string;
  end;

implementation
{$R *.dfm}

{ Tfr_MyEdit }

function Tfr_MyEdit.GetStr: string;
begin
result:= e_name.Text;
end;

procedure Tfr_MyEdit.btn_nameClick(Sender: TObject);
begin
NumCode:= GetNumCode(e_name.Text);
p_text.Caption:= NumCode.CodeString;
ResetEdit(false);
FocusComp.SetFocus;
end;

procedure Tfr_MyEdit.e_nameClick(Sender: TObject);
begin
if e_name.Color = clWhite then Exit;
  SendMessage(formHandle, WM_EDIT_CMD, CMD_EditClick, typeEdit);
  flEdit:= true;
  p_t.Color:= clWhite;
  p_l.Color:= clWhite;
  e_name.Color:= clWhite;
  OldEdit:= e_name.Text;
  btn_name.Visible:= true;
  e_name.SetFocus;
end;

procedure Tfr_MyEdit.e_nameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//Enter
   if Ord(Key)=13 then begin
      btn_nameClick(self);
      SendMessage(formHandle, WM_EDIT_CMD, CMD_EditButton, 0);
   end;
//Escape
   if Ord(Key)=27 then begin
      //стать в начало строки
      keybd_event(VK_HOME, 0, 0, 0);
      keybd_event(VK_HOME, 0, KEYEVENTF_KEYUP, 0);
      Application.ProcessMessages;
      ResetEdit(true);
      FocusComp.SetFocus;
      SendMessage(formHandle, WM_EDIT_CMD, CMD_EditClick, 0);
   end;
//del, back
   if ((Ord(Key)=46)or(Ord(Key)=8))and flAutoSelect then begin
      flDel:= true;
   end;
end;

procedure Tfr_MyEdit.ResetEdit(flReset: boolean);
begin
if FalseClick then Exit;
FalseClick:=true;
  p_t.Color:= $00C8D0D4;
  p_l.Color:= $00C8D0D4;
  e_name.Color:= $00C8D0D4;
  if (flReset and (OldEdit<>''))or
     (flReset and flEdit) then e_name.Text:= OldEdit;
  OldEdit:= '';
  flEdit:= false;
//  e_name.s
  btn_name.Visible:=false;
FalseClick:=false;
end;


procedure Tfr_MyEdit.SetBtn(wName: integer; tName: string; fMode: boolean;
          fComp: TWinControl; frmHandle: THandle; tEdit:integer);
begin
  //
FalseClick:=true;
  p_name.Width:= wName;
  p_name.Caption:= tName;
  e_name.Text:= '';
  flDel:= false;
  flAutoSelect:= false;
  flEdit:= false;
  FocusComp:= fComp;
  formHandle:= frmHandle;
  typeEdit:= tEdit;

  //вид шрифта
  if fMode then begin
     e_name.Font.Color:= clWindowText;
     e_name.Font.Style:= [];
  end else begin
     e_name.Font.Color:= $002E2E2E;
     e_name.Font.Style:= [fsBold];
  end;
ResetEdit(false);
FalseClick:=false;
end;



procedure Tfr_MyEdit.SetEdit(eName: string);
begin
  e_name.Text:= eName;
  btn_nameClick(self);
  SendMessage(formHandle, WM_EDIT_CMD, CMD_EditButton, 0);
end;


end.
