%Theme: Sort_Eigens
%Author: Nan Sheng

function [C,epsilon]=sort_eigens(C,epsilon)

length=size(C,1);
[eigenvals,index]=sort(diag(epsilon));
eigenvecs=zeros(size(C));
for n=1:length
    eigenvecs(:,n)=C(:,index(n));
end

C=eigenvecs;
epsilon=eigenvals;
end