PROGRAM BubbleSort(INPUT, OUTPUT);
{DP 8 �����㥬 ����� ��ப� INPUT � OUTPUT}
VAR
  Sorted, Ch, Ch1, Ch2: CHAR;
  F1, F2: TEXT;
BEGIN {BubbleSort}
  {DP 8.2 �����㥬 INPUT � F1 }
  REWRITE(F1);
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      WRITE(F1, Ch);
      WRITE(Ch)
    END;
  WRITELN(F1);
  Sorted := 'N';
  WHILE Sorted ='N'
  DO
    BEGIN
      Sorted := 'Y'
      { �����㥬 F1 � F2,�஢���� �����஢�������
       � ����⠢��� ���� �ᥤ��� ᨬ���� �� ���浪�}
      { �����㥬 F2 � F1 }
    END
  { �����㥬 F1 � OUTPUT }
END. {BubbleSort}
