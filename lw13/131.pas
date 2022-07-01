PROGRAM BubbleSort(INPUT, OUTPUT);
VAR
  F1, F2: TEXT;
   
PROCEDURE CopyFile(VAR FileRead, FileWrite: TEXT);
VAR 
  Ch: CHAR;
BEGIN { Копируем INPUT в F1 }
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

PROCEDURE MinSort(VAR Ch1, Ch2: CHAR; VAR Fsort: TEXT; VAR Switch: CHAR);
BEGIN {Выводим min(Ch1,Ch2) в F2, записывая отсортированные символы}   
  IF Ch1 <= Ch2
  THEN
    BEGIN
      WRITE(Fsort, Ch1);
      Ch1 := Ch2
    END
  ELSE
    BEGIN
      WRITE(Fsort, Ch2);
      Switch := 'N'
    END
END;

PROCEDURE Sort(VAR Fsort1, Fsort2: TEXT);
VAR
  Sorted, Ch1, Ch2: CHAR;
BEGIN
  Sorted := 'N';
  RESET(Fsort1);
  READ(Fsort1, Ch1);
  WHILE Sorted = 'N'   
  DO  
    BEGIN   
      Sorted := 'Y';           
      RESET(Fsort1);
      IF NOT EOLN(Fsort1)
      THEN
        BEGIN     
          READ(Fsort1, Ch1); 
          REWRITE(Fsort2);
          WHILE NOT EOLN(Fsort1)
          DO
            BEGIN
              READ(Fsort1, Ch2);  
              MinSort(Ch1, Ch2, Fsort2, Sorted)
            END;
          WRITELN(Fsort2, Ch1);
          CopyFile(Fsort2, Fsort1) 
        END
    END 
END;
       
BEGIN{BubbleSort}
  CopyFile(INPUT, F1); 
  Sort(F1, F2);           
  CopyFile(F1, OUTPUT)
END.{BubbleSort}
