PROGRAM SelectSort(INPUT, OUTPUT);
{DP 1 ������� ᨬ����, �।�����騥 #, �� INPUT � OUTPUT.
 �ணࠬ�� �뤠�� �訡��, �᫨ � INPUT ��������� #}
VAR
  Ch, Min: CHAR;
  F1, F2: TEXT;
BEGIN {SelectSort}
  {DP 1.1 ����஢��� INPUT � F1 � �� � OUTPUT}
  REWRITE(F1);
  WRITE(OUTPUT, 'INPUT DATA: ');
  READ(INPUT, Ch);
  WHILE Ch <> '#'  
  DO
    BEGIN
      WRITE(F1, Ch);
      WRITE(OUTPUT, Ch);
      READ(INPUT, Ch)
    END;
  WRITELN(OUTPUT);
  WRITELN(F1, '#')
END. {SelectSort}
