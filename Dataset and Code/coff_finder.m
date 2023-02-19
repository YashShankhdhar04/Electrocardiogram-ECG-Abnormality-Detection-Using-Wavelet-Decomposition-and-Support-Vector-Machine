function coff=coff_finder(C, L)

a1=appcoef(C,L,'db10',1);
a2=appcoef(C,L,'db10',2);
a3=appcoef(C,L,'db10',3);
a4=appcoef(C,L,'db10',4);
a5=appcoef(C,L,'db10',5);
[d1, d2, d3, d4, d5]=detcoef(C,L,[1 2 3 4 5]);

ske1=skewness(d1);
ske2=skewness(d2);
ske3=skewness(d3);
ske4=skewness(d4);
ske5=skewness(d5);

aske1=skewness(a1);
aske2=skewness(a2);
aske3=skewness(a3);
aske4=skewness(a4);
aske5=skewness(a5);

kur1=kurtosis(d1);
kur2=kurtosis(d2);
kur3=kurtosis(d3);
kur4=kurtosis(d4);
kur5=kurtosis(d5);

akur1=kurtosis(a1);
akur2=kurtosis(a2);
akur3=kurtosis(a3);
akur4=kurtosis(a4);
akur5=kurtosis(a5);

sde1=std(d1);
sde2=std(d2);
sde3=std(d3);
sde4=std(d4);
sde5=std(d5);

asde1=std(a1);
asde2=std(a2);
asde3=std(a3);
asde4=std(a4);
asde5=std(a5);

coff=[ske1 ske2 ske3 ske4 ske5 aske1 aske2 aske3 aske4 aske5 kur1 kur2 kur3 kur4 kur5 akur1 akur2 akur3 akur4 akur5 sde1 sde2 sde3 sde4 sde5 asde1 asde2 asde3 asde4 asde5];

