Program lab6_1;
Uses crt;
Var transistors:array[1..4] of string;
  tr_names:array[1..4] of string;
  tr_info:array[1..4] of string;
	f:text;
	lines_count, menuChoice:integer;
	query:string;

function stringCompare(st1:string; st2:string):boolean;
var i:integer;
  equality:string;
  areEqual:boolean;
begin
  for i := 1 to Length(st1) do begin
    if (st1[i] = st2[i]) then equality := equality + '+'
    else equality := equality + '-'
  end;
  if (equality.Contains('-') = false) then areEqual := true
  else areEqual := false;
  result := areEqual;
end;

procedure printAll();
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

function searchByName():string;
var query:string;
begin
  writeln('Enter .');
  write('>: ');
  read(query);
end;

procedure printByCurrent(current:string);
var i:integer;
begin
  for i := 1 to 3 do begin
    if (stringCompare(current, copy(tr_info[i],7,3)) = true) then begin 
      write(tr_names[i] + ' ');
      write(copy(tr_info[i],1,5));
  	  writeln(copy(tr_info[i],10,24));
    end;
  end;
end;

procedure printByVoltage(tension:string);
var i:integer;
begin
  for i := 1 to 3 do begin
    if (stringCompare(tension, copy(tr_info[i],11,3)) = true) then begin 
      write(tr_names[i] + ' ');
      write(copy(tr_info[i],1,10));
  	  writeln(copy(tr_info[i],15,32));
    end;
  end;
end;

procedure printByFrequency(frequency:string);
var i:integer;
begin
  for i := 1 to 3 do begin
    if (stringCompare(frequency, copy(tr_info[i],20,5)) = true) then begin 
      write(tr_names[i] + ' ');
      writeln(copy(tr_info[i],1,19));
    end;
  end;
end;

procedure printComplementary(polarity:string);
var i:integer;
begin
  for i := 1 to 3 do begin
    if (stringCompare(polarity, copy(tr_info[i],1,5)) = true) then begin 
      write(tr_names[i] + ' ');
      writeln(copy(tr_info[i],7,32));
    end;
  end;
end;

Begin
	assign(f, 'transistors_list.txt');
	reset(f);

	lines_count := 1;
  while not EOF(f) do begin
		readln(f,transistors[lines_count]);
		tr_names[lines_count] := copy(transistors[lines_count],1,7);
		tr_info[lines_count] := copy(transistors[lines_count],9,32);
		lines_count := lines_count + 1;
	end;
	lines_count := 1;
	
  writeln('1.Search by name');
	writeln('2.Search by max current');
	writeln('3.Search by max voltage');
	writeln('4.Search by frequency of amplification');
	writeln('5.Print all complementary pairs of transistors');
	writeln('6.Print all transistors');
	writeln('0.Exit');
	write('>: ');
	read(menuChoice);
	if (menuChoice = 1) then begin
	  writeln('Enter name.');
    write('>: ');
    read(query);
    printByName(query);
  end
  else if (menuChoice = 1) then begin
  	  writeln('Enter current.');
      write('>: ');
      read(query);
      printByCurrent(query);
  end
  else if (menuChoice = 1) then begin
  	  writeln('Enter voltage.');
      write('>: ');
      read(query);
      printByVoltage(query);
  end
  else if (menuChoice = 1) then begin
  	  writeln('Enter frequency.');
      write('>: ');
      read(query);
      printByFrequency(query);
  end
  else if (menuChoice = 1) then begin
  	  writeln('Enter complementary.');
      write('>: ');
      read(query);
      printComplementary(query);
  end
  else if (menuChoice = 1) then begin
      printAll();
  end
  else if (menuChoice = 1) then begin
  	  exit;
	end;
  close(f);
End.