PROGRAM Reverse(INPUT, OUTPUT);
PROCEDURE Reverse(VAR FInput, FOutput: TEXT);
VAR
  Ch: CHAR;
BEGIN{PROCEDURE Reverse}
  IF NOT EOLN
  THEN
    BEGIN
      READ(FInput, Ch); {������ ch � ���������� ��� � FInput}
      WRITE(FOutput, Ch); {�������� ch �� FInput � FOutput � ������� FOutput}
      Reverse(FInput, FOutput){�������� PROCEDURE Reverse}  
    END
END;{PROCEDURE Reverse}   
BEGIN{reverse}
   Reverse(INPUT, OUTPUT) 
END.{reverse}
