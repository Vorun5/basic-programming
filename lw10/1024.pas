PROGRAM Wee(INPUT, OUTPUT);
VAR
  Ch1, Ch2, Ch3, Ch4, Ch5:CHAR;
BEGIN
  Ch1 := ' ';
  Ch2 := ' ';
  Ch3 := ' ';
  Ch4 := ' ';
  Ch5 := ' ';
  WHILE NOT EOLN                                  
  DO
  BEGIN
    Ch1 := Ch2;
    Ch2 := Ch3;
    Ch3 := Ch4;
    Ch4 := Ch5;
    READ(Ch5);
    WRITE(Ch5);
    IF (Ch1 = 'E') AND (Ch2 = 'G') AND (Ch3 = 'I') AND (Ch4 = 'N')
    THEN
      BEGIN
        WRITELN;
        WRITE("  ");
      END;
    IF (Ch3 = ')') AND (Ch4 = ';')
    THEN
      BEGIN
        WRITELN;
        WRITE("  ")
      END;
    IF (Ch3 = ')') AND (Ch4 = ' ')
    THEN
      BEGIN
        WRITELN
      END;
    IF (Ch1 = ')') AND (Ch2 = 'E') AND (Ch3 = 'N')
    THEN
      BEGIN
        WRITELN
      END; 
    IF (Ch3 = '(') AND (Ch4 = ' ')
    THEN
      BEGIN
        WRITELN
      END;                 
  END;
END.
