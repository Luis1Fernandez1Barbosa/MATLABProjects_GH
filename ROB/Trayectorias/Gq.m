function G=f(u)
global m2 m3 g;
global Ra Ka r2;

q1=u(1);
q2=u(2);
q3=u(3);
G=[0;
  (Ra*(m2+m3)*g)/Ka*r2;
   0];