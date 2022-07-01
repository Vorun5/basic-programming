PROGRAM Reverse(INPUT, OUTPUT);
PROCEDURE Reverse(VAR FInput, FOutput: TEXT);
VAR
  Ch: CHAR;
BEGIN{PROCEDURE Reverse}
  IF NOT EOLN
  THEN
    BEGIN
      READ(FInput, Ch); {читает ch и записывает его в FInput}
      WRITE(FOutput, Ch); {печатает ch из FInput в FOutput и печатет FOutput}
      Reverse(FInput, FOutput){рукурсия PROCEDURE Reverse}  
    END
END;{PROCEDURE Reverse}   
BEGIN{reverse}
   Reverse(INPUT, OUTPUT) 
END.{reverse}
