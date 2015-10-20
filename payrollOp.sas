data test.payroll;
        input department $ gender $ salary@;
datalines;
market f 6000
market m 5000
market f 5500
market m 8000
market f 6000
market m 7000
sales  f 6000
seles  m 4000
sales  f 6000
seles  m 4000
sales  f 6000
seles  m 4000
;

proc sort data=test.payroll;
        by department gender;
run;

data test.payresult;
        set test.payroll;
        by department gender;
        if first.gender then subtotal=salary;
        else subtotal+salary;
        if last.gender;
run;
