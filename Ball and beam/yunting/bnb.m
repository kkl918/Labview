figure();
w = load('H:\Ball and beam\yunting\nlow5.txt');
plot(w(:,1),w(:,2)); 
ylabel('position(cm)')
xlabel('time(sec)')
axis([0 30 -150 250])