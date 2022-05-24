clc;
clear;

bits = [1,0,0,1,1,0,1,0];
n = 100;
T = length(bits);
N = n*T;

t = 0:1/n:T
x = zeros(1,length(t));

for i = 1:T
  if bits(i) == 1
    x((i-1)*n+1:i*n) = 1;
  end
end

plot(t,x, 'LineWidth', 3);
axis([0,T,-2,2]);
grid on;

