program TestProgram;
var
    x, y: integer;
    z: real;
begin
    x := 10;
    y := 20;
    if x > y then
        z := x + y;
    else
        z := x - y;
    while x < y do
    begin
        x := x + 1;
        y := y - 1;
    end;
end.