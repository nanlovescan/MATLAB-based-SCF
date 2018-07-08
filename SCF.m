%Theme: Self Consistent Field
%Author: Nan Sheng

function[Emin,E,ncycle,D]=SCF(S,T,V,gabcd,Nel)

maxncycle=1000;
ncycle=0;
converged=0;

S=e1(S);
T=e1(T);
V=e1(V);
gabcd=e2(gabcd);

H0=T+V;
F=H0;

[V,s]=eig(S);
X=V*s^(-1/2)*V';

Fprime=X'*F*X;

[Cprime,epsilon]=eig(Fprime);
C=X*Cprime;
[C,epsilon]=sort_eigens(C,epsilon);

D=Build_Density(C,Nel);

E=zeros(maxncycle,1);

while ncycle<maxncycle && converged ~= 1
    ncycle=ncycle+1;
    G=Build_Coulomb_Exchange(D,gabcd);
    F=H0+G;
    Fprime=X'*F*X;
    [Cprime,epsilon]=eig(Fprime);
    C=X*Cprime;
    [C,epsilon]=sort_eigens(C,epsilon);
    D=Build_Density(C,Nel);
    E(ncycle)=Fock_Energy(F,H0,D);
    if  ncycle > 1 && abs(E(ncycle)-E(ncycle-1)) < 10^(-10)
        converged=1;
    end
end

E=E(1:ncycle);
Emin=E(ncycle);
end
    