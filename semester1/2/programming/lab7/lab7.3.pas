Program lab7_3;
uses graphABC;
var x,y,x1,y1:integer;
    u:real;
begin
    lockdrawing;
    x := windowwidth div 2;
    y := windowheight div 2;
    u := 0;
    setpencolor(clRed);
    x1 := x + round(100*cos(u));
    y1 := y - round(100*sin(u));
    circle(x1,y1,10);
    repeat
    window.Clear;
    sleep(20);
    u:=u+0.04;
    setpencolor(clRed);
    x1:=x+round(100*cos(u));
    y1:=y-round(100*sin(u));
    ellipse(x1,y1,x1+100,y1+50);
    setpencolor(clWhite);
    redraw;
    until false;
end.