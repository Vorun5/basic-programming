PROGRAM Wee(INPUT, OUTPUT);
VAR
  Swich, Ch1, Ch2:CHAR;
BEGIN
  Swich := 'n';
  Ch1 := ' ';
  Ch2 := ' ';
  WHILE Swich <> 'e'                                   
  DO
  BEGIN
    Ch1 := Ch2;
    READ(Ch2);
    Swich := 'n';
    IF (Ch1 = 'N') AND (Ch2 = ' ') AND (Swich = 'n')
    THEN
      BEGIN
        WRITELN;
        WRITE("  ");
        Swich := 'y'
      END;
    IF (Ch1 = ';') AND (Ch2 = ' ') AND (Swich = 'n')
    THEN
      BEGIN {READ(ch); WRITELN()}
        WRITELN;
        WRITE("  ");
        Swich := 'y'
      END;
    IF (Ch1 = ';') AND (Ch2 = 'W') AND (Swich = 'n')
    THEN
      BEGIN {;WRITELN}
        WRITELN;
        WRITE("  W");
        Swich := 'y'
      END;
    IF (Ch1 = ';') AND (Ch2 = 'R') AND (Swich = 'n')
    THEN
      BEGIN {;READ}
        WRITELN('');
        WRITE("  R");
        Swich := 'y'
      END;
    IF (Ch1 = ')') AND (Ch2 = ' ') AND (Swich = 'n')
    THEN
      BEGIN {WRITELN(ch); END.}
        WRITELN(Ch2);
        Swich := 'y'
      END;
    IF (Ch1 = ')') AND (Ch2 = 'E') AND (Swich = 'n')
    THEN
      BEGIN {WRITELN(ch);END.}
        WRITELN('');
        WRITE("E");
        Swich := 'y'
      END;         
    IF Swich = 'n' 
    THEN
      BEGIN
        WRITE(Ch2);
        Swich := 'y'
      END;
    IF Ch2 = '.' 
    THEN
      BEGIN
        WRITELN;
        Swich := 'e'
      END         
  END
END.

