PROGRAM MinSort3(INPUT, OUTPUT);
{DP 3 ������ 3-��ப� �� INPUT � OUTPUT }
VAR Ch1, Ch2, Ch3: CHAR;
BEGIN {MinSort3}
  READ(Ch1, Ch2, Ch3) ;
  WRITELN('�室�� ����� ', Ch1, Ch2, Ch3);
  WRITE('����஢���� ����� ');
  {DP 3.1 ������ ������ �  OUTPUT, ��࠭��� ᮤ�ন��� � Ch1 and Ch2}
  {DP 3.2 ����஢��� Ch1, Ch2 � OUTPUT}
  WRITELN(Ch1, Ch2, Ch3)
END. {Minsort3}
