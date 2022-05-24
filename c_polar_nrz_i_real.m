clc;
clear;
bits = [1,0,0,1,1,0,1];
%bits = input("INPUT BITS: ");

T = length(bits);
n = 100;
N = n*T;

t = 0:1/n:T;
x = ones(1,length(t));

k = 1;
for i = 1:T
  if bits(i) == 1
    k=k*-1;
  end
  x((i-1)*n+1:i*n)=k;
end

plot(t,x,'LineWidth',3);
axis([0,T,-2,2]);
grid on;

title('NRZ-I');
xlabel('Time');
ylabel('Signal');
