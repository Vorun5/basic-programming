program Hello;
const n = 5;
var a:array[1..n]
of integer;
i, k, j:integer;
begin k:= 10001;
for i:= 1 to n do readln (a[i]);
for j := 1 to n do
begin

begin
for i:= 1 to n do begin
if k&gt;a[i] then
begin
if a[i] mod 2 = 0 then k:= a[i];
end;
end;
if a[j] mod 2 = 0 then writeln (k) else writeln (a[j]);
end;
end.
