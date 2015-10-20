data cityInfo;
     drop City;
     infile datalines;
     input
        Name $ 1-14 /
        Address $ 1-14 /
        City $ 1-12 ;
     if City='New York' then input @1 State $2.;
     else input;
 datalines;
 Joe Conley
 123 Main St.
 Janesville
 WI
 Jane Ngyuen
 555 Alpha Ave.
 New York
 NY
 Jennifer Jason
 666 Mt. Diablo
 Eureka
 CA
 ;
