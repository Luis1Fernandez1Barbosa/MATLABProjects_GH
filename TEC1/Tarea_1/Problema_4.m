%{ 
Problema 4.- Una persona deposita $1,000 en un banco. 
El depósito gana el 1% de interés mensual. Escribe un programa que calcule el saldo mensual,
pero solo muestre el interés anual para 10 años. Verifica que después de 10 años
el saldo es de $3,300.39, mientras que si los intereses fueran ganados anualmente 
a una razón de 12% por año, el saldo hubiera sido solamente de $3,105.85.
%}
d1=1000;
i=0.01;
ia=0.12;
for m=1:120
   d2=d1*i;
   %disp(d2);
   d1=d1+d2; 
end
d1
da=1000;
for m=1:10
   d2=da*ia;
   %disp(d2);
   da=da+d2; 
end
da