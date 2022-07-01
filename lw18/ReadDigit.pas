UNIT ReadDigit;
INTERFACE
TYPE
  Month = (NoMonth, JAN, FEB, MAR, APR, MAY, JUN, JUL, AUG, SEP, OCT, NOV, DEC);
PROCEDURE ReadMonth(VAR FIn: TEXT; VAR Mo: Month); {читает и присваевает мес€ц}
PROCEDURE WriteMonth(VAR FOut: TEXT; VAR Mo: Month); {ѕечатает мес€ц}
IMPLEMENTATION

BEGIN {ReadDigit}
END. {ReadDigit}
