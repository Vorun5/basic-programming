PROGRAM BubbleSort(INPUT, OUTPUT);
  { ��������� ������ ������ INPUT � OUTPUT }
VAR
  Ch, Ch1: CHAR;
  F: TEXT;

PROCEDURE Reverse(VAR F: TEXT);
VAR
  Ch :CHAR;
BEGIN
  IF NOT EOLN(F)
  THEN
    BEGIN
      READ(F,Ch);
      REVERSE(F);
      WRITE(Ch)
    END
END;

{PROCEDURE CopyF2F(VAR  Ch1:CHAR; VAR INPUT,F:TEXT);
BEGIN 
    REWRITE(F);         //������� � ������(�������)
    WHILE NOT EOLN(INPUT)
    DO
      BEGIN
        READ(Ch1);
        WRITE(F, Ch1);
      END;
    WRITELN(F);
END;  }

BEGIN
    REWRITE(F);         //������� � ������(�������)
    WHILE NOT EOLN(INPUT)
    DO
      BEGIN
        READ(Ch1);
        WRITE(F, Ch1);
      END;
    WRITELN(F);
  RESET(F);   //��������� ���� ��� ������
  Reverse(F)  
END.
