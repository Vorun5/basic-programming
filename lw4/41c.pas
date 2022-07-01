PROGRAM PaulRevere(INPUT, OUTPUT);
{Печать соответствующего сообщения, зависящего от величины
 на входе:  '...by land'  для L;  '...by sea'  для LL;
 иначе печать сообщения об ошибке}
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