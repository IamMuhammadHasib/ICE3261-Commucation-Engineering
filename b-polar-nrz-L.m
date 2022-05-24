clc;
clear;

bits = [1,0,0,1,1,0,1];
T = length(bits);
n = 100;
N = n*T;

t = 0:1/n:T;
x = ones(1,length(t));

for i = 1:T
  if bits(i) == 1
    x((i-1)*n+1:i*n) = -1;
  end
end

plot(t,x, 'LineWidth', 1);
axis([0, T, -2, 2]);
grid on;

xlabel("time");
ylabel('signal');
title('NRZ-L');

