PROGRAM SarahRevere(INPUT, OUTPUT);
{DP1 ����� ᮮ�饭�� � ⮬ ��� ���� ��⠭��, � ����ᨬ���
�� ⮣�, ���� �� �室� ����砥��� 'land' ��� 'sea'.}
VAR
  W1, W2, W3, W4, Looking: CHAR;
BEGIN {SarahRevere}
  {DP1.1 ���樠������ W1,W2,W3,W4,Looking}
  W1 := ' ';
  W2 := ' ';
  W3 := ' ';
  W4 := ' ';
  Looking := 'Y';
  WHILE Looking = 'Y'
  DO
    BEGIN
      {DP1.2 ������� ����, �஢����� ����� ������}
      W1 := W2;
      W2 := W3;
      W3 := W4;
      READ(W4);
      IF W4 = '#'
      THEN {����� ������}
        Looking := 'N';
	WRITELN(W1);
        WRITELN(W2);
        WRITELN(W3);
        WRITELN(W4)
  	{ �஢�ઠ ���� ���  'land'}
  	{ �஢�ઠ ���� ��� 'sea'}
    END;
{ᮧ���� ᮮ�饭�� Sarah}
END. {Sarah revere}



