UNIT ReadDigit;
INTERFACE
TYPE
  Month = (NoMonth, JAN, FEB, MAR, APR, MAY, JUN, JUL, AUG, SEP, OCT, NOV, DEC);
PROCEDURE ReadMonth(VAR FIn: TEXT; VAR Mo: Month); {������ � ����������� �����}
PROCEDURE WriteMonth(VAR FOut: TEXT; VAR Mo: Month); {�������� �����}
IMPLEMENTATION

BEGIN {ReadDigit}
END. {ReadDigit}
