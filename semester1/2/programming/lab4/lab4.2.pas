Program lab4_2;
uses crt;
var res,a,b,c:real;
procedure max(first,second:integer;var max:integer);
begin if(first > second) then max := first else max := second; end;
Begin
Write('a = ');
read(a);
writeln();
Write('b = ');
read(b);
writeln();
Write('c = ');
read(c);
res := (max(c, a+b) + max(a,b+c))/(1 + max(a+b*c,b+a*c));
Writeln('Result: ',res);
End.