PROGRAM Split(INPUT, OUTPUT);
VAR
  Ch, Next: CHAR;
  Odds, Evens: TEXT;
BEGIN{DP 1 Split}
  ASSIGN(Odds,'C:\Users\user\Desktop\lab\OP\lw6\Odds.txt');
  ASSIGN(Evens,'C:\Users\user\Desktop\lab\OP\lw6\Evens.txt');
  {DP 3 �뢮��� Odds � OUTPUT}
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
  END; 
  {DP 4 �뢮��� Evens � OUTPUT}
  BEGIN
    RESET(Evens);
    READ(Evens, Ch);
    WHILE Ch <> '#'
      DO
        BEGIN
          WRITE(OUTPUT, Ch);
          READ(Evens, Ch) 
        END;
    WRITELN(OUTPUT)
  END 
END.{Split}

