PROGRAM SarahRevere(INPUT, OUTPUT);
{DP1 ����� ᮮ�饭�� � ⮬ ��� ���� ��⠭��, � ����ᨬ���
�� ⮣�, ���� �� �室� ����砥��� 'land' ��� 'sea'.}
VAR
  W1, W2, W3, W4, Looking: CHAR;
PROCEDURE Init(VAR I1, I2, I3, I4, Switch: CHAR); {���樠������}
BEGIN {Init}
  I1 := ' ';
  I2 := ' ';
  I3 := ' ';
  I4 := ' ';
  Switch := 'Y';
END; {Init}
PROCEDURE SarahMessage(VAR M: CHAR);{ᮮ�饭�� ����}
BEGIN
  IF M = 'L'
  THEN
    WRITELN('The British are coming by land.')
  ELSE
    IF M = 'S'
    THEN
      WRITELN('The British coming by sea.')
  ELSE
    WRITELN('Sarah didn''t say')
END;
PROCEDURE MoveWin(VAR I1, I2, I3, I4, Switch: CHAR);{�������� ���� � �஢�ઠ �� �����}
BEGIN {MoveWin}
  I1 := I2;
  I2 := I3;
  I3 := I4;
  READ(W4);
  IF W4 = '#'
  THEN {����� ������}
    Switch := 'N';
END; {MoveWin}
PROCEDURE Land(VAR I1, I2, I3, I4, Switch: CHAR);{�஢�ઠ �� land}
BEGIN {Land}
  IF I1 = 'l'
  THEN
    IF I2 = 'a'
    THEN
      IF I3 = 'n'
      THEN
        IF I4 = 'd'
        THEN {'land' �������}
          Switch := 'L';
END; {Land}
PROCEDURE Sea(VAR I1, I2, I3, Switch: CHAR);{�஢�ઠ �� sea}
BEGIN {Sea}
  IF I1 = 's'
  THEN
    IF I2 = 'e'
    THEN
      IF I3 = 'a'
      THEN {'sea' �������}
        Switch := 'S';
END; {Sea}
BEGIN {SarahRevere}
  {DP1.1 ���樠������ W1,W2,W3,W4,Looking}
  Init(W1, W2, W3, W4, Looking);
  WHILE Looking = 'Y'
  DO
    BEGIN
      {DP1.2 ������� ����, �஢����� ����� ������}
      MoveWin(W1, W2, W3, W4, Looking);
      {DP1.3 �஢�ઠ ���� ���  'land'}
      Land(W1, W2, W3, W4, Looking);
      {DP1.4  �஢�ઠ ���� ��� 'sea'}
      Sea(W2, W3, W4, Looking);	
    END;
  {DP1.5 ᮧ���� ᮮ�饭�� Sarah}
  SarahMessage(Looking);
END. {Sarah revere}
