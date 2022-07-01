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
          THEN {___abc >> abc}
          ELSE
            WRITE(V3) {__abc >> abc}
        END;
      IF (V1 = ' ') AND (V2 <> ' ')
      THEN
        BEGIN
          IF V3 = ' '
          THEN  
            BEGIN
              IF NOT EOLN  {_a_... >> a_}
              THEN 
                WRITE(V2, V3)
              ELSE
                WRITE(V2)  {a_/ >> a}
            END
          ELSE
            WRITE(V2, V3) {_ab >> ab}
        END;
      IF (V1 <> ' ') AND (V2 = ' ')
      THEN
        BEGIN
          IF V3 = ' '
          THEN
            BEGIN 
              IF NOT EOLN
              THEN
                WRITE(V1, V2) {a__... >> a_}
              ELSE
                WRITE(V1)     {a__/ >> a}
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
                WRITE(V1, V3) {ab_/ >> ab_}
            END
          ELSE
            WRITE(V1, V2, V3) {abc >> acb}
        END;
    END;
  WRITELN 
END.
