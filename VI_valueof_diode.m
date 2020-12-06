clc;
clear all;
close all;
n=2;%ideality factor for silicon diode
Is=10^(-9);%reverse saturation current for silicon diode
K=1.3806*10^(-23);%boltzmann constant
T=300;%room temprature of 27 degree celcius represented in kelvin
q=1.6*10^(-19);
Vt=K*T/q;%thermal voltage value
v=[-15:0.01:1.5];%Range for voltage applied at the diode
[~,length_v]=size(v);
I=zeros(1,length_v);
for i=1:1:length_v
           if ((v(i) >= 0.59) || (v(i) <= -2.56))
                I(i)=Is*(exp(v(i)/(n*Vt))-1);
           else
                I(i)=0;
           end
end