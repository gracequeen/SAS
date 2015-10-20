proc print data=test.Mybaseball;
run;

proc report data=test.Mybaseball nowd;
        column Name Team nAtBat nHits;
run;
