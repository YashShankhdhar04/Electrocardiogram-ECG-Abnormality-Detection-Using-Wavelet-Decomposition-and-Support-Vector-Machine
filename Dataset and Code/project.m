clear all;
clc;
nor_signal=zeros(4,30);
abn_signal=zeros(45, 30);
file1=".\abnormal signal\s0010_rem.mat";
file2=".\abnormal signal\s0014lrem.mat";
% file3=".\abnormal signal\s0015lrem.mat";
% file4=".\abnormal signal\s0016lrem.mat";
% file5=".\abnormal signal\s0017lrem.mat";
% file6=".\abnormal signal\s0020arem.mat";
% file7=".\abnormal signal\s0021arem.mat";
abn_signal(1:15,:)=abnormal_finder(file1);
abn_signal(16:30,:)=abnormal_finder(file2);
% abn_signal(31:45,:)=abnormal_finder(file3);
% abn_signal(46:60,:)=abnormal_finder(file4);
% abn_signal(61:75,:)=abnormal_finder(file5);
% abn_signal(76:90,:)=abnormal_finder(file6);
% abn_signal(91:105,:)=abnormal_finder(file7);

file8=".\normal signal\16265m.mat";
file9=".\normal signal\16272m.mat";
file10=".\normal signal\16273m.mat";
% file11=".\normal signal\16420m.mat";
% file12=".\normal signal\16483m.mat";
% file13=".\normal signal\16539m.mat";
% file14=".\normal signal\16773m.mat";

nor_signal(1:2,:)=normal_finder(file8);
nor_signal(3:4,:)=normal_finder(file9);
nor_signal(5:6,:)=normal_finder(file10);
% nor_signal(7:8,:)=normal_finder(file11);
% nor_signal(9:10,:)=normal_finder(file12);
% nor_signal(11:12,:)=normal_finder(file13);
% nor_signal(13:14,:)=normal_finder(file14);

train_x=[nor_signal; abn_signal];
train_y=zeros(51,1);
for i=1:4
    train_y(i,:)=1;
end

% for i=15:119
%     train_y(i,:)=0;
% end

model=fitcsvm(train_x, train_y);

filet1=".\testing data\16795m.mat";
filet2=".\testing data\17052m.mat";
filet3=".\testing data\17453m.mat";
filet4=".\testing data\18177m.mat";
filet5=".\testing data\18184m.mat";
filet6=".\testing data\19088m.mat";
filet7=".\testing data\19090m.mat";
filet8=".\testing data\19093m.mat";
filet9=".\testing data\19140m.mat";
filet10=".\testing data\19830m.mat";
filet11=".\testing data\s0556_rem.mat";
filet12=".\testing data\s0557_rem.mat";
filet13=".\testing data\s0558_rem.mat";
filet14=".\testing data\s0556_rem.mat";


test_x=zeros(10,30);
test_x(1:2,:)=normal_finder(filet1);
test_x(3:4,:)=normal_finder(filet2);
test_x(5:6,:)=normal_finder(filet3);
test_x(7:8,:)=normal_finder(filet4);
test_x(9:10,:)=normal_finder(filet5);
test_x(11:12,:)=normal_finder(filet6);
test_x(13:14,:)=normal_finder(filet7);
test_x(15:16,:)=normal_finder(filet8);
test_x(17:18,:)=normal_finder(filet9);
test_x(19:20,:)=normal_finder(filet10);
test_x(21:35,:)=abnormal_finder(filet11);
test_x(36:50,:)=abnormal_finder(filet12);
test_x(51:65,:)=abnormal_finder(filet13);
test_x(66:80,:)=abnormal_finder(filet14);

test_y=zeros(80,1);
for i=1:20
    test_y(i,:)=1;
end
pre_y=model.predict(test_x);

confusionmatrix=confusionchart(test_y,pre_y);
d=classperf(test_y,pre_y);
d.CorrectRate
d.ErrorRate
d.Sensitivity
d.Specificity

