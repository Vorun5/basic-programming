PROGRAM Reverse(INPUT, OUTPUT);
PROCEDURE Reverse(VAR FInput, FOutput: TEXT);
VAR
  Ch: CHAR;
BEGIN{PROCEDURE Reverse}
  IF NOT EOLN
  THEN
    BEGIN
      READ(FInput, Ch);{������ ch � ���������� ��� � FInput} 
      Reverse(FInput, FOutput);{�������� PROCEDURE Reverse}  
      WRITE(FOutput, Ch){�������� ch �� FInput � FOutput � ������� FOutput}
    END
END;{PROCEDURE Reverse}   
BEGIN{reverse}
   Reverse(INPUT, OUTPUT) 
END.{reverse}
