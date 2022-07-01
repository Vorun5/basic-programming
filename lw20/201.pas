PROGRAM lab201(INPUT, OUTPUT);
VAR
  Host: SET OF BYTE;
  I, K: INTEGER;
BEGIN{lab201}
  Host := [2 .. 100];
  FOR I := 2 TO 100
  DO
    IF I IN Host 
    THEN
      FOR K := 2 TO 100
      DO
        IF (K IN Host) AND ((K MOD I) = 0)
        THEN
          BEGIN
            IF K = I
            THEN
              WRITE(I, ' ');  
            Host := Host - [K]              
          END;
  {FOR I := 2 TO 100
  DO
    IF I IN Host
    THEN
      WRITE(I, ' ')} 
  {FOR I := 2 TO 100
  DO
    IF I IN Host 
    THEN
      FOR K := 2 TO 100
      DO
        IF (K IN Host) AND ((K MOD I) = 0) AND (K <> I)
        THEN
          //BEGIN  
           // WRITELN(K, ' ');
            Host := Host - [K];              
          //END;
  FOR I := 2 TO 100
  DO
    IF I IN Host
    THEN
      WRITE(I, ' ')}
END.{lab201}
