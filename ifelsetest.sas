data test.new;
length word $7;
amount = 9;
if amount = 5 then word = 'CAT';
else if amount = 7 then word = 'DOG';
else word = 'NONE!!!';
amount = 5;
run;

proc print data=test.new;
run;
