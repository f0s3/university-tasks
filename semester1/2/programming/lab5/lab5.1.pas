program lab5_1;
uses crt;
const gazetaPrice = 1;
      zhurnalPrice = 2;
var clientChoice, i,counter,oneMoreItem,money,suggestionAnswer:integer;
    cart:array [1..10] of string;
Begin
    i := 1;
    writeln('eKiosk v.0.1.');
    writeln;
    write('����i�� ����i: ');
    readln(money);
    if (money >= 1) AND (money < 2) then begin
        writeln('������ - 1 UAH.');
        writeln('������ �� 1 UAH?');
        writeln('1.���');
        writeln('2.ͳ');
        write('>: ');
        read(clientChoice);
        case clientChoice of 
            1:money := money - 1;
            2:writeln('�� ������� ������.');
        end;
    end
    else if (money>=2) then begin
        writeln('1.������ - 1 UAH.');
        writeln('2.������ - 2 UAH');
        write('>: ');
        read(clientChoice);
        case clientChoice of
            1:money := money - 1;cart[i] := '������';i += 1;
            2:if (money >=2) then begin money := money - 2;cart[i] := '������';i += 1; end;
        end;
    end;
    for counter := 1 to 10 do begin 
        writeln('���(i) �����(�): ',cart[counter]);
        if (cart[counter+1] = '') then break;
    end;
End.