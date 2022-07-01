UNIT Queue;
INTERFACE
  PROCEDURE EmptyQ;
  PROCEDURE AddQ (VAR Elt: CHAR);
  PROCEDURE DelQ;
  PROCEDURE HeadQ(VAR Elt: CHAR);
  PROCEDURE WriteQ;
 
IMPLEMENTATION
VAR
  Q, Temp: TEXT;
 
PROCEDURE CopyOpen(VAR F1, F2: TEXT);
 {������� ��ப� �� F1 � F2 ��� RESET ��� REWRITE;
  ⠪�� ��ࠧ�� F1 ������ ���� ��⮢ ��� �⥭��,� F2 ��� �����,
  �� ���� ��ப� � ��� 䠩��� ����� ���� �� ����� }
VAR
  Ch: CHAR;
BEGIN {CopyOpen}
  WHILE NOT EOLN (F1)
  DO
    BEGIN
      READ(F1, Ch);
      WRITE(F2, Ch)
    END
END;{CopyOpen}
 
PROCEDURE EmptyQ;
{Q := <,/,R>}
BEGIN {EmptyQ}
  REWRITE(Q);
  WRITELN(Q);
  RESET(Q)
END{EmptyQ};
 
PROCEDURE AddQ(VAR Elt: CHAR);{Q = <,x/,R>,��� x ��ப� � Elt = a --> Q = <,xa/,R> }                                               
BEGIN {AddQ}
  REWRITE(Temp);
  CopyOpen(Q, Temp);
  WRITELN(Temp, Elt);
  RESET(Temp);
  REWRITE(Q);
  CopyOpen(Temp, Q);
  WRITELN(Q);
  RESET(Q)
END {AddQ};
 
PROCEDURE DelQ;
  {(Q = <,/,R> -->)|
   (Q = <,ax/,R>,��� a ᨬ��� � x ��ப�  -->
     Q:= <,x/,R> }
VAR
  Ch: CHAR;
BEGIN {DelQ}
  {㤠�塞 ���� ����� �� Q}; 
  READ(Q, Ch);
  IF NOT EOF(Q)
  THEN {�� ���⮩}
    BEGIN
      REWRITE(Temp);
      CopyOpen(Q, Temp);
      WRITELN(Temp);
      {�����㥬 Temp � Q}
      RESET(Temp);
      REWRITE(Q);
      CopyOpen(Temp, Q);
      WRITELN(Q);
    END;
  RESET(Q)
END {DelQ};
 
PROCEDURE HeadQ(VAR Elt: CHAR);
  {(Q = <,/,R> --> Elt := '#')|
   (Q = <,ax/,R>,��� a ᨬ��� � x ��ப�  -->
     Elt:= 'a' }
BEGIN  {HeadQ}
  IF NOT EOLN(Q)
  THEN
    READ(Q, Elt)
  ELSE
    Elt := '#';
  RESET(Q)
END{HeadQ};
 
PROCEDURE WriteQ;
  { (Q = <,x/,R> � OUTPUT =<y,,W>,��� y � x ��ப�  -->
     OUTPUT := <y&x/,,W> }
BEGIN {WriteQ}
  CopyOpen(Q, OUTPUT);
  WRITELN(OUTPUT);
  RESET(Q)
END{WriteQ};
 
BEGIN
END.
