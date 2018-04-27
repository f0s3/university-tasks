Program lab7_3;
uses graphABC;
var x,y,x1,y1,x2,y2:integer;
    u:real;
begin
    lockdrawing;
    x := 180;
    y := 150;
    u := 0;
    setpencolor(clRed);
    x1 := x + round(100*cos(u));
    y1 := y - round(100*sin(u));
    x2 := x + round(100*cos(u)) + 50;
    y2 := y - round(100*sin(u)) + 50;
    circle(x1,y1,10);
    repeat
    window.Clear;
    sleep(4);
    u := u + 0.02;
    setpencolor(clRed);
    x1 := x + round(100*cos(u));
    y1 := y - round(100*sin(u));
    x2 := x + round(100*cos(u)) + 50;
    y2 := y - round(100*sin(u)) + 50;
    ellipse(x1,y1,x1+100,y1+50);
    ellipse(x2,y2,x2+100,y2+50);
    setpencolor(clWhite);
    redraw;
    until false;
end.