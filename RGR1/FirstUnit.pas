UNIT FirstUnit;
INTERFACE
CONST WordSymbols = ['A'..'Z','a'..'z','А'..'Я','а'..'я'];
                                                                                         
TYPE
  StringType = ARRAY[1 .. 500000] OF
                 RECORD
                   Word: STRING;
                   Counter, Lenght: INTEGER;  
                 END; 
  Tree = ^NodeType;
  NodeType = RECORD
               Ch: STRING;
               Intef: INTEGER;
               LLink, RLink: Tree
             END;     
  Transiton = RECORD
                StrTransit: STRING;
                IntTransit, CountTransit: INTEGER;
              END;                                          
PROCEDURE Equivalencer(VAR ArrIn: StringType; VAR StringIn: STRING; VAR NumOfWord: INTEGER; VAR TextEnter: TEXT{; VAR FlagIn: BOOLEAN});
PROCEDURE Insert(VAR Ptr: Tree;VAR Data: StringType);
PROCEDURE CompileText(VAR TextIn, TextOut: TEXT);
PROCEDURE PrintTree(Ptr: Tree;VAR TextTOOutput: TEXT);
PROCEDURE InsertS(VAR Ptra: Tree;VAR Dataa: Transiton);
IMPLEMENTATION
  
PROCEDURE Equivalencer(VAR ArrIn: StringType; VAR StringIn: STRING; VAR NumOfWord: INTEGER; VAR TextEnter: TEXT{; VAR FlagIn: BOOLEAN});{сравнивает слово с другим}
VAR
  Flag: BOOLEAN;
  Index : INTEGER;
BEGIN{Equivalencer}
  Flag := FALSE;
  Index := 1; 
  FOR Index := 1 TO NumOfWord
  DO
    BEGIN
      IF ArrIn[Index].Word = StringIn
      THEN
        BEGIN
          ArrIn[Index].Counter := ArrIn[Index].Counter + 1;
          Flag := TRUE;
        END           
    END; 
  IF NOT(Flag) 
  THEN  
    BEGIN
      NumOfWord := NumOfWord + 1;
      ArrIn[NumOfWord].Counter := 1;
      ArrIn[NumOfWord].Word := StringIn;
    END; 
END;{Equivalencer}

PROCEDURE CompileText(VAR TextIn, TextOut: TEXT);
VAR 
  TextReader: CHAR;
BEGIN{CompileText}
  TextReader := '';
  RESET(TextIn);
  REWRITE(TextOut);  
  WHILE NOT EOF(TextIn)
  DO      
    BEGIN
      READ(TextIn, TextReader);
      {WRITELN(TextReader);}     
      WHILE (TextReader IN WordSymbols) AND NOT EOLN(TextIn)
      DO
        BEGIN   
          WRITE(TextOut, TextReader);            
          READ(TextIn, TextReader);
        END; 
      IF (TextReader IN WordSymbols) 
      THEN  
        WRITE(TextOut, TextReader);  
      WRITELN(TextOut);                       
      IF EOLN(TextIn)
      THEN
        BEGIN
         { IF (TextReader IN WordSymbols)
          THEN
            WRITE(TextOut, TextReader);}
          READLN(TextIn);
        END; 
    END;
  WRITE('RABOTAET'); 
END;{CompileText}  

PROCEDURE Insert(VAR Ptr: Tree;VAR Data: StringType);{сравнивает слово с другим}
BEGIN{Insert} 
  IF Ptr = NIL
  THEN
    BEGIN 
      NEW(Ptr);
      Ptr^.Ch := Data[Data[1].Lenght].Word;
      Ptr^.Intef := Data[Data[1].Lenght].Counter;
      Ptr^.LLink := NIL;
      Ptr^.RLink := NIL;      
    END
  ELSE
    IF Ptr^.Ch > Data[Data[1].Lenght].Word
    THEN   
      Insert(Ptr^.LLink, Data)
    ELSE   
      IF Ptr^.Ch < Data[Data[1].Lenght].Word
      THEN
        Insert(Ptr^.RLink, Data)
END;{Insert}  

PROCEDURE InsertS(VAR Ptra: Tree;VAR Dataa: Transiton);{сравнивает слово с другим}
BEGIN{Insert} 
  IF Ptra = NIL
  THEN
    BEGIN                   
      NEW(Ptra);
      Ptra^.Ch := Dataa.StrTransit;
      Dataa.IntTransit := 1;
      Ptra^.Intef := Dataa.IntTransit;
      Ptra^.LLink := NIL;
      Ptra^.RLink := NIL;      
    END
  ELSE
    IF Ptra^.Ch = Dataa.StrTransit
    THEN
      Ptra^.Intef := Ptra^.Intef + 1
    ELSE  
      IF Ptra^.Ch > Dataa.StrTransit
      THEN   
        InsertS(Ptra^.LLink, Dataa)
      ELSE   
        IF Ptra^.Ch < Dataa.StrTransit
        THEN
          InsertS(Ptra^.RLink, Dataa)
END;{Insert} 

{PROCEDURE InsertForTwo(VAR Ptr: Tree;VAR Data: Transiton);
BEGIN 
  IF Ptr = NIL
  THEN
    BEGIN 
      NEW(Ptr);
      Ptr^.Ch := Data.StrTransit;
      Ptr^.Intef := Data.IntTransit;
      Ptr^.LLink := NIL;
      Ptr^.RLink := NIL;      
    END
  ELSE
    IF Ptr^.Ch > Data.StrTransit
    THEN
      BEGIN   
        Insert(Ptr^.LLink, Data);
        CountTransit := CountTransit + 1;
      END   
    ELSE   
      IF Ptr^.Ch < Data.StrTransit
      THEN
        Insert(Ptr^.RLink, Data)
END;}  


PROCEDURE PrintTree(Ptr: Tree;VAR TextTOOutput: TEXT);
BEGIN {PrintTree}
  IF Ptr <> NIL
  THEN  
    BEGIN  
      PrintTree(Ptr^.LLink, TextTOOutput);
      WRITE(TextTOOutput, Ptr^.Ch);
      WRITE(TextTOOutput, ' ');
      WRITELN(TextTOOutput, Ptr^.Intef);
      PrintTree(Ptr^.RLink, TextTOOutput);           
      DISPOSE(Ptr);{очистка ссылки}
    END
  {WRITELN }
END;  {PrintTree}

PROCEDURE PrintTreeTwo(Ptr: Tree;VAR TextTOOutput: TEXT);
BEGIN {PrintTree}
  IF Ptr <> NIL
  THEN  
    BEGIN  
      PrintTree(Ptr^.LLink, TextTOOutput);
      WRITELN(TextTOOutput, Ptr^.Ch);
      WRITE(TextTOOutput, ' ');
      WRITELN(TextTOOutput, Ptr^.Intef);
      PrintTree(Ptr^.RLink, TextTOOutput);           
      DISPOSE(Ptr);{очистка ссылки}
    END
  {WRITELN }
END;  {PrintTree}

BEGIN{Thing}

END.{Thing}
