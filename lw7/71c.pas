PROGRAM BubbleSort(INPUT, OUTPUT);
{DP 8 ??????㥬 ?????? ??ப? INPUT ? OUTPUT}
VAR
  Sorted, Ch, Ch1, Ch2: CHAR;
  F1, F2: TEXT;
PROCEDURE FinOutput(VAR FInput: TEXT);
VAR
  Ch: CHAR;
BEGIN
  RESET(FInput);
  WHILE NOT EOLN(FInput)
  DO
    BEGIN
      READ(FInput, Ch);
      WRITE(OUTPUT, Ch)
    END
END;
PROCEDURE CopyFInputinFOutput(VAR FInput, FOutput: TEXT);
VAR 
  Ch: CHAR;
BEGIN
  RESET(FInput);
  REWRITE(FOutput);
  WHILE NOT EOLN(FInput)
  DO
    BEGIN
      READ(FInput, Ch);
      WRITE(FOutput, Ch)
    END;
END;
BEGIN {BubbleSort}
  {DP 8.2 ?????㥬 INPUT ? F1 }
  REWRITE(F1);
  WHILE NOT EOLN
  DO
    BEGIN
      READ(Ch);
      WRITE(F1, Ch)
    END;
  WRITELN(F1);
  Sorted := 'N';
  WHILE Sorted ='N'
  DO
    BEGIN
      {DP 8.1 ?????㥬 F1 ? F2,?஢???? ???????஢???????
       ? ?????⠢??? ?????? ??ᥤ??? ᨬ???? ?? ???浪?}
      Sorted := 'Y';
      RESET(F1);
      REWRITE(F2);
      IF NOT EOLN(F1)
      THEN
        BEGIN
          READ(F1, Ch1);
          WHILE NOT EOLN(F1)
          DO { ?? ?ࠩ??? ???? ??? ᨬ???? ??⠥??? ??? Ch1,Ch2 }
            BEGIN
              READ(F1, Ch2);
              {DP 8.1.1 ?뢮???   min(Ch1,Ch2) ?  F2, ?????뢠?
               ???????஢????? ᨬ???? }
              IF Ch1 <= Ch2
              THEN
                BEGIN
                  WRITE(F2, Ch1);
                  Ch1 := Ch2
                END
              ELSE
                BEGIN
                  WRITE(F2, Ch2);
                  Sorted := 'N'
                END
            END;
          WRITELN(F2, Ch1) { ?뢮??? ??᫥???? ᨬ??? ? F2 }
        END;
      {DP 8.3 ?????㥬 F2 ? F1 }
      CopyFInputinFOutput(F2, F1);
      WRITELN(F1)
    END;
  {DP 8.4 ?????㥬 F1 ? OUTPUT }
  FinOutput(F1)
END. {BubbleSort}
