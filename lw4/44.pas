PROGRAM SarahRevere(INPUT, OUTPUT);
{DP1 ����� ᮮ�饭�� � ⮬ ��� ���� ��⠭��, � ����ᨬ���
�� ⮣�, ���� �� �室� ����砥��� 'land' ��� 'sea' ��� 'air'.}
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
     {DP1.3 �஢�ઠ ���� ���  'land'}
     IF W1 = 'l'
     THEN
       IF W2 = 'a'
       THEN
         IF W3 = 'n'
         THEN
           IF W4 = 'd'
           THEN {'land' �������}
             Looking := 'L';
      {DP1.4  �஢�ઠ ���� ��� 'sea'}
      IF W2 = 's'
      THEN
        IF W3 = 'e'
        THEN
          IF W4 = 'a'
          THEN {'sea' �������}
            Looking := 'S';
      {DP1.5  �஢�ઠ ���� ��� 'sea'}
      IF W2 = 'a'
      THEN
        IF W3 = 'i'
        THEN
          IF W4 = 'r'
          THEN {'sea' �������}
            Looking := 'A';	
    END;
  {DP1.6 ᮧ���� ᮮ�饭�� Sarah}
  IF Looking = 'L'
  THEN
    WRITELN('The British are coming by land.')
  ELSE
    IF Looking = 'S'
    THEN
      WRITELN('The British coming by sea.')
  ELSE
    IF Looking = 'A'
    THEN
      WRITELN('The British coming by air.')
  ELSE
    WRITELN('Sarah didn''t say')
END. {Sarah revere}
