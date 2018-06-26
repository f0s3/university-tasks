Program lab3_1;
Var value, res:longint;
    userChoice:byte;
Begin
  res := 1;
  writeln('1. while (pre-conditional)');
  writeln('2. do-while (post-conditional)');
  read(userChoice);
  write('Enter value: ');
  read(value);
  if NOT(odd(value)) then value := value - 1;
  case (userChoice) of
    1:
      while (value >= 1) do begin
        res := res * value;
        value -= 2;
      end;
    2:
      repeat
        res := res * value;
        value -= 2;
      until (value <= 1);
  end;
  writeln(res);
End.

