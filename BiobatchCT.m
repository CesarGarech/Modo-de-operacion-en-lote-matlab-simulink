function vard=BiobatchCT(var)

%Llamar parámetros
% umax = 0.83;
% Yxs=0.8;
Ks=0.08;
alfa=0.05;
beta=0.002;
Smax=30;
ms=0.00001;

%Definir dinámicas
X=var(1);
S=var(2);
P=var(3);
umax=var(4);
Yxs=var(5);

%Ecuaciones constitutivas
u=umax*(S/(Ks+S))*(1-(S/Smax));
Rp=(alfa*u+beta);
Rs=((u/Yxs)+ms);

vard = zeros(5,1);
%Ecuaciones diferenciales
vard(1)=u*X;
vard(2)=-Rs*X;
vard(3)=Rp*X;
vard(4)=0;
vard(5)=0;
% vard=vard';
