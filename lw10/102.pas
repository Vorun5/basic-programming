PROGRAM Indent(INPUT, OUTPUT);
VAR
  Ch1, Ch2:CHAR;
BEGIN
  Ch1 := ' ';
  Ch2 := ' ';
  WHILE NOT EOLN                                  
  DO
  BEGIN
    Ch1 := Ch2;
    READ(Ch2);
    WRITE(Ch2);
    IF (Ch1 = 'N') AND (Ch2 = ' ')
    THEN
      BEGIN
        WRITELN;
        WRITE("  ")
      END;
    IF (Ch1 = ';') AND (Ch2 = ' ')
    THEN
      BEGIN
        WRITELN;
        WRITE("  ")
      END;
    IF (Ch1 = ')') AND (Ch2 = ' ')
    THEN
      WRITELN;              
  END
END.


