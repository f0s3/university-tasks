Program lab4_2;
Var a,b,h:real;
function calculateWallsAndFloorArea(a,b,h:real):real;
begin
  calculateWallsAndFloorArea := ((b*h+a*h)*2 + a*b);
end;
Begin
  write('a = ');
  read(a);
  write('b = ');
  read(b);
  write('h = ');
  read(h);
  writeln(calculateWallsAndFloorArea(a,b,h));
End.