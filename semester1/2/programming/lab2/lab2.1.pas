program Lab_2_1;
uses crt;
const a = 0;
      b = 5;
      c = 0.2;
label Menu, 1, 2, 3, 4, q;
var
    x, y, ymin, ymax: real;
    m: integer;

begin
    clrscr;
    Menu:  
    Writeln('Виберіть бажаний цикл:');
    Writeln('1. if_then');
    Writeln('2. while_do');
    Writeln('3. repeat_until');
    Writeln('4. Вихід');
    Readln(m);
    
    case m of
        1:
            begin
                x := a;
                ymin := exp(ln(x) * 3) + x + 0.5;
                ymax := exp(ln(x) * 3) + x + 0.5;
                q:
                if (2 <= x) and (x <= 4) then begin
                    y := exp(ln(x) * 3) + x + 0.5;
                    Writeln('x=', x:6:3, 'y=', y:6:3); end
                else if (x > 4) then begin
                    y := 2.2 * exp(ln(10) * (-4)) * x - sin(x);
                    Writeln('x=', x:6:3, 'y=', y:6:3); end
                else if (x < 2) then begin
                    y := (x + cos(x)) / (pi + x);
                    Writeln('x=', x:6:3, 'y=', y:6:3); end;
                if(ymax < y) then ymax := y;
                if(ymin > y) then ymin := y;
                x := x + c;
                if (x <= b) then goto q;
                Writeln('ymax=', ymax:6:3, 'ymin=', ymin:6:3);
                goto Menu;
            end;
        2:
            begin
                x := a;
                ymin := exp(ln(x) * 3) + x + 0.5;;
                ymax := exp(ln(x) * 3) + x + 0.5;;
                while (x <= b) do begin
                    if (2 <= x) and (x <= 4) then begin
                        y := exp(ln(x) * 3) + x + 0.5;
                        Writeln('x=', x:6:3, 'y=', y:6:3); end;
                    
                    if (x > 4) then begin
                        y := 2.2 * exp(ln(10) * (-4)) * x - sin(x);
                        Writeln('x=', x:6:3, 'y=', y:6:3); end;
                    
                    if (x < 2) then begin
                        y := (x + cos(x)) / (pi + x);
                        Writeln('x=', x:6:3, 'y=', y:6:3); end;
                    
                    if(ymax < y) then ymax := y;
                    if(ymin > y) then ymin := y;
                    
                    x := x + c;
                end;
                Writeln('ymax=', ymax:6:3, 'ymin=', ymin:6:3); 
                goto Menu;
            end;
        3:
            begin
                x := a;
                ymin := exp(ln(x) * 3) + x + 0.5;;
                ymax := exp(ln(x) * 3) + x + 0.5;;
                repeat begin
                    if (2 <= x) and (x <= 4) then begin
                        y := exp(ln(x) * 3) + x + 0.5;
                        Writeln('x=', x:6:3, 'y=', y:6:3); end;
                    if (x > 4) then begin
                        y := 2.2 * exp(ln(10) * (-4)) * x - sin(x);
                        Writeln('x=', x:6:3, 'y=', y:6:3); end;
                    if (x < 2) then begin
                        y := (x + cos(x)) / (pi + x);
                        Writeln('x=', x:6:3, 'y=', y:6:3); end;
                    if(ymax < y) then ymax := y;
                    if(ymin > y) then ymin := y;
                    x := x + c;
                end
                until (x > b);
                Writeln('ymax=', ymax:6:3, 'ymin=', ymin:6:3);
                goto Menu;
            end;
        4: exit;
    end;
end.
