UNIT Kit;
INTERFACE
CONST 
  WhiteList  = ['A'..'Z', 'a'..'z'];                                                                                         
TYPE
  Tree = ^NodeType;
  NodeType = RECORD
               Str: STRING;
               NumOfWord: INTEGER;
               LLink, RLink: Tree
             END;     
  WordNum = RECORD
              Word: STRING;
              Num: INTEGER
            END;
PROCEDURE CompileText(VAR TextIn, TextOut: TEXT);
PROCEDURE PrintTree(Ptr: Tree; VAR TPrint: TEXT);
PROCEDURE Insert(VAR Ptr: Tree; VAR WordAndNum: WordNum);

IMPLEMENTATION
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
      WHILE (TextReader IN WhiteList) AND NOT EOLN(TextIn)
      DO
        BEGIN   
          WRITE(TextOut, TextReader);            
          READ(TextIn, TextReader);
        END; 
      IF (TextReader IN WhiteList) 
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

PROCEDURE Insert(VAR Ptr: Tree; VAR WordAndNum: WordNum);
BEGIN{Insert} 
  IF Ptr = NIL
  THEN
    BEGIN                   
      NEW(Ptr);
      Ptr^.Str := WordAndNum.Word;
      WordAndNum.Num := 1;
      Ptr^.NumOfWord := WordAndNum.Num;
      Ptr^.LLink := NIL;
      Ptr^.RLink := NIL      
    END
  ELSE
    BEGIN
      IF Ptr^.Str = WordAndNum.Word
      THEN
        Ptr^.NumOfWord := Ptr^.NumOfWord + 1; 
      IF Ptr^.Str > WordAndNum.Word
      THEN   
        Insert(Ptr^.LLink, WordAndNum);  
      IF Ptr^.Str < WordAndNum.Word
      THEN
        Insert(Ptr^.RLink, WordAndNum)
    END;
  WRITELN('Insert работает!')
END;{Insert} 

PROCEDURE PrintTree(Ptr: Tree; VAR TPrint: TEXT);
BEGIN {PrintTree}
  IF Ptr <> NIL
  THEN  
    BEGIN  
      PrintTree(Ptr^.LLink, TPrint);
      WRITE(TPrint, Ptr^.Str);
      WRITE(TPrint, ' <=>  ');
      WRITELN(TPrint, Ptr^.NumOfWord);       
      PrintTree(Ptr^.RLink, TPrint);
      DISPOSE(Ptr){чистим указатель}
    END;
  WRITELN('PrintTree работает!')
END; {PrintTree}

BEGIN{Kit}
END.{Kit}
