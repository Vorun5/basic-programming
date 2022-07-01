PROGRAM Indent(INPUT, OUTPUT);
VAR
  Swich, Ch1, Ch2, Ch3: CHAR;
BEGIN
  Swich := 'n';
  Ch1 := ' ';
  Ch2 := ' ';
  Ch3 := ' ';
  WHILE Swich <> 'e'                                   
  DO
  BEGIN
    Ch1 := Ch2;
    Ch2 := Ch3;
    READ(Ch3);
    Swich := 'n';
    IF (Ch1 = 'N') AND (Ch2 = ' ') AND (Ch3 = 'R') AND (Swich = 'n')
    THEN
      BEGIN 
        WRITELN('');
        WRITE("  R");
        Swich := 'y'
      END;
    IF (Ch1 = 'N') AND (Ch2 = ' ') AND (Ch3 = 'W') AND (Swich = 'n')
    THEN
      BEGIN
        WRITELN('');
        WRITE("  W");
        Swich := 'y'
      END;
    IF (Ch2 = ';') AND (Ch3 = ' ') AND (Swich = 'n')
    THEN
      BEGIN 
        WRITELN;
        WRITE("  ");
        Swich := 'y'
      END;
    IF (Ch2 = ';') AND (Ch3 = 'W') AND (Swich = 'n')
    THEN
      BEGIN 
        WRITELN;
        WRITE("  W");
        Swich := 'y'
      END;
    IF (Ch2 = ';') AND (Ch3 = 'R') AND (Swich = 'n')
    THEN
      BEGIN
        WRITELN('');
        WRITE("  R");
        Swich := 'y'
      END;
    IF (Ch2 = ')') AND (Ch3 = ' ') AND (Swich = 'n')
    THEN
      BEGIN 
        WRITELN(Ch3);
        Swich := 'y'
      END;
    IF (Ch2 = ')') AND (Ch3 = 'E') AND (Swich = 'n')
    THEN
      BEGIN 
        WRITELN('');
        WRITE("E");
        Swich := 'y'
      END;
    IF (Ch2 = ';') AND (Ch3 = 'E') AND (Swich = 'n')
    THEN
      BEGIN
        WRITELN('');
        WRITE("E");
        Swich := 'y'
      END;
    IF (Ch1 = 'N') AND (Ch2 = ' ') AND (Ch3 = 'E') AND (Swich = 'n')
    THEN
      BEGIN
        WRITELN('');
        WRITE("E");
        Swich := 'y'
      END;               
    IF Swich = 'n' 
    THEN
      BEGIN
        WRITE(Ch3);
        Swich := 'y'
      END;
    IF Ch3 = '.' 
    THEN
      Swich := 'e'        
  END
END.
