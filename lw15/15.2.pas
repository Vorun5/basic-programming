PROGRAM SarahRevere(INPUT, OUTPUT);
{DP1 Печать сообщения о том как идут британцы, в зависимости
от того, первым во входе встречается 'land' или 'sea'.}
VAR
  W1, W2, W3, W4, Looking: CHAR;
PROCEDURE Init(VAR I1, I2, I3, I4, Switch: CHAR); {инициализация}
BEGIN {Init}
  I1 := ' ';
  I2 := ' ';
  I3 := ' ';
  I4 := ' ';
  Switch := 'Y';
END; {Init}
PROCEDURE SarahMessage(VAR M: CHAR);{сообщения Сары}
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
PROCEDURE MoveWin(VAR I1, I2, I3, I4, Switch: CHAR);{Движение окна и проверка на конец}
BEGIN {MoveWin}
  I1 := I2;
  I2 := I3;
  I3 := I4;
  READ(W4);
  IF W4 = '#'
  THEN {Конец данных}
    Switch := 'N';
END; {MoveWin}
PROCEDURE Land(VAR I1, I2, I3, I4, Switch: CHAR);{проверка еа land}
BEGIN {Land}
  IF I1 = 'l'
  THEN
    IF I2 = 'a'
    THEN
      IF I3 = 'n'
      THEN
        IF I4 = 'd'
        THEN {'land' найдено}
          Switch := 'L';
END; {Land}
PROCEDURE Sea(VAR I1, I2, I3, Switch: CHAR);{проверка еа sea}
BEGIN {Sea}
  IF I1 = 's'
  THEN
    IF I2 = 'e'
    THEN
      IF I3 = 'a'
      THEN {'sea' найдено}
        Switch := 'S';
END; {Sea}
BEGIN {SarahRevere}
  {DP1.1 инициализация W1,W2,W3,W4,Looking}
  Init(W1, W2, W3, W4, Looking);
  WHILE Looking = 'Y'
  DO
    BEGIN
      {DP1.2 Двигать окно, проверять конец данных}
      MoveWin(W1, W2, W3, W4, Looking);
      {DP1.3 Проверка окна для  'land'}
      Land(W1, W2, W3, W4, Looking);
      {DP1.4  Проверка окна для 'sea'}
      Sea(W2, W3, W4, Looking);	
    END;
  {DP1.5 создать сообщение Sarah}
  SarahMessage(Looking);
END. {Sarah revere}
