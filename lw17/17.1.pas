PROGRAM lab171(INPUT, OUTPUT);
USES
  DateIO;
VAR
  M1, M2: Month;
BEGIN{lab171}
  M1 := NoMonth; {инициализирует M1 и M2}
  M2 := NoMonth;
  IF NOT EOLN
  THEN
    BEGIN
      ReadMonth(INPUT, M1);
      ReadMonth(INPUT, M2)
    END;
  {—равнивает M1 и M2 и выдаЄт результат}
  IF (M1 = NoMonth) OR (M2 = NoMonth)
  THEN 
    WRITE('¬ходные данные записаны неверно')
  ELSE
    IF M1 = M2
    THEN
      BEGIN
        WRITE('ќба мес€ца ');
        WriteMonth(OUTPUT, M1);
        WRITELN
      END
    ELSE
      BEGIN {—равнивает M1 и M2}
        WriteMonth(OUTPUT, M1);
        IF M1 < M2
        THEN
          WRITE(' предшествует ')
        ELSE
          WRITE(' сдедует за ');
        WriteMonth(OUTPUT, M2);
        WRITELN
      END      
END.{lab171}
