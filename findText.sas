data one;
        text='Australia, US, Denmark';
        pos=find(text, 'US', 'i', 5);
run;
data one1;
        text='Australia, US, Denmark';
        pos=find(text, 'US', 5);
run;
data one2;
        text='Australia, US, Denmark';
        pos=find(text, 'US', 'i');

run;
