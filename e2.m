%Theme: two_electrons_integral
%Author: Nan Sheng

function g = e2(U)

m=size(U,1);
W=zeros(7,7,7,7);

for i=1:m
    W(U(i,1),U(i,2),U(i,3),U(i,4))=U(i,5);
    W(U(i,2),U(i,1),U(i,3),U(i,4))=U(i,5);
    W(U(i,1),U(i,2),U(i,4),U(i,3))=U(i,5);
    W(U(i,2),U(i,1),U(i,4),U(i,3))=U(i,5);
    W(U(i,3),U(i,4),U(i,1),U(i,2))=U(i,5);
    W(U(i,4),U(i,3),U(i,1),U(i,2))=U(i,5);
    W(U(i,3),U(i,4),U(i,2),U(i,1))=U(i,5);
    W(U(i,4),U(i,3),U(i,2),U(i,1))=U(i,5);

end
g=W;
end
