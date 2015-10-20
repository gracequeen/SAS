data empName;
input name $ 3-6 empId 10-13;
datalines;
  Jill   1864
  Jack   2121
  Joan   4698
  John   5463
;
run;


data empDept;
input empId 4-7 dept $ 10-19;
datalines;
   2121  Accounting
   3567  Finance
   4698  Marketing
   5463  Accounting
run;

  data all;
     merge empName(in=Emp_N)
           empDept(in=Emp_D);
     by empId;
     if (Emp_N and not Emp_D) or (Emp_D and not Emp_N);
  run;

 data all1;
     merge empName(in=Emp_N)
           empDept(in=Emp_D);
     by empId;

  run;
