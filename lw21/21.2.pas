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
PROCEDURE NameStudent(VAR: FInput: TEXT);
VAR
  Ch: CHAR;
BEGIN
  REWRITE(FInput);
  WRITELN('Name of student: ');
  WHILE NOT EOLN 
  DO
    BEGIN
      READ(Ch);
      WRITE(FInput, Ch)
    END;
  WRITELN(FInput);  
END;
BEGIN {AverageScore}
  ClassTotal := 0;
  WRITELN('Student averages:');
  Student := 1;
  WHILE Student < ClassSize
  DO
    BEGIN
      NameStudent(Name);  
      TotalScore := 0;
      WhichScore := 1;
      WHILE WhichScore < ClassSize
      DO
        BEGIN
          READ(NextScore);
          TotalScore := TotalScore + NextScore;
          WhichScore := WhichScore + 1
        END;
      READLN;
      TotalScore := TotalScore * Base;
      Ave := TotalScore DIV NumberOfScores;
      IF Ave MOD Base >= HalfBase
      THEN
        BEGIN
          WRITE('Student ');
          RESET(Name);
          WHILE NOT EOLN(Name) 
          DO
            BEGIN
              READ(Name, Ch);
              WRITE(Ch)
            END;
          WRITELN( ' Score: ', Ave DIV Base + 1);
          Student := Student + 1;
        END
      ELSE
        BEGIN
          RESET(Name);
          WRITE('Student ');
          WHILE NOT EOLN(Name) 
          DO
            BEGIN
              READ(Name, Ch);
              WRITE(Ch)
            END;
          WRITELN( ' Score: ', Ave DIV Base );
          Student := Student + 1
        END;
      ClassTotal := ClassTotal + TotalScore;
    END;
  WRITELN;
  WRITELN ('Class average:');
  ClassTotal := ClassTotal DIV (ClassSize *NumberOfScores);
  WRITELN(ClassTotal DIV Base, '.', ClassTotal MOD Base:1)
END.  {AverageScore}
