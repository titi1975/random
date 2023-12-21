Program randomizador_linear;
uses sysutils;
var
   year, month, day, hr, min, sec, ms: Word;
   seed, x: Int64;

function aleatorio(s: Int64): Int64;
begin
  aleatorio := (s * 1243543 +12443213521) mod 32768;
end;

begin
  x := 1;
  DecodeTime(Time, hr, min, sec, ms);
  seed := aleatorio(ms);

  while x <= 5 do
  begin
    writeln(seed mod 101);
    seed := aleatorio(seed);

    x := x + 1;
  end;
  writeln;
  readln;
end.

