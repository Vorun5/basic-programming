PROGRAM IFSort3(INPUT, OUTPUT);
{DP1 ������� 3-��ப� �� INPUT � OUTPUT}
VAR
    Ch1, Ch2, Ch3: CHAR;
BEGIN {IFSort3}
  READ(Ch1, Ch2, Ch3);
  WRITELN('�室�� ����� ', Ch1, Ch2, Ch3);
  WRITE('C���஢���� ����� ');
  BEGIN {DP 2.1 ����㥬 Ch1, Ch2, Ch3 � OUTPUT }
    IF Ch1 < Ch2
    THEN
      {DP 2.1.1 Ch1 < Ch2:����㥬 Ch1, Ch2, Ch3 � OUTPUT}
      IF Ch2 < Ch3
      THEN {Ch1 < Ch2 < Ch3:����㥬 Ch1, Ch2, Ch3 � OUTPUT}
        WRITELN(Ch1, Ch2, Ch3)
      ELSE
        {DP 2.1.1.1 Ch1 < Ch2, Ch3 <= Ch2:����㥬 Ch1, Ch2, Ch3 � OUTPUT}
        IF Ch1 < Ch3
        THEN {Ch1 < Ch3 <= Ch2:����㥬 Ch1, Ch2, Ch3 � OUTPUT}
          WRITELN(Ch1, Ch3, Ch2)
        ELSE {Ch3 <= Ch1 < Ch2:����㥬 Ch1, Ch2, Ch3 � OUTPUT}
          WRITELN(Ch3, Ch1, Ch2)
    ELSE
      {DP 2.1.2 Ch2 <= Ch1:����㥬 Ch1, Ch2, Ch3 � OUTPUT}
      IF Ch1 < Ch3
      THEN {Ch2 <= Ch1 < Ch3:����㥬 Ch1, Ch2, Ch3 � OUTPUT}
        WRITELN(Ch2, Ch1, Ch3)
      ELSE
        {Ch2 <= Ch1, Ch3 <= Ch1:����㥬 Ch1, Ch2, Ch3 � OUTPUT}
        WRITELN('�� �।�ᬮ�७�')
  END
END. {IFsort3}
