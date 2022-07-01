PROGRAM lab161(INPUT, OUTPUT);
VAR
  I1, I2, I3, Ch1, Ch2, Ch3: CHAR;
USES 
  Count3;
BEGIN {lab161}
  WRITE('Вход: ');
  IF NOT EOLN
  THEN
    READ(Ch3);
  WRITE('Количество реверсов: ');
  WHILE NOT EOLN
  DO
    BEGIN {движение окна}
      Ch1 := Ch2;
      Ch2 := Ch3;
      READ(Ch3);
      IF ((Ch1 > Ch2) AND (Ch2 < Ch3)) OR ((Ch1 < Ch2) AND (Ch2 > Ch3))
      THEN {если выполняется условие то число увеличивается на один}
        BEGIN
          Bump;
          Value(I1, I2, I3);
          IF (I1 = '9') AND (I2 = '9') AND (I3 = '9')
          THEN {если число достигает 999 то оно печает сообщение и сбрасываеся}
            BEGIN               
              WRITE('999+');
              Start
            END
          ELSE
        END;
    END;
  WRITELN(I1, I2, I3)                                                 
END. {lab161}
