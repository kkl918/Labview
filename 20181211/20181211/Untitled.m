%%
S=load('HW_20181211'); % Load Signal data
s1 = S(1,:);
s2 = S(2,:);

figure(1);
plot(0:0.01:(length(S)-1)*0.01,S(1,:))

%%
Ts=10;
T=Ts/1000;
Fs=1/T;
T=1/Fs;
L=length(S(1,:));
t=(0:L-1)*T;
Y=fft(S(1,:));

%%
P2=abs(Y/L);
P1=P2(1:L/2+1);
P1(2:end-1)=2*P1(2:end-1);
f=Fs*(0:(L/2))/L;
figure(2);
plot(f,P1);

Y