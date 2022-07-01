PROGRAM Converter(INPUT, OUTPUT);
VAR
  InputNumber, ConvertedNumber, CalcNumber, Base: INTEGER;  
FUNCTION NumberConverter(Number, BaseSystem: INTEGER): INTEGER;
VAR
  N, I: INTEGER;
  Arr: ARRAY [1 .. N] OF INTEGER;  
BEGIN{NumberConverter}
  N := 0;
  WHILE Number > 0
  DO
    BEGIN
      N := N + 1;
      Arr[N] := Number MOD BaseSystem;
      Number := Number DIV BaseSystem
    END;
  I := N;
  Number := Arr[N];
  WHILE I <> 1
  DO
    BEGIN
      Number := Number * 10 + Arr[I - 1];
      I := I - 1
    END;
  NumberConverter := Number
END;{NumberConverter}

FUNCTION NumberCalculation(Number: INTEGER): INTEGER;
VAR
  Factor, Sum, Mult, OneNumber: INTEGER;
BEGIN{NumberCalculation}
  Factor := 10;
  Sum := 0;
  Mult := 1;
  WHILE (Number MOD (Factor DIV 10)) <> Number
  DO
    BEGIN
      OneNumber := (Number MOD Factor) DIV (Factor DIV 10);
      Sum := Sum + OneNumber;
      Mult :=  Mult * OneNumber;
      Factor := Factor * 10 
    END;
  Number := Mult - Sum;
  NumberCalculation := Number  
END;{NumberCalculation}


BEGIN{Converter}
  WRITE('Введите число (1 <= n <= 109): ');
  READLN(InputNumber);
  WRITE('Введите систему исчисление (2 <= k <= 10): ');
  READLN(Base);
  IF (1 <= InputNumber) AND (InputNumber <= 109) AND (2 <= Base) AND (Base <= 10)
  THEN
    BEGIN
      WRITELN('--------------------------------------------');
      ConvertedNumber := NumberConverter(InputNumber, Base);
      CalcNumber := NumberCalculation(ConvertedNumber);
      WRITELN('Число ',InputNumber, ' в ', Base, '-ичной системе исчисление: ', ConvertedNumber);
      WRITELN('Разность суммы и произвидения чисел в ', ConvertedNumber, ': ', CalcNumber)
    END
  ELSE
    WRITELN('Проверьте корректность введенных данных!')      
END.{Converter}
