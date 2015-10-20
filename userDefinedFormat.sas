libname library 'E:\SAS9.4\Formats\';
proc format library=library fmtlib;
        value jobfmt
                103='manager'
                105='text processor';
run;

data perm.empinfo;
        infile empdata;
        input @9 FirstName $5. @1 LastName $7.
              +7 JobTitle 3. @19 Salary comma9.;
        format salary comma9.2 jobtitle jobfmt.;
run;
