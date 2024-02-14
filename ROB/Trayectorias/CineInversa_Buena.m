function CinInve=f(u)

Xd=u(1);
Yd=u(2);
Zd=u(3);

global c d1 a3 a1 a2;
global qd1 qd2 qd3;
    
        qd2=Zd-d1+a3;
        qd3=sqrt(Xd^2+Yd^2-(a1+a2)^2)-c;
        qd1=atan2(Yd,Xd)-atan2(qd3+c,a1+a2);

CinInve(1)=qd1;
CinInve(2)=qd2;
CinInve(3)=qd3;
 
  
  
  
  
  
  
  
  