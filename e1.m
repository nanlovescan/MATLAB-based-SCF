%Theme: one_electron_integral
%Author: Nan Sheng

function M = e1(N)

length=size(N,1);
M=zeros(7,7);

for i=1:length
    M(N(i,1),N(i,2))=N(i,3);
    M(N(i,2),N(i,1))=N(i,3);
end

end
