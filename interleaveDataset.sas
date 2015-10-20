data one;
        input id 1-3 char1 $ 6;
datalines;
111  A
158  B
329  C
644  D
;
run;

data two;
        input id 1-3 char2 $ 6;
datalines;
111  E
538  F
644  G
;
run;

data both;
set one two;
by id;
run;

data both1;
merge one two;
by id;
run;
