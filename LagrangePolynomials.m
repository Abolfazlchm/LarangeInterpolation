function P=LagrangePolynomials(X,Y)  
%% Create Lagrange Multiplier
syms x P L;
n=numel(X);
P(x)=0;
for i=1:n
    L(x) = 1;
    for j=union([1:i-1],[i+1 :n])
        L(x)= L(x) * ((x-X(j))/(X(i)-X(j)));
    end
    P(x)=P(x)+L(x)*Y(i) ;
end
end
