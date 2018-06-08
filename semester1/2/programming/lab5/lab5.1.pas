program lab5_1;
const gazetaPrice = 1;
      zhurnalPrice = 2;
var clientChoice, i,counter,oneMoreItem,money,suggestionAnswer:integer;
    cart:array[1..10] of string;
Label exitLabel;
Begin
    i := 1;
    writeln('eKiosk v.0.1.');
    writeln;
    write('Введiть грошi: ');
    readln(money);
    if (money >= 1) AND (money < 2) then begin
        writeln('Газета - 1 UAH.');
        writeln('Купити за 1 UAH?');
        writeln('1.Так');
        writeln('2.Ні');
        write('>: ');
        read(clientChoice);
        if (clientChoice = 1) then begin
            money := money - 1;
            cart[i] := 'Газета';
            i := i + 1;
        end
        else if (clientChoice = 2) then
            writeln('Допобачення.');
            goto exitLabel;
    end
    else if (money >= 2) then begin
        writeln('1.Газета - 1 UAH.');
        writeln('2.Журнал - 2 UAH');
        write('>: ');
        read(clientChoice);
        if (clientChoice = 1) then begin 
            money := money - 1;
            cart[i] := 'Газета';
            i := i + 1;
        end
        else if (clientChoice = 2) then begin
            if (money >=2) then begin
                money := money - 2;
                cart[i] := 'Журнал';
                i += 1;
            end;
        end;
    end;
    for counter := 1 to 10 do begin 
        writeln('Ваш(i) товар(и): ',cart[counter]);
        if (cart[counter+1] = '') then break;
    end;
    exitLabel:
End.