Program lab2_2;
uses crt;
const x = 0.56;
const E = 2.718;
Var i,j:integer;
    res:array[1..12,4..11] of real;
    loopchoice:byte;
    
    function fact(n:integer):longint;
    begin
        if (n < 2) and (n > 0) then
            fact := 1
        else if (n > 0) then
            fact := n* fact(n-1);
    end;
Begin
    Writeln('1.For loop');
    Writeln('2.While-do loop');
    read(loopchoice);
    if (loopchoice = 1) then begin 
        for i := 1 to 12 do begin
            for j := 4 to 11 do begin
                res[i,j] := (exp(i+1 * ln(1) * (-1)))*(((exp(i+1*ln(x)))*ln(i+x))/(fact(j+1)+(exp(i+x * ln(E)))));
                writeln('Зовнішня сума_',i, '=  ', res[i]);
                writeln('Внутрішня сума_',j, '=  ', res[i,j]);
            end;
        end;
        writeln('Загальна сума: ', res[i]+res[i,j]);
    end
    else if (loopchoice = 2) then begin
        //while-do loop
        i := 1;
        j := 4;
        while (i <= 12) do begin
            while (j <= 11) do begin
                res[i,j] := exp(i+1 * ln(-1))* ((exp(i+1*ln(x)))*ln(i+x))/(fact(j+1)+(exp(i+x * ln(E))));
                writeln('Зовнішня сума_',i, '=  ', res[i]);
                writeln('Внутрішня сума_',j, '=  ', res[i,j]);
                i := i+1;
                j := j+1;
            end;
        end;
        writeln('Загальна сума: ', res[i]+res[i,j]);
    end;
End.