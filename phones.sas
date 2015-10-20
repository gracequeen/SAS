data phones;
        input lname $ fname $ dept $ phone $ extention;
        *fullname1=catx(' ', fname, lname);

        fullname2=cat(' ', fname, lname);
datalines;
Stevens James SALES 304-923-3721 14
;
run;
