PROGRAM IFSort3(INPUT, OUTPUT);
{DP1 ������� 3-��ப� �� INPUT � OUTPUT}
VAR
  Ch1, Ch2, Ch3: CHAR;
BEGIN {IFSort3}
  READ(Ch3, Ch2, Ch1);
  WRITE('�室�� ����� (');
  WRITE(Ch1, ',', Ch2, ',', Ch3);
  WRITE(')');
  WRITE(' ��������� � (');
  BEGIN {DP 2.1 ����㥬 Ch1, Ch2, Ch3 � OUTPUT }
    IF Ch1 < Ch2
    THEN
      {DP 2.1.1 Ch1 < Ch2:����㥬 Ch1, Ch2, Ch3 � OUTPUT}
      IF Ch2 < Ch3
      THEN {Ch1 < Ch2 < Ch3:����㥬 Ch1, Ch2, Ch3 � OUTPUT}
        WRITE(Ch1, ',', Ch2, ',', Ch3)
      ELSE
        {DP 2.1.1.1 Ch1 < Ch2, Ch3 <= Ch2:����㥬 Ch1, Ch2, Ch3 � OUTPUT}
        IF Ch1 < Ch3
        THEN {Ch1 < Ch3 <= Ch2:����㥬 Ch1, Ch2, Ch3 � OUTPUT}
          WRITE(Ch1, ',', Ch3, ',', Ch2)
        ELSE {Ch3 <= Ch1 < Ch2:����㥬 Ch1, Ch2, Ch3 � OUTPUT}
          WRITE(Ch3, ',', Ch1, ',', Ch2)
    ELSE
      {DP 2.1.2 Ch2 <= Ch1:����㥬 Ch1, Ch2, Ch3 � OUTPUT}
      IF Ch1 < Ch3
      THEN {Ch2 <= Ch1 < Ch3:����㥬 Ch1, Ch2, Ch3 � OUTPUT}
        WRITE(Ch2, ',', Ch1, ',', Ch3)
      ELSE
        {DP 2.1.2.1 Ch2 <= Ch1, Ch3 <= Ch1:����㥬 Ch1, Ch2, Ch3 � OUTPUT}
        IF Ch2 < Ch3
        THEN {Ch2 < Ch3 <= Ch1:����㥬 Ch1, Ch2, Ch3 � OUTPUT}
          WRITE(Ch2, ',', Ch3, ',', Ch1)
        ELSE {Ch3 <= Ch2 <= Ch1:����㥬 Ch1, Ch2, Ch3 � OUTPUT}
          WRITE(Ch3, ',', Ch2, ',', Ch1)
  END;
  WRITELN(').')
END. {IFsort3}
