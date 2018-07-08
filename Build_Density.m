%Theme: Build_Density
%Author: Nan Sheng

function D=Build_Density(C,Nel)
length=size(C,1);
D=zeros(length,length);

for m=1:length
    for n=1:length
        for i=1:(Nel/2)
            D(m,n)=D(m,n)+2*C(m,i)*conj(C(n,i));
        end
    end
end
end

