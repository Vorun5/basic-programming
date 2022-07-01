PROGRAM Converter(INPUT, OUTPUT);
VAR
  InputNumber, ConvertedNumber, CalcNumber, ReverseConvertedNumber, Base, Ten, N, I, Sum, Mult: INTEGER;
  Arr: ARRAY [1 .. N] OF INTEGER;  
BEGIN{Converter}
  N := 0;
  Ten := 10;
  Sum := 0;
  Mult := 1;
  WRITE('Введите число: ');
  READLN(InputNumber);
  WRITE('Введите систему исчисление: ');
  READLN(Base);
  IF (1 <= InputNumber) AND (InputNumber <= 109) AND (2 <= Base) AND (Base <= 10)
  THEN
    BEGIN
      WHILE InputNumber > 0
      DO
        BEGIN
          N := N + 1;
          IF N <> 1
          THEN
            ReverseConvertedNumber := ReverseConvertedNumber * 10  + InputNumber MOD Base
          ELSE
            ReverseConvertedNumber := InputNumber MOD Base;
          InputNumber := InputNumber DIV Base
        END;
      N := 0;
      ConvertedNumber := Arr[N];
      WHILE (ReverseConvertedNumber MOD (Ten DIV 10)) <> ReverseConvertedNumber
      DO
        BEGIN
          N := N + 1;
          IF N <> 1
          THEN
            ConvertedNumber := ConvertedNumber * 10 + (ReverseConvertedNumber MOD (Ten DIV 10))
          ELSE
            ConvertedNumber := (ReverseConvertedNumber MOD (Ten DIV 10));
        END;
      Ten := 10;
      WHILE (ConvertedNumber MOD (Ten DIV 10)) <> ConvertedNumber
      DO
        BEGIN
          Sum := Sum + ((ConvertedNumber MOD Ten) DIV (Ten DIV 10));
          Mult :=  Mult * ((ConvertedNumber MOD Ten) DIV (Ten DIV 10));
          Ten := Ten * 10 
        END;
      CalcNumber := Mult - Sum;
      WRITELN('Число в ', Base, '-ичной системе исчисление: ', ConvertedNumber);
      WRITELN('Разность суммы и произвидения чисел: ', CalcNumber)    
    END
  ELSE
    WRITELN('Проверьте корректность введенных данных!')
{
  IF (1 <= InputNumber) AND (InputNumber <= 109) AND (2 <= Base) AND (Base <= 10)
  THEN
    BEGIN
      WHILE InputNumber > 0
      DO
        BEGIN
          N := N + 1;
          Arr[N] := InputNumber MOD Base;
          InputNumber := InputNumber DIV Base
        END;
      I := N;
      ConvertedNumber := Arr[N];
      WHILE I <> 1
      DO
        BEGIN
          ConvertedNumber := ConvertedNumber * 10 + Arr[I - 1];
          I := I - 1;
        END;
      WHILE (ConvertedNumber MOD (Ten DIV 10)) <> ConvertedNumber
      DO
        BEGIN
          Sum := Sum + ((ConvertedNumber MOD Ten) DIV (Ten DIV 10));
          Mult :=  Mult * ((ConvertedNumber MOD Ten) DIV (Ten DIV 10));
          Ten := Ten * 10 
        END;
      CalcNumber := Mult - Sum;
      WRITELN('Число в ', Base, '-ичной системе исчисление: ', ConvertedNumber);
      WRITELN('Разность суммы и произвидения чисел: ', CalcNumber)    
    END
  ELSE
    WRITELN('Проверьте корректность введенных данных!') 
}      
END.{Converter}
