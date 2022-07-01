PROGRAM AverageScore(INPUT, OUTPUT);
CONST
  NumberOfScores = 4;
  ClassSize = 4;
  Base = 10;
  HalfBase = Base DIV 2;
  MinScore = 0;
  MaxScore = 100; 
TYPE
  Score = MinScore .. MaxScore;
VAR
  WhichScore: 1 .. NumberOfScores;
  Student: 1 .. ClassSize;
  NextScore: Score;
  Ave, TotalScore, ClassTotal: INTEGER;
  Name: TEXT;
  Ch: CHAR;
BEGIN {AverageScore}
  ClassTotal := 0;
  WRITELN('Student averages:');
  Student := 1;
  WHILE Student < ClassSize
  DO
    BEGIN
      REWRITE(Name);
      WRITELN('Names of ',Student ,' student');
      WHILE NOT EOLN 
      DO
        BEGIN
          READ(Ch);
          WRITE(Name, Ch)
        END;
      WRITELN(Name);  
      TotalScore := 0;
      WhichScore := 1;
      WHILE WhichScore <= NumberOfScores
      DO
        BEGIN
          READ(NextScore);         
          TotalScore := TotalScore + NextScore;
          WhichScore := WhichScore + 1 
        END;
      READLN;
      TotalScore := TotalScore * Base;
      Ave := TotalScore DIV NumberOfScores;
      WRITE('Student ');
      RESET(Name);
      WHILE NOT EOLN(Name) 
      DO
        BEGIN
          READ(Name, Ch);
          WRITE(Ch)
        END;
      IF Ave MOD Base >= HalfBase
      THEN
        WRITELN(' score: ', Ave DIV Base + 1)
      ELSE
        WRITELN(' score: ', Ave DIV Base);
      ClassTotal := ClassTotal + TotalScore;
      Student := Student + 1
    END;
  WRITELN;
  WRITELN('Class average:');
  ClassTotal := ClassTotal DIV (ClassSize * NumberOfScores);
  WRITELN(ClassTotal DIV Base, '.', ClassTotal MOD Base:1)
END.  {AverageScore}
