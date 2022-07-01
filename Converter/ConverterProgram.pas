PROGRAM Converter(INPUT, OUTPUT);
VAR
  InputNumber, ConvertedNumber, CalcNumber, ReverseConvertedNumber, I, Base, Ten, Sum, Mult, OneNumber: INTEGER;
  CheckZero: BOOLEAN;  
BEGIN{Converter}
  I := 0;
  Ten := 10;
  Sum := 0;
  Mult := 1;
  CheckZero := FALSE;
  WRITE('Введите число (1 <= n <= 109): ');
  READLN(InputNumber);
  WRITE('Введите систему исчисление (2 <= k <= 10): ');
  READLN(Base);
  IF (1 <= InputNumber) AND (InputNumber <= 109) AND (2 <= Base) AND (Base <= 10)
  THEN
    BEGIN
      WHILE InputNumber > 0 
      DO
        BEGIN
          I := I + 1;
          ReverseConvertedNumber := ReverseConvertedNumber * 10  + InputNumber MOD Base;
          IF I = 1
          THEN
            ReverseConvertedNumber := InputNumber MOD Base;
          IF (InputNumber MOD Base = 0) AND (I = 1)
          THEN
            BEGIN
              ReverseConvertedNumber := 10;
              CheckZero := TRUE
            END;
          InputNumber := InputNumber DIV Base
        END;
      I := 0;
      WHILE (ReverseConvertedNumber MOD (Ten DIV 10)) <> ReverseConvertedNumber
      DO
        BEGIN
          I := I + 1;
          OneNumber := (ReverseConvertedNumber MOD Ten) DIV (Ten DIV 10);
          Sum := Sum + OneNumber;
          Mult :=  Mult * OneNumber;
          ConvertedNumber := ConvertedNumber * 10 + OneNumber;
          IF I = 1
          THEN
            ConvertedNumber := OneNumber;
          Ten := Ten * 10
        END;
      Ten := 10;
      CalcNumber := Mult - Sum;
      IF CheckZero = TRUE
      THEN
        BEGIN
          ConvertedNumber := ConvertedNumber DIV 10;
          CalcNumber := CalcNumber + 1;
          CheckZero := FALSE
        END;
      WRITELN('Введёное число в ', Base, '-ичной системе исчисление: ', ConvertedNumber);
      WRITELN('Разность суммы и произвидения цифр в числе ', ConvertedNumber, ': ', CalcNumber)    
    END
  ELSE
    WRITELN('Проверьте корректность введенных данных!')      
END.{Converter}
