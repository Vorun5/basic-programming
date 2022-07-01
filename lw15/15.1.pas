PROGRAM BubbleSort(INPUT, OUTPUT);
VAR
  Sorted, Ch, Ch1, Ch2: CHAR;
  F1, F2: TEXT;

PROCEDURE CopyF1inF2(VAR FInput, FOutput: TEXT); {копирует один файл в другой}
VAR
  Ch: CHAR;
BEGIN {CopyF1inF2}
  REWRITE(FOutput);
  RESET(FInput);
  WHILE NOT EOLN (FInput)
  DO
    BEGIN
      READ(FInput, Ch);
      WRITE(FOutput, Ch);
    END;
END; {CopyF1inF2} 

PROCEDURE MinSorted(VAR Ch1, Ch2, Switch: CHAR; VAR FInput, FOutput: TEXT);{сравнивает два символа}
BEGIN {MinSorted}
  WHILE NOT EOLN(FInput)
  DO 
    BEGIN
      READ(FInput, Ch2);
      IF Ch1 <= Ch2
      THEN
        BEGIN
          WRITE(FOutput, Ch1);
          Ch1 := Ch2
        END
      ELSE
        BEGIN
          WRITE(FOutput, Ch2);
          Switch := 'N'
        END
    END;
END; {MinSorted}

BEGIN {BubbleSort}
  CopyF1inF2(INPUT, F1); {копирует INPUT в F1 }
  Sorted := 'N';
  WHILE Sorted = 'N'
  DO
    BEGIN
      Sorted := 'Y';
      RESET(F1);
      REWRITE(F2);
      IF NOT EOLN(F1)
      THEN
        BEGIN
          READ(F1, Ch1);
          MinSorted(Ch1, Ch2, Sorted, F1, F2);
          WRITELN(F2, Ch1) 
        END;
      CopyF1inF2(F2, F1) {копирует F1 в F2}
    END;
  CopyF1inF2(F1, OUTPUT) {копирует F1 в OUTPUT}
END. {BubbleSort}
