PROGRAM InsertSort2(INPUT, OUTPUT);
TYPE 
  NodePtr = ^Node;
  Node = RECORD
           Next: NodePtr;
           Key: CHAR
         END;
VAR
  FirstPtr, NewPtr: NodePtr;
  
PROCEDURE PrintMes(InpFirstPtr: NodePtr);
VAR
  P: NodePtr;
BEGIN
  P := InpFirstPtr;
  WHILE P <> NIL
  DO
    BEGIN
      WRITE(P^.Key);
      P := P^.Next
    END
END;

PROCEDURE ValuePrevCurr(VAR InpCurr, InpPrev, InpNewPtr: NodePtr);
VAR
  B: BOOLEAN;
BEGIN
  B := FALSE;
  WHILE (InpCurr <> NIL) AND NOT B
  DO
  IF InpNewPtr^.Key > InpCurr^.Key
  THEN
    BEGIN
      InpPrev := InpCurr;
      InpCurr := InpCurr^.Next
    END
  ELSE
    B := TRUE
END;

PROCEDURE Insert(VAR InpFirstPtr, InpNewPtr: NodePtr);
VAR
  PrevI, CurrI: NodePtr;
BEGIN
  {2.1. Поместить NewPtr в надлежащее место}
  PrevI := NIL;
  CurrI := InpFirstPtr;
  {2.1.1 Найдем значение Prev и Curr, такие что Prev^.Key <= NewPtr^.Key <= Curr^.Key}
  ValuePrevCurr(CurrI, PrevI, InpNewPtr);
  InpNewPtr^.Next := CurrI;
  IF PrevI = NIL 
  THEN
    InpFirstPtr := InpNewPtr
  ELSE
    PrevI^.Next := InpNewPtr
END;
  
BEGIN {InsertSort2}
  FirstPtr := NIL;
  WHILE NOT EOLN
  DO
    BEGIN
      NEW(NewPtr);
      READ(NewPtr^.Key);
      Insert(FirstPtr, NewPtr)             
    END;  
  {2.2. Печать значений начиная с FirstPtr^.Key}
  PrintMes(FirstPtr)    
END.  {InsertSort2}
