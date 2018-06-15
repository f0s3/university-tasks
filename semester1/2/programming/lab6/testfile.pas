Program lab6_1;
Uses crt;
Var transistors:array[1..10] of string;
  tr_names:array[1..10] of string;
  tr_info:array[1..10] of string;
	f:text;
	lines_count:integer;
		
procedure printFile();
var lines_count := 1;
begin
	while not EOF(f) do begin
		readln(f,transistors[lines_count]);
		writeln(transistors[lines_count]);
		lines_count := lines_count + 1;
	end;
end;

procedure printByName(input:string);
var i:integer;
begin
	if (input.length = 7) then begin
		for i:=1 to 2 do begin
			if (input = tr_names[i]) then writeln(tr_info[i]);
		end;
	end;
end;

procedure printByCurrent(current:string);
var i:integer;
begin
  	if (current = copy(tr_info[1],7,3)) then begin 
  	  write(copy(tr_info[1],1,5));
  	  write(copy(tr_info[1],10,24));
  	  writeln();
    end;
end;

	
Begin
	assign(f, 'transistors_list.txt');
	reset(f);

	lines_count := 1;
  while not EOF(f) do begin
		readln(f,transistors[lines_count]);
		tr_names[lines_count] := copy(transistors[lines_count],1,7);
		//writeln(tr_names[lines_count]);
		tr_info[lines_count] := copy(transistors[lines_count],9,32);
		//writeln(tr_info[lines_count]);
		lines_count := lines_count + 1;
	end;
	lines_count := 1;
	
	//printFile();

	//printByName('kt201am');
	
	//kt201am n-p-n (20A) 20V h21e 10MHz
	printByCurrent('20A');
	
	close(f);
End.