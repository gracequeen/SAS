  data SALES1;
     do Year=1 to 5;
        do Month=1 to 12;
           X + 1;
        end;
     end;
  run;

  data SALES1;
     do Year=1 to 5;
        do Month=1 to 12;
           X + 1;
          output;
        end;
     end;
  run;
