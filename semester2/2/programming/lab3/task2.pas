Program lab3_2;
Var i:real;
    s:real;
Begin
  i := 1.0;
  while (i <= 1.007) do begin
    s := 1 / exp(i * ln(2));
    //writeln(i, '_' , s);
    writeln('s', i, ' = ', s:6:4);
    i += 0.001;
  end;
End.