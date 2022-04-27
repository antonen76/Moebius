% Trasfmormazioni di Moebius
%function moebius()
t=[0:0.001:2*pi];

z1=6*exp(i*t);
z2=3i+3*exp(i*t);
z3=4+2*exp(i*t);
z4=4+3*i+exp(i*t);
% funzione di trasformazione di Moebius
% f=(w-6*i)*(6-(12/5+6/5*i))/((w-(12/5+6/5*i))*(6-6*i))==4/(z-2)
% solve(f,w)
% ans =
% (z^2*6i - z*72i + (192 + 216i))/(z^2 - 20*z + 116)

tz=4+4*i+2*exp(i*t);
tz2=4+8*i+2*exp(i*t);
tz3=4+12*i+2*exp(i*t);
tz4=4+16*i+2*exp(i*t);
tz5=4+20*i+2*exp(i*t);
tz6=4+24*i+2*exp(i*t);
tz7=4+28*i+2*exp(i*t);

for j=1:6284
tw2(j)=(6*i*tz2(j)^2-72*i*tz2(j)+(192+216*i))/(tz2(j)^2-20*tz2(j)+116);
tw3(j)=(6*i*tz3(j)^2-72*i*tz3(j)+(192+216*i))/(tz3(j)^2-20*tz3(j)+116);
tw4(j)=(6*i*tz4(j)^2-72*i*tz4(j)+(192+216*i))/(tz4(j)^2-20*tz4(j)+116);
tw5(j)=(6*i*tz5(j)^2-72*i*tz5(j)+(192+216*i))/(tz5(j)^2-20*tz5(j)+116);
tw6(j)=(6*i*tz6(j)^2-72*i*tz6(j)+(192+216*i))/(tz6(j)^2-20*tz6(j)+116);
tw7(j)=(6*i*tz7(j)^2-72*i*tz7(j)+(192+216*i))/(tz7(j)^2-20*tz7(j)+116);
end;

t2=[-pi/2:0.001:pi/2];
t1=[0:0.001:pi/2];
t3=[0:0.001:pi];
dz1=6*exp(i*t1);
dz2=3i+3*exp(i*t2);
dz3=4+2*exp(i*t3);


hold on;
axis equal;
fill(real(dz2),imag(dz2),'y');
fill(real(dz3),imag(dz3),[0.8 0.8 0.8]);
fill(real(z4),imag(z4),'g');
%plot(z2);
%plot(z3);
plot(z4);
plot(tw2,'b');
plot(tw3,'g');
plot(tw4,'g');
plot(tw5,'g');
plot(tw6,'g');
plot(tw7,'g');
plot(tw3,'g');
for j=1:6284
rtw2(j)=norm(abs(tw2(1)-tw2(j)));
rtw3(j)=norm(abs(tw3(1)-tw3(j)));
rtw4(j)=norm(abs(tw4(1)-tw4(j)));
rtw5(j)=norm(abs(tw5(1)-tw5(j)));
rtw6(j)=norm(abs(tw6(1)-tw6(j)));
rtw7(j)=norm(abs(tw7(1)-tw7(j)));
end;
disp(max(rtw2)/2);
disp(max(rtw3)/2);
disp(max(rtw4)/2);
disp(max(rtw5)/2);
disp(max(rtw6)/2);
disp(max(rtw7)/2);
