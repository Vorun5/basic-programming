PROGRAM 1Split(INPUT, OUTPUT);
VAR
  Ch, Next: CHAR;
  Odds, Evens: TEXT;
BEGIN{DP 1 Split}
  {DP 2 ������� INPUT �� Odds � Evens}
  ASSIGN(Odds,'C:\Users\user\Desktop\lab\OP\lw6\Odds.txt');
  ASSIGN(Evens,'C:\Users\user\Desktop\lab\OP\lw6\Evens.txt');
  REWRITE(Odds);
  REWRITE(Evens);
  Next := 'O' ;
  READ(INPUT, Ch);
  WHILE Ch <> '#'
    DO
      {DP 2.1 �����뢠�� Ch �� ���ﭨ� Next, ��४����� Next}
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
  END; 
END.{Split}

