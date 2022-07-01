PROGRAM Indent(INPUT, OUTPUT);
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
    IF (Ch1 = 'E') AND (Ch2 = 'G') AND (Ch3 = 'I') AND (Ch4 = 'N')
    THEN
      BEGIN
        WRITE(Ch4);
        WRITELN;
        WRITE("  ")
      END;
    IF (Ch3 = ')') AND (Ch4 = ';')
    THEN
      BEGIN
        WRITE(Ch4);
        WRITELN;
        WRITE("  ")
      END;
    IF (Ch1 = ')') AND (Ch2 = 'E') AND (Ch3 = 'N') AND (Ch4 = 'D')
    THEN
      BEGIN
        WRITELN;
      END;
    IF (Ch3 = ')') AND (Ch2 = ' ')
    THEN
      BEGIN
        WRITE(Ch4);
        WRITELN;
        WRITE("  ")
      END;
    IF (Ch1 = 'E') AND(Ch2 = 'N') AND (Ch3 = 'D') AND (Ch4 = '.')
    THEN
      BEGIN
       WRITELN;
      END;
    WRITE(Ch4);            
  END
END.



