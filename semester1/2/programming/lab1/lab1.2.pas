program lab1_2;

uses crt;
var
    c, d, k, W: integer;
    Z, a, b: real;
begin
    write('k = ');
    readln(k);
    if (k = 1) then begin
        write('a = ');
        readln(a);
        write('b = ');
        readln(b);
        Z := a + sin(b);
        if (Z > 5) then writeln('Z = ', Z)
        else if (z <= 5) then writeln('Z = ', Z, ' a = ', a, ' b = ', b)
    end
    else if (k > 1) then begin
        write('c = ');
        readln(c);
        write('d = ');
        readln(d);
        W := sqr((k * c + 5 * d));
        writeln('c = ', c, ' d = ', d, ' k = ', k, ' W', W);
    end
end.