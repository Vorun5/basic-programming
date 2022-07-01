PROGRAM Condition(INPUT, OUTPUT);
VAR
  V1,V2,V3: CHAR;
BEGIN
  WHILE NOT EOLN
  DO
    BEGIN
{-----------------------------------------------------}
       READ(V1);
       IF V1 = ' '
       THEN
          BEGIN
            V1 := '.';
            WRITE(V1)
          END;
       
       IF V1 <> ' '
       THEN
         BEGIN
           READ(V2);
           IF V2 = ' '
           THEN
             BEGIN
               IF EOLN
               THEN
                 BEGIN
                   V2 := '.';
                   WRITE(V1);
                   WRITE(V2);
                 END
               ELSE
                 BEGIN
                   WRITE(V1);
                   WRITE(V2)
                 END
             END
         END;
         
      IF V1 <> ' '
      THEN
        BEGIN
          READ(V2);
          IF V2 <> ' '
          THEN
            BEGIN
              WRITE(V1);
              WRITE(V2)
            END
        END
    END
END.
