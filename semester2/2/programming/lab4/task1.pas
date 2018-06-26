Program lab4_1;
Var counter:integer;
    space:string;
    x, y:real;
Begin
  space := '';
  writeln('.-------------------------------.');
  writeln('|______x________' , '|______y________|');
  for counter := 1 to 50 do begin
    x := x + 0.001;
    y := ((2 * x + 1) / exp(2 * ln(x)));
    if (counter <= 9) then space := ' ' else space := '';
    writeln('|  x' , counter , space ,' =  ' , x , ' |  y' , counter , '  =  ' , y:4:3 , space , ' |');
  end;
  writeln('`---------------------------------`');
End.