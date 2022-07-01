PROGRAM lab181(INPUT, OUTPUT); 
VAR
  I, Sum: INTEGER;
  
PROCEDURE ReadDigit(VAR FInput: TEXT; VAR Res: INTEGER);
VAR
  Ch: CHAR;
BEGIN{ReadDigit} 
  Res := 0;   
  IF NOT EOLN(FInput)
  THEN
    BEGIN
      READ(FInput, Ch); {читает символ из файла и перобразует его в число}
      IF Ch = '0' THEN Res := 0 ELSE
      IF Ch = '1' THEN Res := 1 ELSE
      IF Ch = '2' THEN Res := 2 ELSE
      IF Ch = '3' THEN Res := 3 ELSE
      IF Ch = '4' THEN Res := 4 ELSE
      IF Ch = '5' THEN Res := 5 ELSE
      IF Ch = '6' THEN Res := 6 ELSE
      IF Ch = '7' THEN Res := 7 ELSE
      IF Ch = '8' THEN Res := 8 ELSE
      IF Ch = '9' THEN Res := 9 ELSE 
        Res := -1
    END        
END;{ReadDigit}

BEGIN{lab181} {программа читает числа в файле}
  Sum := 0;
  WHILE (NOT EOLN) AND (I <> -1)
  DO
    BEGIN
      ReadDigit(INPUT, I); {читает файл и складывает цифры в ней}
      IF I <> -1
      THEN
        Sum := Sum + I
    END; 
  WRITELN('Сумма чисел в файле: ', Sum)  
END.{lab181}         
