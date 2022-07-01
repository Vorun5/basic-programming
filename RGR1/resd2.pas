PROGRAM WordCulculator(INPUT, OUTPUT);
USES 
  FirstUnit; 
VAR
  WordArray: StringType;
  NumberOfWord, WordCount, IndexEnter: INTEGER;
  StringForSearchedWord: STRING; 
  TextReader: CHAR;
  Recall: Transiton;
  TreeOut: Tree;
  Wass: SET OF CHAR;
  TextOfSearching, TextForReading, TextInp, TextOut: TEXT; 
BEGIN{WordCulculator}   {koeficet 0,8}
  ASSIGN(TextOfSearching, 'C:\Users\user\Desktop\RGR1\File.txt');
  ASSIGN(TextInp, 'C:\Users\user\Desktop\RGR1\SearchingText.txt');  
  ASSIGN(TextOut, 'C:\Users\user\Desktop\RGR1\result.txt');
  WRITE('Esli ne vivedetsa Ona rabotaet to programma ne rabotfet: ');   
  CompileText(TextInp, TextOfSearching); {Procedura kotoraia pishet iz teksta v file}
  WRITE('Ona rabotaet');   
  RESET(TextInp);    
  NumberOfWord := 1; 
  RESET(TextOfSearching);
  StringForSearchedWord := '';  
  IF NOT EOF(TextOfSearching)
  THEN
    WHILE NOT EOF(TextOfSearching)
    DO
      BEGIN
        IF NOT EOF(TextOfSearching) 
        THEN
          BEGIN
            READ(TextOfSearching, Recall.StrTransit);
          END;    
        InsertS(TreeOut, Recall);
        IF EOLN(TextOfSearching)
        THEN
          READLN(TextOfSearching);
        StringForSearchedWord := '';      
      END;
 {  Wass :=  WordSymbols;   
  FOR IndexEnter := 1 TO Wass[0]
  DO
    BEGIN 
      READ(Wass[IndexEnter]);
    END; }             
  {REWRITE(TextOut);              
  IndexEnter := 1;
  WordArray[1].Lenght := 0;
  FOR IndexEnter := 1 TO NumberOfWord
  DO
    BEGIN 
      WordArray[1].Lenght := WordArray[1].Lenght + 1;
      Insert(TreeOut, WordArray);
    END;   }
  REWRITE(TextOut);
  PrintTree(TreeOut, TextOut);     
END.{WordCulculator}
