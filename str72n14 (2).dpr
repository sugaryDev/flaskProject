program Project1;
{����� �������� ������������������ ��������, ����� ������� �� ��������� 80. 
����������� �� ������� ����� (� ���������� �������), ������� ����������� � �������� ������������������.}
{$APPTYPE CONSOLE}

uses
  SysUtils,
  windows;

const n = 10;
var c:char;
    i,k:integer;
    a:array['�'..'�'] of boolean;
    fl,r,yo:boolean;
    w:array[0..32] of char = ('�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�');
begin
 fl:=true; i:=0; yo:=false;
 SetConsoleCP(1251);
 SetConsoleOutputCP(1251);
 for c := '�' to '�' do a[c] := false;
 writeln('������� ������������������ ��������:');
  while (i<>n) and (not eoln) do
  begin
   r:=false;
   inc(i);
   read(c);
   for k:=0 to 32 do if (c=w[k]) or (c=chr(ord(w[k])-(ord('�')-ord('�')))) then r:=true;
   if r then
   begin
    if c >= '�' then c:=chr(ord(c)-(ord('�')-ord('�')));
    a[c] := true;
    if (c='�') or (c='�') then yo:=true;
   end;
  end;
  read(c);
  if c<>#13 then writeln('����� ������ ������ ',n,' ��������, � �������� ',n,' �������� ��������� �����:');
  readln;
 writeln('������� �����, ������������ � ������:');
 for c:='�' to '�' do if a[c]then
  begin
  write(c:2);
  fl:=false;
  end;
 if yo then writeln('�':2);
 if fl=true then writeln('����� ���');
 readln;
end.
