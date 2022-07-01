PROGRAM lab211(INPUT, OUTPUT); 
CONST
  Height = 5;
  Width = 5; 
TYPE
  SofB = SET OF BYTE;  
VAR
  SofCh: SET OF CHAR;
  S: SofB;
  H, W: INTEGER;
  Ch: CHAR;
  
FUNCTION SumbolCheck(Sb: CHAR): SofB;
BEGIN
  SumbolCheck := [];
  CASE Sb OF
    'M': SumbolCheck := [1, 5, 6, 7, 9, 10, 11, 13, 15, 16, 20, 21, 25];
    'O': SumbolCheck := [1, 2, 3, 4, 5, 6, 10, 11, 16, 15, 20, 21, 22, 23, 24, 25];
    'T': SumbolCheck := [1, 2, 3, 4, 5, 8, 13, 18, 23]
  END 
END;

PROCEDURE PrintSumbol(Se: SofB);
VAR
  Int: INTEGER;
BEGIN
  Int := 0;
  FOR H := 1 TO Height  
  DO
    BEGIN
      FOR W := 1 TO Width  
      DO
        BEGIN
          Int := Int + 1;
          IF Int IN Se
          THEN
            WRITE('X')
          ELSE 
            WRITE(' ')   
        END;
      WRITELN  
    END
END;  
  
BEGIN{lab211}
  SofCh := ['M', 'O', 'T'];
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      S := SumbolCheck(Ch);    
      IF S <> []
      THEN
        PrintSumbol(S)
      ELSE
        WRITELN('Symbol not found :(')  
    END   
END.{lab211}
