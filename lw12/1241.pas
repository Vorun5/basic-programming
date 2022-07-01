{PROGRAM Condition(INPUT, OUTPUT);
VAR
  V1,V2,V3: CHAR;
BEGIN
  WHILE NOT EOLN
  DO
    BEGIN
      READ(V1, V2, V3);
      IF (V1 = ' ') AND (V2 = ' ') AND (V3 = ' ')   {____abc >> abc}
      {THEN
        BEGIN
          V1 := '';
          V2 := '';
          V3 := ''
        END;
      IF (V1 = ' ') AND (V2 = ' ') AND (V3 <> ' ')   {__abc >> abc}
      {THEN
        BEGIN
          V1 := ''; 
          V2 := '';
          WRITE(V3)
        END;
      IF (V1 = ' ') AND (V2 <> ' ') AND (V3 <> ' ')  {_abc >> abc}
      {THEN
        BEGIN
          V1 := ''; 
          WRITE(V2, V3) 
        END;
      IF (V1 <> ' ') AND (V2 <> ' ') AND (V3 <> ' ')  {abc >> abc}
      {THEN         
        BEGIN
          WRITE(V1, V2, V3) 
        END;
      IF (V1 <> ' ') AND (V2 = ' ') AND (V3 <> ' ')  {ab_c >> ab_c}
      {THEN         
        BEGIN
          WRITE(V1, V2, V3) 
        END;
      IF (V1 <> ' ') AND (V2 <> ' ') AND (V3 = ' ')  {abc_ >> abc_}
      {THEN         
        BEGIN
          WRITE(V1, V2, V3) 
        END;
      IF (V1 <> ' ') AND (V2 = ' ') AND (V3 = ' ')  {abc__ >> abc_}
      {THEN         
        BEGIN
          V3 := '';
          WRITE(V1, V2) 
        END;
    END;
  WRITELN 
END. }



PROGRAM Condition(INPUT, OUTPUT);
VAR
  V1,V2,V3: CHAR;
BEGIN
  WHILE NOT EOLN
  DO
    BEGIN
      READ(V1, V2, V3);
      IF (V1 = ' ') AND (V2 = ' ') AND (V3 = ' ')   {____abc >> abc}
      THEN
        BEGIN
        END;
      IF (V1 = ' ') AND (V2 = ' ') AND (V3 <> ' ')   {__abc >> abc}
      THEN
        BEGIN
          WRITE(V3)
        END;
      IF (V1 = ' ') AND (V2 <> ' ') AND (V3 = ' ')   {_a_ >> a_}
      THEN
        BEGIN
          WRITE(V2, V3)
        END;
      IF (V1 = ' ') AND (V2 <> ' ') AND (V3 <> ' ')  {_abc >> abc}
      THEN
        BEGIN 
          WRITE(V2, V3) 
        END;
      IF (V1 <> ' ') AND (V2 <> ' ') AND (V3 <> ' ')  {abc >> abc}
      THEN         
        BEGIN
          WRITE(V1, V2, V3) 
        END;
      IF (V1 <> ' ') AND (V2 = ' ') AND (V3 <> ' ')  {ab_c >> ab_c}
      THEN         
        BEGIN
          WRITE(V1, V2, V3) 
        END;
      IF (V1 <> ' ') AND (V2 <> ' ') AND (V3 = ' ')  {abc_ >> abc_}
      THEN         
        BEGIN
          WRITE(V1, V2, V3) 
        END;
      IF (V1 <> ' ') AND (V2 = ' ') AND (V3 = ' ')  {abc__ >> abc_}
      THEN         
        BEGIN
          WRITE(V1, V2) 
        END;
    END;
  WRITELN 
END. 
