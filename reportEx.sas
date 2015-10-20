*basic report;
proc print data=test.Prdsale;
run;

*column totals;
proc print data=test.Prdsale;
        sum actural;
run;


*sorting and labels;
proc sort data=test.Prdsale out=Prdsale;
        by actural;
run;

*selected observations and variables;
proc print data=Prdsale noobs;
        var actural predict country region;
        label region='Internaltional Region';
run;
