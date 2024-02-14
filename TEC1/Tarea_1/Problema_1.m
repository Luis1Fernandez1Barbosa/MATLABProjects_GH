% Problema 1.- Calcula x, a=2, b=-10, c=12 

a=input('a= ');
b=input('b= ');
c=input('c= ');
p=[a b c];
r=roots(p)

r1= (-b+(sqrt(b*b-(4*a*c))))/(2*a)
r2= (-b-(sqrt(b*b-(4*a*c))))/(2*a)
