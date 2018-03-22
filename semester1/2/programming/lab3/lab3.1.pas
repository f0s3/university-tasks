Program lab3_1;
Uses crt;
Const m = 4;n = 3;
Var a,b,c,d:array [1..4,1..3] of integer;
	i,j:integer;
Begin
	Randomize;
	//fill and output a
	writeln('a = ');
	for i:=1 to m do begin
		for j:=1 to n do begin
			a[i,j] := random(20);
			if (a[i,j].toString().length = 1) then write('   ')
			else if (a[i,j].toString().length = 2) then write('  ');
			write(a[i,j]);
			if (j >= 3) then writeln();
		end;
	end;
	writeln;

	//fill and output b
	writeln('b = ');
	for i:=1 to m do begin
		for j:=1 to n do begin
			b[i,j] := random(20);
			if (b[i,j].toString().length = 1) then write('   ')
			else if (b[i,j].toString().length = 2) then write('  ');
			write(b[i,j]);
			if (j >= 3) then writeln();
		end;
	end;
	writeln;

	//addition and subtraction + output for addition
	writeln('c = a + b = ');
	for i:=1 to m do begin
		for j:= 1 to n do begin
			c[i,j] := a[i,j] + b[i,j];
			d[i,j] := a[i,j] - b[i,j];
			if (c[i,j].toString().length = 1) then write('   ')
			else if (c[i,j].toString().length = 2) then write('  ');
			write(c[i,j]);
			if (j >= 3) then writeln();
		end;
	end;
	writeln;

	//output for subtraction
	writeln('d = a - b = ');
	for i:=1 to m do begin
		for j:=1 to n do begin
			if (d[i,j].toString().length = 1) then write('   ')
			else if (d[i,j].toString().length = 2) then write('  ')
			else if (d[i,j].toString().length = 3) then write(' ');
			write(d[i,j]);
			if (j >= 3) then writeln();
		end;
	end;
End.