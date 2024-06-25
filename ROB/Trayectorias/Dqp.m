function D=f(u)
global b1 b2 b3;

qp1=u(1);
qp2=u(2);
qp3=u(3);

qp=[qp1 qp2 qp3]';

Du=[b1 0 0;0 b2 0;0 0 b3];

Dc=Du*qp;

D(1)=Dc(1);
D(2)=Dc(2);
D(3)=Dc(3);