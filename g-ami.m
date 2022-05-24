clc;
clear;

bits = [1,0,0,1,1,0,1];
n = 100;
T = length(bits);
N = n*T;

t = 0:1/n:T;
x = zeros(1, length(t));

k = 1;
for i = 1:T
  if bits(i) == 1;
    k = -k;
    x((i-1)*n+1:i*n) = k;
  end
end

plot(t,x);
axis([0,T,-2,2]);
grid on;

title('Bipolar AMI');
xlabel('signal');
ylabel('time');

