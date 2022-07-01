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
  WRITELN(F1, '#');
  {DP 1.2 ����஢��� F1 � OUTPUT, �ᯮ���� ���⥣�� SelectSort}
  WRITE(OUTPUT, 'SORTED DATA:');
  RESET(F1);
  READ(F1, Ch);
  WHILE Ch <> '#'
  DO { Ch <> '#' � Ch1 - ���� ᨬ��� F1}
    BEGIN
      {DP 1.2.1 �롨ࠥ� ��������� �� F1 b �����㥬 ���⮪ F1 � F2}
      REWRITE(F2);
      Min := Ch;
      READ(F1, Ch);
      WHILE Ch <> '#'
      DO { Ch <> '#' � Ch1 - ���� ᨬ��� F1}
        BEGIN
          {DP 1.2.1.1 �롨ࠥ� ��������� �� (Ch, Min)
           �����㥬 ��ன ᨬ��� � F2}
          {IF Ch < Min
  	  THEN  {Ch  ��������� �� (Ch, Min)}
    	    {BEGIN
	      WRITE(F2, Min);
	      Min := Ch;
	    END
	  ELSE} {Min  ��������� �� (Ch, Min)}
	    {WRITE(F2, Ch);
            READ(F1, Ch)}
        END;
      WRITELN(F2, '#');
      WRITE(OUTPUT, Min);
      {DP 1.2.2 �����㥬 F2 � F1}
      {RESET(F2);
      REWRITE(F1);
      READ(F2, Ch);
      WHILE Ch <> '#'
      DO
        BEGIN
          WRITE(F1, Ch);
          READ(F2, Ch)
        END;
      WRITELN(F1, '#');}
      RESET(F1);
      READ(F1, Ch)
    END;
  WRITELN(OUTPUT)
END. {SelectSort}
