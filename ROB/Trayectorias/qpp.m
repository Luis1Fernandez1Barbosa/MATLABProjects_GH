function qpp=f(u)
global a1 a2 m1 m2 m3 Iyy3 Izz1 Izz2 lc1 lc3 c;
global r1 r2 Jm1 Jm2 Ra Ka;

q1=u(1);
q2=u(2);
q3=u(3);
Sum1=u(4);
Sum2=u(5);
Sum3=u(6);
Sum=[Sum1 Sum2 Sum3]';

h11=r1*(Jm1+(Iyy3+Izz1+Izz2+m1*lc1^2+m2*a1^2+((a1+a2)^2+(c+q3-lc3)^2)*m3)/r1^2);
h12=0;
h13=((a1+a2)*m3)/r1;
h21=0;
h22=r2*(Jm2*m2+Jm2*m3)/r2^2; %% Jm2*m3 Matlab no deja realizar la operación
h23=0;
h31=((a1+a2)*m3)/r2;
h32=0;
h33=r2*Jm2+m3/r2^2;

H =(Ra/Ka)*[h11 h12 h13;
    h21 h22 h23;
    h31 h32 h33];

 qpp=inv(H)*Sum;