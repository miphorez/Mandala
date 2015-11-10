unit uXMLfile;
interface

uses
    XMLDoc, XMLIntf, Menus, SysUtils, uCode;

procedure CreateDataUserFile;
procedure LoadDataUser;
procedure SaveDataUser;
function GetNodeDataUser(iName: string): TCharCode;

implementation
uses
    uConst, frmMandala;

procedure LoadLevel_XMLDataUser(XMLNode:IXMLNODEList; NodeName: string);
var
  i,j: Integer;
  iXMLNode: IXMLNODEList;
begin
WITH frm_Mandala DO BEGIN
for i:=0 to XMLNode.Count-1 do begin
    if (XMLNode[i].NodeName = NodeName) then begin
       iXMLNode:= XMLNode[i].ChildNodes;
        //добавляем в лист бокс пользователей
       for j:=0 to iXMLNode.Count-1 do
           cb_ListUser.AddItem(iXMLNode[j].NodeName, nil);
//              fr_TabSheetDevice.AddToListMenu(iXMLNode[j].Attributes['caption'], true);
    end;
    if XMLNode[i].HasChildNodes  then
       LoadLevel_XMLDataUser(XMLNode[i].ChildNodes, NodeName);
end;
END;
end;

procedure LoadDataUser;
//загрузить список пользователей
begin
WITH frm_Mandala DO BEGIN
cb_ListUser.Clear;
cb_ListUser.AddItem('нет', nil);
XMLDoc.Active:= true;
LoadLevel_XMLDataUser(XMLDoc.ChildNodes, 'DataUser');
XMLDoc.Active:= false;
cb_ListUser.ItemIndex:=0;
END;
end;

procedure GetNode_XMLDataUser(XMLNode:IXMLNODEList; NodeName, iName: string; var iCode: TCharCode);
var
  i,j: Integer;
  iXMLNode: IXMLNODEList;
begin
WITH frm_Mandala DO BEGIN
for i:=0 to XMLNode.Count-1 do begin
    if (XMLNode[i].NodeName = NodeName) then begin
       iXMLNode:= XMLNode[i].ChildNodes;
        //ищем по списку пользователей
       for j:=0 to iXMLNode.Count-1 do
           if iXMLNode[j].NodeName = iName then begin
           try iCode.sF:=iXMLNode[j].Attributes['F']; except end;
           try iCode.sI:=iXMLNode[j].Attributes['I']; except end;
           try iCode.sO:=iXMLNode[j].Attributes['O']; except end;
           end;
    end;
    if XMLNode[i].HasChildNodes  then
       GetNode_XMLDataUser(XMLNode[i].ChildNodes, NodeName, iName, iCode);
end;
END;
end;

function GetNodeDataUser(iName: string): TCharCode;
//найти данные по имени пользователя
begin
ClrNumCode(result);
WITH frm_Mandala DO BEGIN
XMLDoc.Active:= true;
GetNode_XMLDataUser(XMLDoc.ChildNodes, 'DataUser', iName, result);
XMLDoc.Active:= false;
END;
end;

procedure CreateDataUserFile;
//загрузить пользовательское меню
var
   s:string;
   file_ptr: file;
begin
WITH frm_Mandala DO BEGIN
s:= DATA_FILE_USER;
if not FileExists(s) then begin
//создать файл данных ФИО
  {$I-}
   AssignFile(file_ptr,s);
   rewrite(file_ptr);
   closefile(file_ptr);
  {$I+}
  //создание шаблона XML-файла данных ФИО
  XMLDoc.XML.Clear;
  XMLDoc.XML.Add('<?xml version="1.0" encoding="windows-1251" ?>');
  XMLDoc.XML.Add('<!-- xml-файл данных ФИО -->');
  XMLDoc.XML.Add('<body>');
  XMLDoc.XML.Add('<DataUser>');
  XMLDoc.XML.Add('</DataUser>');
  XMLDoc.XML.Add('</body>');
  XMLDoc.XML.SaveToFile(s);
end;
XMLDoc.FileName:= s;
END;
end;

procedure SaveLevel_XMLdataUser(XMLNode:IXMLNODEList);
var
  i: Integer;
  tNode: IXMLNode;
  s: string;
begin
WITH frm_Mandala DO BEGIN
for i:=0 to XMLNode.Count-1 do begin
    if (XMLNode[i].NodeName = 'DataUser') then begin
       //добавить текущие данные
       s:= fr_F.NumCode.InpStr + '_' +
           fr_I.NumCode.InpStr + '_' +
           fr_O.NumCode.InpStr;
       tNode:= XMLNode[i].AddChild(s,-1);
       tNode.Attributes['F']:= fr_F.NumCode.InpStr;
       tNode.Attributes['I']:= fr_I.NumCode.InpStr;
       tNode.Attributes['O']:= fr_O.NumCode.InpStr;
    end;
    if XMLNode[i].HasChildNodes  then
       SaveLevel_XMLdataUser(XMLNode[i].ChildNodes);
end;
END;
end;

procedure SaveDataUser;
//сохранить введенные данные
begin
WITH frm_Mandala DO BEGIN
XMLDoc.Active:= true;
SaveLevel_XMLdataUser(XMLDoc.ChildNodes);
XMLDoc.Active:= false;
END;
end;

end.
