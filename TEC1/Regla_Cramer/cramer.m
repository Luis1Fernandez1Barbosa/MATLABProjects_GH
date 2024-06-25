%Funcion para método de Cramer
function x=cramer(A,b)
n=length(b);
x=zeros(n,1);
for i=1:n
    Ai=A;
    Ai(:,i)=b;
    x(i)=det(Ai)/det(A);
end
end