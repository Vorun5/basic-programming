PROGRAM AverageScore(INPUT, OUTPUT);
CONST
  NumberOfScores = 4;
  ClassSize = 4;
  MinScore = 0;
  MaxScore = 100;
  BaseSystem  = 10;
  HalfBase = BaseSystem DIV 2; 
TYPE
  Score = MinScore .. MaxScore;
VAR
  WhichScore: 1 .. NumberOfScores;
  Student: 1 .. ClassSize;
  NextScore: Score;
  Ave, TotalScore, ClassTotal: INTEGER;
BEGIN {AverageScore}
  ClassTotal := 0;
  WRITELN('Student averages: ');
  Student := 1;
  WHILE Student <= ClassSize
  DO
    BEGIN
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
      TotalScore := TotalScore * BaseSystem;
      Ave := TotalScore DIV NumberOfScores;
      WRITELN('Student: ', Student, 'Score: ');
      IF Ave MOD BaseSystem >= HalfBase
      THEN
        WRITELN(Ave DIV BaseSystem + 1)
      ELSE        
        WRITELN(Ave DIV BaseSystem);
      ClassTotal := ClassTotal + TotalScore;
      Student := Student + 1
    END;
  WRITELN;
  WRITELN('Class average: ');
  ClassTotal := ClassTotal DIV (ClassSize * NumberOfScores);
  WRITELN(ClassTotal DIV BaseSystem, '.', ClassTotal MOD BaseSystem:1)
END.  {AverageScore}
