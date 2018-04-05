Program lab1_1;
Uses crt;

function arcsin(x:double):double;
begin
    if round(x*10000000)=10000000 then Arcsin := pi/2 else
    if round(x*10000000)=-10000000 THEN Arcsin := -pi/2 else
    arcsin := arctan(X/sqrt(1-sqr(x)));
end;


function countByFormula():double;
var x,r,d,a:double;
	i:integer;
	variableNames:array[1..3] of char = ('x', 'r', 'd');
	variables:array[1..3] of real;
begin
	for i := 1 to 3 do begin
		write(variableNames[i], ' = ');
		readln(variables[i]);
	end;
	x := variables[1];
	r := variables[2];
	d := variables[3];
	a := (x * (arcsin(r/(sqr(r) + 1))) + 1 / exp((x + 3) * ln(d)));
	writeln(a);
	countByFormula := a;
end;
Begin
	countByFormula();
End.
