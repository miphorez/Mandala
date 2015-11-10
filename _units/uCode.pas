unit uCode;
interface

uses
  SysUtils;

const
  CharCode: array [1..4,1..9] of char = (
  ('А','Б','В','Г','Д','Е','Ё','Ж','З'),
  ('И','Й','К','Л','М','Н','О','П','Р'),
  ('С','Т','У','Ф','Х','Ц','Ч','Ш','Щ'),
  ('Ъ','Ы','Ь','Э','Ю','Я',' ',' ',' ')
  );
  Planets: array [1..9] of string = (
  'Солнце',
  'Луна',
  'Марс',
  'Меркурий',
  'Юпитер',
  'Венера',
  'Сатурн',
  'Уран',
  'Нептун'
  );

type
  TCharCode=packed record
     InpStr: string;
     sF, sI, sO: string;
     CodeArray: array [1..255] of integer;
     CodeString: string;
     CodeCount:integer;
     CodeResult:integer;
  end;


function GetNumCode(ItemStr: string): TCharCode;
function GetCodeResult(iCharCode: TCharCode): integer;
procedure ClrNumCode(var iCode: TCharCode);

implementation

procedure ClrNumCode(var iCode: TCharCode);
var i: Integer;
begin
for i:=1 to 255 do iCode.CodeArray[i]:= 0;
iCode.CodeString:='';
iCode.CodeResult:=0;
iCode.CodeCount:=0;
iCode.InpStr:= '';
iCode.sF:='';iCode.sI:='';iCode.sO:='';
end;

{Удалить пробелы}
function DelAllSpace(ItemStr:string): string;
var
  i: Integer;
  yes: boolean;
begin
repeat
  yes:= false;
  for i:=1 to Length(ItemStr) do
   if ItemStr[i]=' ' then begin
      Delete(ItemStr,i,1);
      yes:= true;
      break;
   end;
until not yes;
Result:= ItemStr;
end;

function GetCharCode(ItemChar: char): integer;
var
  i, j: Integer;
begin
result:=0;
  for i:=1 to 4 do
      for j:=1 to 9 do if CharCode[i,j] = ItemChar then begin
        result:= j;
        Exit;
      end;
end;

function GetCodeResult(iCharCode: TCharCode): integer;
var
  i,x: Integer;
  iRes: integer;
  sRes: string;
begin
iRes:=0;
  for i:=1 to iCharCode.CodeCount do
      iRes:= iRes+iCharCode.CodeArray[i];
  sRes:= IntToStr(iRes);
  while Length(sRes)>1 do begin
        x:=0;
        for i:=1 to Length(sRes) do x:= x + StrToInt(sRes[i]);
        sRes:= IntToStr(x);
  end;
result:= StrToInt(sRes);
end;

function GetNumCode(ItemStr: string): TCharCode;
var
  i: Integer;
  s: string;
begin
ClrNumCode(result);
result.InpStr:= ItemStr;
//удаляем все пробелы
s:= DelAllSpace(ItemStr);
//переводим все буквы строки в верхний режим
s:= AnsiUpperCase(s);
//проверяем корректность строки
  if s='' then begin
         result.CodeString:='Ошибка! Пустая строка';
         Exit;
  end;
  for i:=1 to Length(s) do begin
      //если есть хоть один "левый символ" - выход из расчета
      if GetCharCode(s[i]) = 0 then begin
         result.CodeString:='Ошибка! Есть недопустимый символ';
         Exit;
      end;
  end;
//раскладываем строку в 9-ти арканную систему
  for i:=1 to Length(s) do begin
      result.CodeArray[i]:= GetCharCode(s[i]);
      inc(result.CodeCount);
  end;
//составляем строку сода
  for i:=1 to result.CodeCount do begin
      result.CodeString:= result.CodeString + IntToStr(result.CodeArray[i])+'+';
  end;
//убираем последний +
  Delete(result.CodeString,Length(result.CodeString),1);
//рассчитываем результирующий код строки
  result.CodeResult:= GetCodeResult(result);
  if result.CodeResult<>0 then
     result.CodeString:= result.CodeString + ' = '+ IntToStr(result.CodeResult) +
     ' ('+Planets[result.CodeResult]+')';
end;

end.
