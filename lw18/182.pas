PROGRAM lab182(INPUT, OUTPUT);
CONST 
  //MAXINT = 1000;
  Base = 10;
VAR
  I: INTEGER;
  
PROCEDURE ReadDigit(VAR FInput: TEXT; VAR Res: INTEGER);
VAR
  Ch: CHAR;
BEGIN{ReadDigit} 
  Res := 0;   
  IF NOT EOLN(FInput)
  THEN
    BEGIN
      READ(FInput, Ch); {читает символ из файла и преобразует его в число}
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

PROCEDURE ReadNumber(VAR FInp: TEXT; VAR StrNum: INTEGER);
VAR      {читает строку из текстового файла и превращает её в число}
  Num, StrNumDiv, StrNumMod: INTEGER;
BEGIN{ReadNumber}
  Num := 0; 
  WHILE (NOT EOLN) AND (Num <> -1)
  DO
    BEGIN
      IF NOT EOLN 
      THEN
        ReadDigit(FInp, Num);
        IF Num <> -1
        THEN
          BEGIN
            StrNumMod := StrNum MOD 10; 
            StrNumDiv := StrNum DIV 10; 
            StrNumMod := StrNumMod * Base + Num; 
            IF StrNumDiv > (MAXINT DIV 100)
            THEN
              BEGIN
                StrNum := -1;
                Num := -1
              END
            ELSE
              IF (StrNumDiv = (MAXINT DIV 100)) AND  (StrNumMod > (MAXINT MOD 100))
              THEN
                BEGIN
                  StrNum := -1;
                  Num := -1
                END
              ELSE
                StrNum := StrNum * Base + Num
          END       
    END     
END;{ReadNumber}

BEGIN{lab182} {программа читает числа в файле}
  WRITELN(MAXINT);
  ReadNumber(INPUT, I);
  WRITELN('Введённое число: ', I) 
END.{lab182}
                 
