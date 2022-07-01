PROGRAM RGROne(INPUT, OUTPUT);
USES 
  Kit; 
VAR
  TreeOfWords: Tree;
  WordAndNum: WordNum;
  TSort, TInput, TOutput: TEXT; 
BEGIN{RGROne} 
  WRITELN('RGROne запускается!');  
  ASSIGN(TSort, 'C:\Users\user\Desktop\RGROne\Sort.txt');
  ASSIGN(TInput, 'C:\Users\user\Desktop\RGROne\INPUT.txt');  
  ASSIGN(TOutput, 'C:\Users\user\Desktop\RGROne\OUTPUT.txt');
  CompileText(TInput, TSort);
  WRITELN('RGROne после SortText работает!');   
  RESET(TInput);     
  RESET(TSort);
  WHILE NOT EOF(TSort)
  DO
    BEGIN
      READ(TSort, WordAndNum.Word);       
      Insert(TreeOfWords, WordAndNum);
      IF EOLN(TSort)
      THEN
        READLN(TSort)     
      END;
  REWRITE(TOutput);
  PrintTree(TreeOfWords, TOutput)        
END.{RGROne}
