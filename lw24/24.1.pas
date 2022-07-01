PROGRAM TreeSort(INPUT, OUTPUT);
TYPE 
  Tree = ^NodeType;
  NodeType = RECORD
               Ch: CHAR;
               LLink, RLink: Tree;
             END;
VAR
  Root: Tree;
  Ch: CHAR;
  
PROCEDURE Insert(VAR Ptr: Tree; Data: CHAR); {Создаём лист со значением Data}
BEGIN {Insert}
  WRITELN('|-_-_-|');
  WRITELN;
  IF Ptr = NIL
  THEN
    BEGIN 
      NEW(Ptr);
      Ptr^.Ch := Data;
      Ptr^.LLink := NIL;
      Ptr^.RLink := NIL
    END
  ELSE
    IF Ptr^.Ch > Data
    THEN
      Insert(Ptr^.LLink, Data)
    ELSE
      Insert(Ptr^.RLink, Data)
END;  {Insert}

PROCEDURE PrintTree(VAR Ptr: Tree);
BEGIN {PrintTree}
  IF Ptr <> NIL
  THEN  
    BEGIN
      PrintTree(Ptr^.LLink); {печатает ветку слева}
      WRITE(Ptr^.Ch); {вершину}
      PrintTree(Ptr^.RLink) {ветку справа}
    END
END;  {PrintTree}


BEGIN {TreeSort}
  Root := NIL;
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      Insert(Root, Ch)
    END;  
  PrintTree(Root)
END.  {TreeSort}
