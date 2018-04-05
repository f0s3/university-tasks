Program lab1_2;
Uses crt;
Var a,b,h,result:double;
Begin
    write('a = ');
    readln(a);
    write('b = ');
    readln(b);
    write('h = ');
    readln(h);
    result := (b*h+a*h)*2 + a*b;
    writeln(result);
End.