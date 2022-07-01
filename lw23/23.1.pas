PROGRAM InsertionSort(INPUT, OUTPUT);
{Сортирует символы из INPUT}
CONST
  Max = 16;
  ListEnd = 0;
TYPE
  RecArray = ARRAY [1 .. Max] OF 
               RECORD
                 Key: CHAR;
                 Next: 0 .. Max;
               END;
  Lenght = 0 .. Max;
VAR
  Arr: RecArray;
  First, Index: Lenght;
  Curr: Lenght;  
  Extra: CHAR;

PROCEDURE PrintMes(InpFirst: Lenght; InpArr: RecArray);
VAR
  I: Lenght;
BEGIN
  I := InpFirst;
  WHILE I <> ListEnd
  DO
    BEGIN
      WRITE(InpArr[I].Key);  
      I := InpArr[I].Next
    END;
  WRITELN
END;

PROCEDURE ValuePrevCurr(VAR InpCurr: Lenght; VAR InpPrev: Lenght; VAR InpArr: RecArray);
VAR
  B: BOOLEAN;
BEGIN
  B := FALSE;
  WHILE (InpCurr <> 0) AND NOT B
  DO
    IF InpArr[Index].Key > InpArr[InpCurr].Key
    THEN
      BEGIN
        InpPrev := InpCurr;
        InpCurr := InpArr[Curr].Next
      END
    ELSE
      B := True; 
  InpArr[Index].Next := InpCurr;
END;

PROCEDURE Insert(VAR InpArr: RecArray; VAR InpFirst, InpCurr, InpIndex: Lenght);
VAR
  PrevI: Lenght;
BEGIN  
  PrevI := 0;
  InpCurr := InpFirst;          
  {Найти значения Prev и Curr, если существуют такие что
   Arr[Prev].Key  <= Arr[Index].Key <= Arr[Curr].Key}
  ValuePrevCurr(InpCurr, PrevI, InpArr); 
  IF PrevI = 0  {Первый элемент в списке}
  THEN
    InpFirst := InpIndex
  ELSE
    InpArr[PrevI].Next := InpIndex
END;
    
BEGIN {InsertionSort}
  First := 0;
  Index := 0;
  WHILE NOT EOLN      
  DO
    BEGIN
      {Помещать запись в список, если позволяет пространство, 
      иначе игнорировать и сообщать об ошибке}
      Index := Index + 1;
      IF Index > Max
      THEN
        BEGIN
          READ(Extra);
          WRITELN('Сообщение содержит: ', Extra, '. Игнорируем.');
        END
      ELSE
        BEGIN
          READ(Arr[Index].Key);
          {Включение Arr[Index] в связанный список}
          Insert(Arr, First, Curr, Index);                      
        END
    END; {WHILE}
  {Печать списка начиная с Arr[First]}      
  PrintMes(First, Arr);
END.  {InsertionSort}



