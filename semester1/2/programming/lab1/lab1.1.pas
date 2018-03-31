Program lab1_1;
Uses crt;
Var C:real;
Begin
  Write('C = ');
  Readln(C);
  if (C > 0) and (C < exp(-9 * ln(10))) then begin
    C := C * exp(12 * ln(10));
    Writeln('C = ',C:6:0,'ïÔ');
  end
  else if (C >= exp(-9 * ln(10))) and (C < exp(-6 * ln(10))) then begin
    C := C * exp(9 * ln(10));
    Writeln('C = ',C:6:0,'íÔ');
  end
  else if (C >= exp(-6 * ln(10))) and (C < 1) then begin
    C := C * exp(6 * ln(10));
    Writeln('C = ',C:6:0,'ìêÔ');
  end
  else 
    Writeln('C = ',C:6:0,'Ô');
End.