function Poli=f(u)
t=u(1);


%%%%%%%%%%%%%%%%Primer tramo de trayectoria%%%%%%%%%%

if (0<=t)&&(t<=40)

ti=0;
tf=40;

xi=0.0491; %%a1+a2   %%%%%%HOME EN X%%%%%%%
xf=-0.257;

yi=0.238;            %%%%%%HOME EN Y%%%%%%%
yf=0.005;

zi=0.20;%%d1-a3+0.19  %%%%%%HOME EN Z%%%%%%%
zf=-0.150;
             
end 
    
    
%%%%%%%%%%%%%%%%Coeficientes de los polinomios%%%%%%%%%%                              
                              
a5x=6*(xf-xi)/((tf-ti)^5);
a4x=-15*(xf-xi)/((tf-ti)^4);
a3x=10*(xf-xi)/((tf-ti)^3);
a2x=0;
a1x=0;
a0x=xi;

a5y=6*(yi-yf)/((tf-ti)^5);
a4y=-15*(yi-yf)/((tf-ti)^4);
a3y=10*(yi-yf)/((tf-ti)^3);
a2y=0;
a1y=0;
a0y=yi;

a5z=6*(zi-zf)/((tf-ti)^5);
a4z=-15*(zi-zf)/((tf-ti)^4);
a3z=10*(zi-zf)/((tf-ti)^3);
a2z=0;
a1z=0;
a0z=zi;

    if t <= 40
  
        %%%%%%%%Posiciones deseadas%%%%%%%%%%%
   Xd=a0x+a1x*t+a2x*t^2+a3x*t^3+a4x*t^4+a5x*t^5;
   Yd=a0y+a1y*t+a2y*t^2+a3y*t^3+a4y*t^4+a5y*t^5;
   Zd=a0z+a1z*t+a2z*t^2+a3z*t^3+a4z*t^4+a5z*t^5; 
   
   
    else
      
         Xd=0.257;
         Yd=0.005;
         Zd=0.035;
      
    end
    
   
Poli(1)=Xd;
Poli(2)=Yd;
Poli(3)=Zd;

    

  
 

  
  
  
  
  
  
  
  