PROGRAM RGROne(INPUT, OUTPUT);
USES 
  unitrgr; 
VAR
  TreeOfWords: Tree;
  Word: STRING;
  TSort, TInput, TOutput: TEXT; 
BEGIN{RGROne}  
  ASSIGN(TSort, 'C:\Users\user\Desktop\GG\Sort.txt');
  ASSIGN(TInput, 'C:\Users\user\Desktop\GG\INPUT.txt');  
  ASSIGN(TOutput, 'C:\Users\user\Desktop\GG\OUTPUT.txt');
  SortText(TInput, TSort); 
  RESET(TInput);     
  RESET(TSort);
  WHILE NOT EOF(TSort)
  DO
    BEGIN
      READ(TSort, Word);
      IF Word <> ''
      THEN       
        Insert(TreeOfWords, Word);
      IF EOLN(TSort)
      THEN
        READLN(TSort)     
    END;
  REWRITE(TOutput);
  PrintTree(TreeOfWords, TOutput);
  WRITELN('Програама успешно отработала <3')        
END.{RGROne}
