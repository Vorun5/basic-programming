UNIT unitrgr;
INTERFACE
CONST 
  WhiteList  = ['A'..'Z', 'a'..'z', 'А' .. 'Я', 'а' .. 'я', 'ё', 'Ё'];                                                                                         
TYPE
  Tree = ^NodeType;
  NodeType = RECORD
               Str: STRING;
               NumOfWord: INTEGER;
               LLink, RLink: Tree
             END;     
PROCEDURE SortText(VAR TInput, TSort: TEXT);
PROCEDURE PrintTree(Ptr: Tree; VAR TPrint: TEXT);
PROCEDURE Insert(VAR Ptr: Tree; VAR Word: STRING);

IMPLEMENTATION
PROCEDURE SortText(VAR TInput, TSort: TEXT);
VAR 
  Ch: CHAR;
BEGIN{SortText}
  Ch := '';
  RESET(TInput);
  REWRITE(TSort);  
  WHILE NOT EOF(TInput)
  DO      
    BEGIN
      READ(TInput, Ch);    
      WHILE (Ch IN WhiteList) AND NOT EOLN(TInput)
      DO
        BEGIN   
          WRITE(TSort, Ch);            
          READ(TInput, Ch);
        END; 
      IF (Ch IN WhiteList) 
      THEN  
        WRITE(TSort, Ch);  
      WRITELN(TSort);                       
      IF EOLN(TInput)
      THEN
        READLN(TInput); 
    END; 
END;{SortText} 

PROCEDURE Insert(VAR Ptr: Tree; VAR Word: STRING);
BEGIN{Insert} 
  IF Ptr = NIL
  THEN
    BEGIN                   
      NEW(Ptr);
      Ptr^.Str := Word;
      Ptr^.NumOfWord := 1;
      Ptr^.LLink := NIL;
      Ptr^.RLink := NIL      
    END
  ELSE
    BEGIN
      IF Ptr^.Str = Word
      THEN
        Ptr^.NumOfWord := Ptr^.NumOfWord + 1; 
      IF Ptr^.Str > Word
      THEN   
        Insert(Ptr^.LLink, Word);  
      IF Ptr^.Str < Word
      THEN
        Insert(Ptr^.RLink, Word)
    END
END;{Insert} 

PROCEDURE PrintTree(Ptr: Tree; VAR TPrint: TEXT);
BEGIN {PrintTree}
  IF Ptr <> NIL
  THEN  
    BEGIN  
      PrintTree(Ptr^.LLink, TPrint);
      WRITE(TPrint, Ptr^.Str);
      WRITE(TPrint, ' ');
      WRITELN(TPrint, Ptr^.NumOfWord);       
      PrintTree(Ptr^.RLink, TPrint);
      DISPOSE(Ptr){Чистит указатель}
    END
END; {PrintTree}

BEGIN{unitrgr}
END.{unitrgr}

