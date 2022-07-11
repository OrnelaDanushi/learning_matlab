function [ ] = disegna_coseno( A,f1,teta,t_inizio,t_fine,dt )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
t=[t_inizio:dt:t_fine];
cose=A*cos(2*pi*f1*t+teta);
figure;
plot(t,cose,'r-*');
hold on;
dt=1/(f1*100);
t=[t_inizio:dt:t_fine];
cose=A*cos(2*pi*f1*t+teta);
plot(t,cose,'c-');
end

