clc;
clear;

bits = [1,0,0,1,1,0,1];
n = 100;
T = length(bits);
N = n*T;

t = 0:1/n:T
x = zeros(1, length(t));

for i = 1:T
  if bits(i) == 0
    value = -1;
  else
    value = 1;
  end
  x((i-1)*n+1:i*n-n/2) = value;
end

plot(t,x);
axis([0,T,-2,2]);
grid on;

title('Polar RZ');
xlabel('Signal');
ylabel('Time');

