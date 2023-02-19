function solution=abnormal_finder(fileName)
signal=load(fileName);

[C1,L1]=wavedec(signal.val(1,:),5,'db10');
[C2,L2]=wavedec(signal.val(2,:),5,'db10');
[C3,L3]=wavedec(signal.val(3,:),5,'db10');
[C4,L4]=wavedec(signal.val(4,:),5,'db10');
[C5,L5]=wavedec(signal.val(5,:),5,'db10');
[C6,L6]=wavedec(signal.val(6,:),5,'db10');
[C7,L7]=wavedec(signal.val(7,:),5,'db10');
[C8,L8]=wavedec(signal.val(8,:),5,'db10');
[C9,L9]=wavedec(signal.val(9,:),5,'db10');
[C10,L10]=wavedec(signal.val(10,:),5,'db10');
[C11,L11]=wavedec(signal.val(11,:),5,'db10');
[C12,L12]=wavedec(signal.val(12,:),5,'db10');
[C13,L13]=wavedec(signal.val(13,:),5,'db10');
[C14,L14]=wavedec(signal.val(14,:),5,'db10');
[C15,L15]=wavedec(signal.val(15,:),5,'db10');

a_feature(1,1:30)=coff_finder(C1,L1);
a_feature(2,1:30)=coff_finder(C2,L2);
a_feature(3,1:30)=coff_finder(C3,L3);
a_feature(4,1:30)=coff_finder(C4,L4);
a_feature(5,1:30)=coff_finder(C5,L5);
a_feature(6,1:30)=coff_finder(C6,L6);
a_feature(7,1:30)=coff_finder(C7,L7);
a_feature(8,1:30)=coff_finder(C8,L8);
a_feature(9,1:30)=coff_finder(C9,L9);
a_feature(10,1:30)=coff_finder(C10,L10);
a_feature(11,1:30)=coff_finder(C11,L11);
a_feature(12,1:30)=coff_finder(C12,L12);
a_feature(13,1:30)=coff_finder(C13,L13);
a_feature(14,1:30)=coff_finder(C14,L14);
a_feature(15,1:30)=coff_finder(C15,L15);


solution=a_feature;
end