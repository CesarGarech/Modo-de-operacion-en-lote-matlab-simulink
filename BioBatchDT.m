function xk1 = BioBatchDT(xk)

Ts = 0.1;
xk1 = xk(:);
N = 10;  % Number of integration time steps for Euler method
dt = Ts/N;
% uk1 = [uk(:);0];
for i = 1:N
    xk1 = xk1 + dt*BiobatchCT(xk1);
end