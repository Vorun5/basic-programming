PROGRAM Condition(INPUT, OUTPUT);
VAR
  V1,V2,V3: CHAR;
BEGIN
  WHILE NOT EOLN
  DO
    BEGIN
      READ(V1, V2);
      IF (V1 = ' ') AND (V2 = ' ')
      THEN
        BEGIN
          IF V3 = ' '
          THEN
            BEGIN   {___abc >> abc}
              V1 := '';
              V2 := '';
              V3 := ''
            END  
          ELSE
            BEGIN {__abc >> abc}
              V1 := '';
              V2 := '';
              WRITE(V3)
            END 
        END;
      IF (V1 = ' ') AND (V2 <> ' ')
      THEN
        BEGIN
          IF V3 = ' '
          THEN  
            BEGIN
              IF NOT EOLN  {_a_... >> a_}
              THEN
                BEGIN
                  V1 := ''; 
                  WRITE(V2, V3)
                END
              ELSE
                BEGIN
                  V1 := '';
                  V3 := '';
                  WRITE(V2)  {_a_/ >> a}
                END
            END
          ELSE
            BEGIN
              V1 := '';
              WRITE(V2, V3) {_ab >> ab}
            END
        END;
      IF (V1 <> ' ') AND (V2 = ' ')
      THEN
        BEGIN
          IF V3 = ' '
          THEN
            BEGIN 
              IF NOT EOLN
              THEN
                BEGIN
                  V3 := '';
                  WRITE(V1, V2) {a__... >> a_}
                END
              ELSE
                BEGIN
                  V2 := '';
                  V3 := '';
                  WRITE(V1)     {a__/ >> a}
                END
            END
          ELSE
            WRITE(V1, V2, V3) {a_b >> a_b}
        END;
      IF (V1 <> ' ') AND (V2 <> ' ')
      THEN
        BEGIN
          IF V3 = ' '
          THEN 
            BEGIN
              IF NOT EOLN
              THEN
                WRITE(V1, V2, V3) {ab_... >> ab_}
              ELSE
                BEGIN
                  V2 := '';
                  WRITE(V1, V3) {ab_/ >> ab_}
                END
            END
          ELSE
            WRITE(V1, V2, V3) {abc >> acb}
        END;
    END;
  WRITELN 
END.
