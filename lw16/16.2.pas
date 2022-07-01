PROGRAM TestRemove(INPUT, OUTPUT);
  {��⠥� ��ப� �� �室� ,�ய�᪠�� �� �१ RemoveExtraBlanks}
USES Queue;
VAR
  Ch: CHAR;
PROCEDURE RemoveExtraBlanks;
  {������ ��譨e �஡��� ����� ᫮���� �� ����� ��ப�}
VAR
  Ch ,Blank, LineEnd: CHAR;
BEGIN {RemoveExtraBlanks}
  Blank := ' ';
  LineEnd :='$';
  AddQ(LineEnd); {����砥� ����� ⥪�� � ��।�}
  HeadQ(Ch);
  {㤠�塞 �஡���}
  WHILE Ch <> LineEnd
  DO
    BEGIN
      {�⠥� ᫮��}
       WHILE (Ch <> Blank) AND (Ch <> LineEnd)
       DO
         BEGIN
           AddQ(Ch);
           DelQ;
           HeadQ(Ch)
         END;
      {㤠�塞 �஡���}
      WHILE Ch = Blank
      DO
        BEGIN
          DelQ;
          HeadQ(Ch)
        END;
      {��⠢�塞 �஡�� ����� ᫮����}
       IF Ch <> LineEnd
       THEN
         AddQ(Blank)
    END;
  DelQ {㤠塞 LineEnd �� ��।�}
END; {RemoveExtraBlanks}
 
BEGIN {TestRemove}
  EmptyQ;
  WRITE('����:');
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      //WRITE(Ch);
      AddQ(Ch);
    END;
  //WRITELN;
  RemoveExtraBlanks;
  WRITE('�����:');
  HeadQ(Ch);
  WHILE Ch <> '#'
  DO
    BEGIN
      WRITE(Ch);
      DelQ;
      HeadQ(Ch)
    END;
  WRITELN
END. {TestRemove}
