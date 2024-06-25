

%%%%%%%%%%%%%%%%Primer tramo de trayectoria%%%%%%%%%%
ti=0;
tf=10;

if (0<=ti)&&(tf<10)
ti=0;
tf=10;
xi=0.0491;    %%%%%%HOME EN X%%%%%%%
xf=-0.257;

yi=0.238;            %%%%%%HOME EN Y%%%%%%%
yf=0.005;

zi=0.20;%%d1-h+0.19  %%%%%%HOME EN z%%%%%%%
zf=-0.150;

a5x=6*(xf-xi)/((tf-ti)^5);
a4x=-15*(xf-xi)/((tf-ti)^4);
a3x=10*(xf-xi)/((tf-ti)^3);
a2x=0;
a1x=0;
a0x=xi;

a5y=6*(yf-yi)/((tf-ti)^5);
a4y=-15*(yf-yi)/((tf-ti)^4);
a3y=10*(yf-yi)/((tf-ti)^3);
a2y=0;
a1y=0;
a0y=yi;

a5z=6*(zf-zi)/((tf-ti)^5);
a4z=-15*(zf-zi)/((tf-ti)^4);
a3z=10*(zf-zi)/((tf-ti)^3);
a2z=0;
a1z=0;
a0z=zf;   

A1 = [a5x
a4x
a3x
a2x
a1x
a0x]
disp(A1)
B1=[a5y
a4y
a3y
a2y
a1y
a0y]
disp(B1)
C1=[a5z
a4z
a3z
a2z
a1z
a0z]
disp(C1)
else
   
%%%%%%%%%%%%%%%%Segundo tramo de trayectoria%%%%%%%%%%  
     %ti=10;
     %tf=30;
             if (10<=ti)&&(tf<=30)

                              xi=-0.257;
                              xf=-0.10;

                              yi=0.005;
                              yf=0.1;

                              zi=-0.150;
                              zf=-0.130;
                         
a5x=6*(xf-xi)/((tf-ti)^5);
a4x=-15*(xf-xi)/((tf-ti)^4);
a3x=10*(xf-xi)/((tf-ti)^3);
a2x=0;
a1x=0;
a0x=xi;

a5y=6*(yf-yi)/((tf-ti)^5);
a4y=-15*(yf-yi)/((tf-ti)^4);
a3y=10*(yf-yi)/((tf-ti)^3);
a2y=0;
a1y=0;
a0y=yi;

a5z=6*(zf-zi)/((tf-ti)^5);
a4z=-15*(zf-zi)/((tf-ti)^4);
a3z=10*(zf-zi)/((tf-ti)^3);
a2z=0;
a1z=0;
a0z=zf;   
         
A2 = [a5x
a4x
a3x
a2x
a1x
a0x]
disp(A2)
B2=[a5y
a4y
a3y
a2y
a1y
a0y]
disp(B2)
C2=[a5z
a4z
a3z
a2z
a1z
a0z]
disp(C2)
             end
             
end
   
   
%%%%%%%%%%%%%%%%Coeficientes de los polinomios%%%%%%%%%%                              
%{                             
a5x=6*(xf-xi)/((tf-ti)^5);
a4x=-15*(xf-xi)/((tf-ti)^4);
a3x=10*(xf-xi)/((tf-ti)^3);
a2x=0;
a1x=0;
a0x=xi;

a5y=6*(yf-yi)/((tf-ti)^5);
a4y=-15*(yf-yi)/((tf-ti)^4);
a3y=10*(yf-yi)/((tf-ti)^3);
a2y=0;
a1y=0;
a0y=yi;

a5z=6*(zf-zi)/((tf-ti)^5);
a4z=-15*(zf-zi)/((tf-ti)^4);
a3z=10*(zf-zi)/((tf-ti)^3);
a2z=0;
a1z=0;
a0z=zf;
%}
    if tf < 30
 
       
%%%%%%%%Posiciones deseadas%%%%%%%%%%%

   Xd=a0x+a1x*(tf-ti)+a2x*(tf-ti)^2+a3x*(tf-ti)^3+a4x*(tf-ti)^4+a5x*(tf-ti)^5;
   Yd=a0y+a1y*(tf-ti)+a2y*(tf-ti)^2+a3y*(tf-ti)^3+a4y*(tf-ti)^4+a5y*(tf-ti)^5;
   Zd=a0z+a1z*(tf-ti)+a2z*(tf-ti)^2+a3z*(tf-ti)^3+a4z*(tf-ti)^4+a5z*(tf-ti)^5;
   
    else
     
         Xd=0.257;
         Yd=0.005;
         Zd=0.035;
     
    end
   
   
Poli(1)=Xd;
Poli(2)=Yd;
Poli(3)=Zd;