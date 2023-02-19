clc;
clear all;
sa=load('./abnormal signal/s0015lrem.mat');
sn=load('./normal signal/16773m.mat');
[C1,L1]=wavedec(sn.val(1,:),5,'db10');
a1=appcoef(C1,L1,'db10',1);
a2=appcoef(C1,L1,'db10',2);
a3=appcoef(C1,L1,'db10',3);
a4=appcoef(C1,L1,'db10',4);
a5=appcoef(C1,L1,'db10',5);
[d1 d2 d3 d4 d5]=detcoef(C1,L1,[1 2 3 4 5]);

figure;
plot(sn.val(1,:));

figure;
subplot(5,1,1);
plot(d1);
subplot(5,1,2);
plot(d2);
subplot(5,1,3);
plot(d3);
subplot(5,1,4);
plot(d4);
subplot(5,1,5);
plot(d5);

figure;
subplot(5,1,1);
plot(a1);
subplot(5,1,2);
plot(a2);
subplot(5,1,3);
plot(a3);
subplot(5,1,4);
plot(a4);
subplot(5,1,5);
plot(a5);