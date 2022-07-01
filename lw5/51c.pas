PROGRAM IFSort3(INPUT, OUTPUT);
{DP1 Сортирует 3-строку из INPUT в OUTPUT}
VAR
    Ch1, Ch2, Ch3: CHAR;
BEGIN {IFSort3}
  READ(Ch1, Ch2, Ch3);
  WRITELN('Входные данные ', Ch1, Ch2, Ch3);
  WRITE('Cортированные данные ');
  BEGIN {DP 2.1 сортируем Ch1, Ch2, Ch3 в OUTPUT }
    IF Ch1 < Ch2
    THEN
      {DP 2.1.1 Ch1 < Ch2:сортируем Ch1, Ch2, Ch3 в OUTPUT}
      IF Ch2 < Ch3
      THEN {Ch1 < Ch2 < Ch3:сортируем Ch1, Ch2, Ch3 в OUTPUT}
        WRITELN(Ch1, Ch2, Ch3)
      ELSE
        {DP 2.1.1.1 Ch1 < Ch2, Ch3 <= Ch2:сортируем Ch1, Ch2, Ch3 в OUTPUT}
        IF Ch1 < Ch3
        THEN {Ch1 < Ch3 <= Ch2:сортируем Ch1, Ch2, Ch3 в OUTPUT}
          WRITELN(Ch1, Ch3, Ch2)
        ELSE {Ch3 <= Ch1 < Ch2:сортируем Ch1, Ch2, Ch3 в OUTPUT}
          WRITELN(Ch3, Ch1, Ch2)
    ELSE
      {DP 2.1.2 Ch2 <= Ch1:сортируем Ch1, Ch2, Ch3 в OUTPUT}
      IF Ch1 < Ch3
      THEN {Ch2 <= Ch1 < Ch3:сортируем Ch1, Ch2, Ch3 в OUTPUT}
        WRITELN(Ch2, Ch1, Ch3)
      ELSE
        {DP 2.1.2.1 Ch2 <= Ch1, Ch3 <= Ch1:сортируем Ch1, Ch2, Ch3 в OUTPUT}
        IF Ch2 < Ch3
        THEN {Ch2 < Ch3 <= Ch1:сортируем Ch1, Ch2, Ch3 в OUTPUT}
          WRITELN(Ch2, Ch3, Ch1)
        ELSE {Ch3 <= Ch2 <= Ch1:сортируем Ch1, Ch2, Ch3 в OUTPUT}
          WRITELN(Ch3, Ch2, Ch1)
  END
END. {IFsort3}
