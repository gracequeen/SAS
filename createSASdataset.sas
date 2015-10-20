





*Reading Instram Data;
data test.group1;
        input ID 1-4 NAME $ 6-25 RestHR 27-29 MaxHR 31-33
              RecHR 35-37 TimeMin 39-40 TimeSec 42-43
              Tolerance $ 45;
        if tolerance='D';
        TotalTime=(timemin*60)+timesec;
datalines;
2458 Murray, W            72  185 128 12 38 D
2462 Almers, C            68  171 133 10  5 I
2501 Bonaventure, T       78  177 139 11 13 I
2523 Johnson, R           69  162 114  9 42 S
2539 LaMance, K           75  168 141 11 46 D
2544 Jones, M             79  187 136 12 26 N
2595 Warren, C            77  170 136 12 10 S
;
proc print data=test.group1;
run;
