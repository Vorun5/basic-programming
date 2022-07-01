PROGRAM 1Split(INPUT, OUTPUT);
VAR
  Ch, Next: CHAR;
  Odds, Evens: TEXT;
BEGIN{DP 1 Split}
  {DP 2 Разбить INPUT на Odds и Evens}
  ASSIGN(Odds,'C:\Users\user\Desktop\lab\OP\lw6\Odds.txt');
  ASSIGN(Evens,'C:\Users\user\Desktop\lab\OP\lw6\Evens.txt');
  REWRITE(Odds);
  REWRITE(Evens);
  Next := 'O' ;
  READ(INPUT, Ch);
  WHILE Ch <> '#'
    DO
      {DP 2.1 записывать Ch по состоянию Next, переключать Next}
      BEGIN
        IF Next = 'O'
        THEN
          BEGIN 
            WRITE(Odds, Ch);
            WRITE(Odds) ;
            Next := 'E'
          END
        ELSE
          BEGIN 
            WRITE(Evens, Ch);
            WRITE(Evens) ;
            Next := 'O'
          END;
        READ(INPUT, Ch) 
      END;
      WRITELN(Odds, '#');
      WRITELN(Evens, '#');
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
  END; 
  {DP 4 Выводим Evens в OUTPUT}
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
  END; 
END.{Split}

