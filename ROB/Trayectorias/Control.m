function tau=f(u)

qe1=u(1);
qe2=u(2);
qe3=u(3);

global Kp1 Kp2 Kp3;
global Ki1 Ki2 Ki3;
global Kd1 Kd2 Kd3;
global T qe1ant qe2ant qe3ant Intant1 Intant2 Intant3;






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%% DERIVADA DE LOS ERRORES %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Der1=(qe1-qe1ant)/T;
Der2=(qe2-qe2ant)/T;
Der3=(qe3-qe3ant)/T;

qe1ant=qe1;
qe2ant=qe2;
qe3ant=qe3;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%% INTEGRAL DE LOS ERRORES %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Int1=Intant1+qe1*T;
Int2=Intant2+qe2*T;
Int3=Intant3+qe3*T;

Intant1=Int1;
Intant2=Int2;
Intant3=Int3;



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%   C  O  N  T  R  O  L   %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


tau1=Kp1*qe1+Ki1*Int1;
tau2=Kp2*qe2+Ki2*Int2;
tau3=Kp3*qe3+Ki3*Int3;

%+Kd1*Der1+Ki1*Int1;
%+Kd2*Der2+Ki2*Int2;
%+Kd3*Der3+Ki3*Int3;

tau(1)=tau1;
tau(2)=tau2;
tau(3)=tau3;
