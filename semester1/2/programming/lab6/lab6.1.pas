Program lab6_1;
Uses crt;
Var transistors:array[1..10] of string;
	tr_names:array[1..10] of string;
	tr_info:array[1..10] of string;
	searchQuery:string;
	f:text;
	menuChoice,lines_count,i:integer;
Label mainmenu,byName,byCurrent,byTension,byFreq,printComplem,exitLabel;

procedure byNameTest(input:string);
var i:integer;
begin
	if (searchQuery.length = 7) then begin
		for i:=1 to lines_count do begin
			if (searchQuery = tr_names[i]) then writeln(tr_info[i]);
		end;
	end;
end;

Begin
	//file operations
	assign(f, 'transistors_list.txt');
	reset(f);
	lines_count := 1;
	while not EOF(f) do begin 
		readln(f,transistors[lines_count]);
		tr_names[lines_count] := copy(transistors[lines_count],1,7);
		tr_info[lines_count] := copy(transistors[lines_count],8,32);
		lines_count := lines_count + 1;
	end;
	close(f);
	lines_count := lines_count - 1;

	//main menu
	mainmenu:
	writeln('1.Search by name');
	writeln('2.Search by max current');
	writeln('3.Search by max tension(collector-emitter)');
	writeln('4.Search by frequency of amplification');
	writeln('5.Print all complementary pairs of transistors');
	writeln('6.Print all transistors');
	writeln('0.Exit');
	write('>:');
	read(menuChoice);

	if (menuChoice = 1) then goto byName
	else if (menuChoice = 2) then //goto byCurrent
	else if (menuChoice = 3) then //goto byTension
	else if (menuChoice = 4) then //goto byFreq
	else if (menuChoice = 5) then //goto printComplem
	else if (menuChoice = 6) then begin
		for i:=1 to lines_count do begin 
			writeln(transistors[i]);
		end;
		writeln;
		goto mainmenu;
	end
	else if (menuChoice = 0) then goto exitLabel;
	//1.byName
	byName:
	  write('Enter transistor name: ');
	  read(searchQuery);
	  byNameTest(searchQuery);
	  
	//2.byCurrent
	//byCurrent:writeln('byCurrent');

	//3.byTension
	//byTension:writeln('byTension');

	//4.byFreq
	//byFreq:writeln('byFreq');

	//5.printComplem
	//printComplem:writeln('printComplem');

	//0.exit
	exitLabel:
End.