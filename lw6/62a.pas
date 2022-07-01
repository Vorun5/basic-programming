PROGRAM Split(INPUT, OUTPUT);
VAR
  Ch, Next: CHAR;
  Odds, Evens: TEXT;
BEGIN{DP 1 Split}
  ASSIGN(Odds,'C:\Users\user\Desktop\lab\OP\lw6\Odds.txt');
  ASSIGN(Evens,'C:\Users\user\Desktop\lab\OP\lw6\Evens.txt');
  {DP 3 Выводим Odds в OUTPUT}
  BEGIN
    RESET(Odds);
    READ(Odds, Ch);
    WHILE Ch <> '#'
      DO
        BEGIN
          WRITE(OUTPUT, Ch);
          READ(Odds, Ch) 
        END;
    WRITELN(OUTPUT)
  END  
END.{Split}

