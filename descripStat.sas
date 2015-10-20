proc print data=test.Mybaseball;
run;

proc means data=test.Mybaseball;
        by nError Salary;
run;

proc freq data=test.Mybaseball;
run;
