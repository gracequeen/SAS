data test;
infile datalines truncover;
     length
        Type $ 5
        Color $ 11;
     input
        Type $
        Color $;
datalines;
daisyyellow
;
run;
