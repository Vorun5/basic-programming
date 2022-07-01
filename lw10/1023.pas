PROGRAM Wee(INPUT, OUTPUT);
VAR
  Ch1, Ch2, Ch3, Ch4:CHAR;
BEGIN
  Ch1 := ' ';
  Ch2 := ' ';
  Ch3 := ' ';
  Ch4 := ' ';
  WHILE NOT EOLN                                  
  DO
  BEGIN
    Ch1 := Ch2;
    Ch2 := Ch3;
    Ch3 := Ch4;
    READ(Ch4);
    WRITE(Ch4);
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
    IF (Ch2 = ';') AND (Ch3 = ';') AND (Ch4 = ' ')
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
      END                 
  END
END.
