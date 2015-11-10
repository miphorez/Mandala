program Mandala;

uses
  Forms,
  frmMandala in 'frmMandala.pas' {frm_Mandala},
  _frMyEdit in '_frames\_frMyEdit.pas' {fr_MyEdit: TFrame},
  uCode in '_units\uCode.pas',
  uConst in '_units\uConst.pas',
  uXMLfile in '_units\uXMLfile.pas',
  _frMyMemo in '_frames\_frMyMemo.pas' {fr_MyMemo: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_Mandala, frm_Mandala);
  Application.Run;
end.
