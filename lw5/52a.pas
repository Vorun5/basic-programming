PROGRAM MinSort3(INPUT, OUTPUT);
{DP 3 сортирует 3-строку из INPUT в OUTPUT }
VAR Ch1, Ch2, Ch3: CHAR;
BEGIN {MinSort3}
  READ(Ch1, Ch2, Ch3) ;
  WRITELN('Входные данные ', Ch1, Ch2, Ch3);
  WRITE('Сортированные данные ');
  {DP 3.1 Печатать минимум в  OUTPUT, сохранить содержимое в Ch1 and Ch2}
  {DP 3.2 Сортировать Ch1, Ch2 в OUTPUT}
  WRITELN(Ch1, Ch2, Ch3)
END. {Minsort3}
