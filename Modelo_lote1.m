function vard=Modelo_lote1(var,u1,u2)

%Llamar parámetros
umax = u1;%0.83;
Yxs= u2;%0.8;
Ks=0.08;
alfa=0.05;
beta=0.002;
Smax=30;
ms=0.00001;

%Definir dinámicas
X=var(1);
S=var(2);
P=var(3);

%Ecuaciones constitutivas
u=umax*(S/(Ks+S))*(1-(S/Smax));
Rp=(alfa*u+beta);
Rs=((u/Yxs)+ms);

%Ecuaciones diferenciales
vard(1)=u*X;
vard(2)=-Rs*X;
vard(3)=Rp*X;
vard=vard';
