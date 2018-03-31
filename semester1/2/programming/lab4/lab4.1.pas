Program lab4_1;
function f(x:real):real;
begin
  f := x;
end;
function integralCalculate(x0,xn,h:real):real;
var n, i:integer;
sum, height, xi, xi1:real;
begin
  xi := x0;
  sum := 0;
  n := Round(((xn - x0)/h));
  for i:=0 to (n-1) do
  begin
    xi1 := xi + h;
    height := xi1 - xi;
    sum := sum + (height/2)*(f(xi) + f(xi1));
    xi := xi1;
  end;
  integralCalculate := sum;
end;
 
begin
  writeln(integralCalculate(0,1,0.01));
end.