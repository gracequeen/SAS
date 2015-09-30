options nodate number pageno=10;


*sorted list by column "actual sales";
title 'General List Sorted by Actual Sales';
proc sort data=test.Prdsale out=Prdsale;
        by actual;
run;

*selected observations with restrictions and column totals;
title 'Selective List';
proc print data=test.Prdsale label double noobs;
        id actual;
        var predict country region division;
        where country='CANADA' and predict>200;
        sum actual;
        label region='international sales region';
run;

*Noted and Formatted List;
title 'Noted and Formatted List';
proc print data=test.Prdsale label;
        var actual predict country region;
        where region='EAST';
        format actual dollar4.;
run;
