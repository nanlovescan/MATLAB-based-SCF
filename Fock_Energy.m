%Theme: Fock_Energy
%Author: Nan Sheng

function E=Fock_Energy(F,H0,D)

length=size(D,1);

E=0;

for m=1:length
    for n=1:length
        E=E+0.5*D(m,n)*(H0(n,m)+F(n,m));
    end
end
end