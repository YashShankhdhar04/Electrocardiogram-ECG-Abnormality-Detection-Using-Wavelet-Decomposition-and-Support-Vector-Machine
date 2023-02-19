function solution=normal_finder(fileName)
signal=load(fileName);

[C1,L1]=wavedec(signal.val(1,:),5,'db10');
[C2,L2]=wavedec(signal.val(2,:),5,'db10');

n_feature(1,1:30)=coff_finder(C1,L1);
n_feature(2,1:30)=coff_finder(C2,L2);

solution=n_feature;
end