PROGRAM lab171(INPUT, OUTPUT);
USES
  DateIO;
VAR
  M1, M2: Month;
BEGIN{lab171}
  M1 := NoMonth; {�������������� M1 � M2}
  M2 := NoMonth;
  IF NOT EOLN
  THEN
    BEGIN
      ReadMonth(INPUT, M1);
      ReadMonth(INPUT, M2)
    END;
  {���������� M1 � M2 � ����� ���������}
  IF (M1 = NoMonth) OR (M2 = NoMonth)
  THEN 
    WRITE('������� ������ �������� �������')
  ELSE
    IF M1 = M2
    THEN
      BEGIN
        WRITE('��� ������ ');
        WriteMonth(OUTPUT, M1);
        WRITELN
      END
    ELSE
      BEGIN {���������� M1 � M2}
        WriteMonth(OUTPUT, M1);
        IF M1 < M2
        THEN
          WRITE(' ������������ ')
        ELSE
          WRITE(' ������� �� ');
        WriteMonth(OUTPUT, M2);
        WRITELN
      END      
END.{lab171}
