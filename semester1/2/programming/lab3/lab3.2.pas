Program lab3_2;
Uses crt;
Const n = 4;
Var a:array[1..n,1..n] of integer;
	sum:array[1..n] of integer;
    i,j,maxVal,maxIndex,minElement:integer;
Begin
	sum[1] := 0;
    Randomize;
    writeln('a = ');writeln;
    for i := 1 to n do begin
        for j := 1 to n do begin
            a[i,j] := Random(20);
            if (a[i,j].toString().length = 1) then write('   ')
			else if (a[i,j].toString().length = 2) then write('  ');
			write(a[i,j]);
			if (j >= 4) then writeln();
        end;
    end;
	writeln;
	writeln('a(transposed) = ');
	writeln;
	for j:=1 to n do begin
		for i:=1 to n do begin
			if (a[i,j].toString().length = 1) then write('   ')
			else if (a[i,j].toString().length = 2) then write('  ');
			write(a[i,j]);
			if (i >= 4) then writeln();
		end;
	end;
    for i:=1 to n do for j:=1 to n do sum[j] += a[j,i];
	writeln('----------------');
	write('  ');
	for i:=1 to n do write(sum[i] + '  ');
	writeln;
	maxIndex := 1;
	maxVal := sum[1];
	for i:=1 to n do begin
		if (sum[i] > maxVal) then begin
			maxIndex := i;maxVal := sum[i];
		end;
	end;
	i := 1;
	minElement := a[maxIndex,i];
	while (i < n) do begin
		if (a[maxIndex,i] < minElement) then minElement := a[maxIndex,i];
		i+=1;
	end;
	writeln;
	writeln('index of max addition: ' + maxIndex);writeln;
	writeln('program result(the least value in the biggest addition result) is: ' + minElement);writeln;
End.