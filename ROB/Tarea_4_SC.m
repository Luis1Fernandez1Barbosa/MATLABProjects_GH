prompt1 = 'Valor de t1 en grados: ' 
prompt2 = 'Valor de t2 en grados: ' 
t1=input(prompt1);
t2=input(prompt2);

%Matriz de rotacion 1 respecto a 0
%R1=[cosd(t1-t2) -sind(t1+t2) 0; sind(t1+t2) cosd(t1-t2) 0; 0 0 1] 
R2=[cosd(t1-t2) -sind(t1+t2) 0; sind(t1+t2) cosd(t1-t2) 0] 
plot(R2);