function C = f(u)
global  c lc3 m3;
global Ra Ka b1 b2 r1 r2 Kb f;
q1=u(1);
q2=u(2);
q3=u(3);
qp1=u(4);
qp2=u(5);
qp3=u(6);

qp=[qp1 qp2 qp3]';

bc11=r1*(f+Ka*Kb/Ra+(2*(c+q3-lc3)*m3*qp3+b1)/r1^2);
bc12=0;
bc13=0;
bc21=0;
bc22=0; %%%r2*(f+(Ka*Kb/Ra)+(b2/r2^2)); %%%No permite hacer la multiplicacion con este elemento diferente de cero
bc23=0;
bc31=(-(c+q3-lc3)*m3*qp1)/r2;
bc32=0;
bc33=r2*(f+(Ka*Kb/Ra)+(b2/r2^2));

Cu =(Ra/Ka)*[bc11 bc12 bc13;
     bc21 bc22 bc23;
     bc31 bc32 bc33];
 
 Cd=Cu*qp;
 
 C(1)=Cd(1);
 C(2)=Cd(2);
 C(3)=Cd(3);