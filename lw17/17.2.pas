PROGRAM SarahRevere(INPUT, OUTPUT); 
VAR
  W1, W2, W3, W4: CHAR;
  Looking, Land, Sea: BOOLEAN;

PROCEDURE Init; 
BEGIN {Init}
  W1 := ' ';
  W2 := ' ';
  W3 := ' ';
  W4 := ' ';
  Looking := TRUE;
  Land := FALSE;
  Sea := FALSE
END; {Init}

PROCEDURE MoveWin(VAR Switch: BOOLEAN);
BEGIN{MoveWin} 
  W1 := W2;
  W2 := W3;
  W3 := W4;
  READ(W4);
  IF W4 = '#'
  THEN
    Switch := FALSE
END;{MoveWin}

PROCEDURE LandCheck;
BEGIN{LandCheck} 
  IF (W1 = 'l') AND (W2 = 'a') AND (W3 = 'n') AND (W4 = 'd')
  THEN
    Land := TRUE        
END;{LandCheck}

PROCEDURE SeaCheck;
BEGIN{SeaCheck} 
  IF (W1 = 's') AND (W2 = 'e') AND (W3 = 'a')
  THEN
    Sea := TRUE        
END;{SeaCheck}
   
PROCEDURE SarahMessage;
BEGIN{SarahMessage}
  IF Land
  THEN
    WRITE('The British are coming by land')
  ELSE
    IF Sea
    THEN
      WRITE('The British are coming by sea')
    ELSE
      WRITE('Sarah didnt say')
END;{SarahMessage}

BEGIN {SarahRevere}   
  {�������������}
  Init;
  {���������� �������}
  WHILE Looking AND NOT(Land OR Sea)
  DO
    BEGIN
      {�������� ����}
      MoveWin(Looking);
      {�������� ��  land}
      LandCheck;
      {�������� �� sea}
      SeaCheck
    END;  
  {��������� Sarah}
  SarahMessage
END.  {SarahRevere}
