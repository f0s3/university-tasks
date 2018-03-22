Program lab7_1;
uses GraphABC;
Begin
    lockdrawing;
    setWindowSize(270,200);
    setbrushColor(clBlue);
    setpencolor(clblue);
    //polygon
    moveto(55,15);
    lineto(80,35);
    lineto(80,65);
    lineto(55,85);
    lineto(30,65);
    lineto(30,35);
    lineto(55,15);
    floodFill(55,50,clBlue);
    //circle
    setBrushColor(clBlack);
    setPenColor(clBlack);
    drawcircle(55,120,25);
    //ellipse
    setBrushColor(clGreen);
    ellipse(120,95,230,145);
    //rectangle
    setBrushColor(clWhite);
    rectangle(120,15,230,65);
    redraw;
End.
