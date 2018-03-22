Program lab7_4;
uses graphabc;
var i,u,x0,y0,vs,x1,y1:integer;
 
begin
setwindowsize(400,400);
lockdrawing;
repeat
x0:=90;
y0:=200;
vs:=330;
 
for i:=1 to 6 do begin
    for u:=0 to 130 do begin
        Window.Clear;
        setpenwidth(1);
        setbrushcolor(clbrown);
        rectangle(10,400,390,360);
        setbrushcolor(clsilver);
        rectangle(200,vs,210,360);
        rectangle(190,vs,220,vs-10);
        x1:=x0+Round(150*sin(Pi*u/180));
        y1:=y0-Round(150*cos(Pi*u/180));
        SetPenWidth(17);
        line(x0,y0,x1,y1);
        SetPenWidth(3);
        setbrushcolor(clbrown);
        circle(x1,y1,25);
        sleep(40);
        Redraw;
    end;
        y0:=y0+5;
        vs:=vs+5;
 
    for u:=0 to 130 do begin
        ClearWindow;
        setpenwidth(1);
        setbrushcolor(clbrown);
        rectangle(10,400,390,360);
        setbrushcolor(clsilver);
        rectangle(200,vs,210,360);
        rectangle(190,vs,220,vs-10);
        x1:=x0+Round(150*sin(Pi*(130-u)/180));
        y1:=y0-Round(150*cos(Pi*(130-u)/180));
        SetPenWidth(17);
        line(x0,y0,x1,y1);
        SetPenWidth(3);
        setbrushcolor(clbrown);
        circle(x1,y1,25);
        sleep(40);
        Redraw;
        end;
    end;
 
until false;
end.