clear 
close all
clc

%%
x0 = [0.01; 20; 0; 0.83; 0.8];
Ts = 0.1;
tic
mdl = 'Bio_batch_PP1';
open_system(mdl);
sim(mdl)
toc
%%
figure;plot(t,y(:,1));hold on;plot(t,y1(:,1),'*');xlabel('Time (h)');ylabel('Biomass (g/l)');legend('Biomass model','EKF','Location','best')
figure;plot(t,y(:,2));hold on;plot(t,y1(:,2),'*');xlabel('Time (h)');ylabel('Sustrato (g/l)');legend('Substrate model','EKF','Location','best')
figure;plot(t,y(:,3));hold on;plot(t,y1(:,3),'*');xlabel('Time (h)');ylabel('Producto (g/l)');legend('Polymer model','EKF','Location','best')
figure;plot(t,P(:,1));hold on;plot(t,y1(:,4),'*');xlabel('Time (h)');ylabel('Umax (1/h)');legend('Umax model','EKF','Location','best')
figure;plot(t,P1(:,1));hold on;plot(t,y1(:,5),'*');xlabel('Time (h)');ylabel('Yxs (g/g)');legend('Yxs model','EKF','Location','best')