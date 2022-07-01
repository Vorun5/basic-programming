PROGRAM BubbleSort(INPUT, OUTPUT);
  { ��������� ������ ������ INPUT � OUTPUT }
VAR
  Sorted, Ch, Ch1, Ch2: CHAR;
  F1, F2: TEXT;

PROCEDURE CopyF2F(VAR  Ch: CHAR; VAR FileRead, FileWrite: TEXT);
BEGIN { �������� INPUT � F1 }
    REWRITE(FileWrite);
    RESET(FileRead);
    WHILE NOT EOLN(FileRead)
    DO
      BEGIN
        READ(FileRead, Ch);
        WRITE(FileWrite, Ch)
      END;
    WRITELN(FileWrite)
END;

PROCEDURE MinSort(VAR Char1, Char2: CHAR; VAR AnSorted2: TEXT);
BEGIN {������� min(Ch1,Ch2) � F2, ��������� ��������������� �������}   
  IF Char1 <= Char2
  THEN
  BEGIN
    WRITE(AnSorted2, Char1);
    Char1 := Char2
  END
    ELSE
    BEGIN
      WRITE(AnSorted2, Char2);
      Sorted := 'N'
    END
END;

PROCEDURE Lexico(VAR F1, F2: TEXT; VAR Result: CHAR);
{Result 0, 1, 2 ���� ������������������ ������� F1 =, <, > ��� F2       
��������������. ����������� ���������, ��������������� F1 � F2,
������ ���� ����������}
 
VAR
  Ch1, Ch2: CHAR;
BEGIN {Lexico}
  RESET(F1);
  RESET(F2);
  Result := '0';
  WHILE (NOT EOLN(F1) AND NOT EOLN(F2)) AND (Result = '0')
  DO
    BEGIN
      READ(F1, Ch1);
      READ(F2, Ch2);
      IF (Ch1 < Ch2)
      THEN {Ch1 < Ch2 ��� F1 ������ F2}
        Result := '1'
      ELSE
        IF (Ch1 > Ch2)
        THEN {Ch1 > Ch2 ��� F2 ������ F1}
          Result := '2'
    END {WHILE}
END; {Lexico}

       
BEGIN { BubbleSort }

END.{ BubbleSort }
