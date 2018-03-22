Program lab5_2;
Uses crt;
Type Student=record
		surname:string[20];
		mark1,mark2,mark3,mark4,mark5:real;
end;
	studentsResults=record
		surname:string[20];
		mark:real;
	end;
Var studentsInfo:array[1..4] of Student;
	studentsResultsArray:array[1..4] of studentsResults;
	i:integer;
Begin
	studentsInfo[1].surname := 'Петров';studentsInfo[2].surname := 'Иванов';
	studentsInfo[3].surname := 'Сидоров';studentsInfo[4].surname := 'Культишов';
	randomize;
	for i:=1 to 4 do begin
		studentsInfo[i].mark1 := random(5);
		studentsInfo[i].mark2 := random(5);
		studentsInfo[i].mark3 := random(5);
		studentsInfo[i].mark4 := random(5);
		studentsInfo[i].mark5 := random(5);
	end;
	for i:=1 to 4 do begin
		studentsResultsArray[i].surname := studentsInfo[i].surname;
		studentsResultsArray[i].mark := 
			(studentsInfo[i].mark1 + 
			studentsInfo[i].mark2 + 
			studentsInfo[i].mark3 + 
			studentsInfo[i].mark4 + 
			studentsInfo[i].mark5) / 5;
	end;
	for i:=1 to 4 do writeln(studentsResultsArray[i].surname + ' - ' + studentsResultsArray[i].mark);writeln;
End.