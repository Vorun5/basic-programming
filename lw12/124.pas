{PROGRAM Condition(INPUT, OUTPUT);
VAR
  V1,V2: CHAR;
BEGIN
  WHILE NOT EOLN
  DO
    BEGIN
      READ(V1, V2);
      IF (V1 = ' ') AND (V2 = ' ')   {____abc >> abc}
      {THEN
        BEGIN
          V1 := '';
          V2 := ''
        END;
      IF (V1 = ' ') AND (V1 < V2)   {_abc >> abc}
      {THEN
        BEGIN 
          V1 :=  '';
          WRITE(V2)
        END;
      IF (V2 = ' ') AND (V1 > V2)  {abc_ >> abc}
      {THEN
        BEGIN
          V2 := ''; 
          WRITE(V1)
        END;
      IF (V1 <> ' ') AND (V2 <> ' ')  {abc >> abc}
      {THEN         
        BEGIN
          WRITE(V1,V2) 
        END;
    END;
  WRITELN 
END.}

PROGRAM Condition(INPUT, OUTPUT);
VAR
  V1,V2: CHAR;
BEGIN
  WHILE NOT EOLN
  DO
    BEGIN
      READ(V1, V2);
      IF (V1 = ' ') AND (V2 = ' ')   {____abc >> abc}
      THEN
        WHILE V2 <> ' ' 
        DO
          BEGIN 
            READ(V1);
            IF V1 = ' '
            THEN
              BEGIN
                READ(V1);
                READ(V2)
              END;
             IF V1 <> ' '
             THEN
               BEGIN
                 READ(V2)
               END
          END;
      WRITE(V1, V2)  
    END
END.      
        
      {IF (V1 = ' ') AND (V1 < V2)   {_abc >> abc}
      {THEN
        BEGIN 
          V1 :=  '';
          WRITE(V2)
        END;
      {IF (V2 = ' ') AND (V1 > V2)  {abc_ >> abc}
      {THEN
        BEGIN
          IF EOLN
          THEN
            BEGIN
              V2 := ''; 
              WRITE(V1)
          ELSE
        END;
      IF (V1 <> ' ') AND (V2 <> ' ')}  {abc >> abc}
      {THEN         
        BEGIN
          WRITE(V1,V2) 
        END;}
     {END;
  WRITELN 
END.}
