PROGRAM PaulRevere(INPUT, OUTPUT);
{����� ᮮ⢥�����饣� ᮮ�饭��, ������饣� �� ����稭�
 �� �室�:  '...by land'  ��� L;  '...by sea'  ��� LL;
 ���� ����� ᮮ�饭�� �� �訡��}
VAR
  Lanterns: TEXT;
BEGIN {PaulRevere}
  {Read Lanterns}
  READ(Lanterns);
  {Issue Paul Revere's message}
  IF Lanterns = 'L'
  THEN
    WRITELN('The British are coming by land.')
  ELSE
    IF Lanterns = 'LL'
    THEN
      WRITELN('The British are coming by sea.')
    ELSE
      WRITELN('The North Church shows only ''', Lanterns, '''.')
END. {PaulRevere}