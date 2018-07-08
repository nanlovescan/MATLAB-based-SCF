%Theme: Build_Coulomb_Exchange
%Author: Nan Sheng

function G=Build_Coulomb_Exchange(D,gabcd)

G=zeros(size(D));
length=size(D,1); 
        for a=1:length
            for b=1:length
                for c=1:length
                    for d=1:length
        G(a,b)=G(a,b)+D(c,d)*(gabcd(a,b,d,c)-0.5*gabcd(a,c,d,b));
                    end
                end
            end
        end        
end



