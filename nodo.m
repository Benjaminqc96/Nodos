clear
close all 
clc
disp('Este programa hace interpolacion lineal entre 2 puntos')
for i=1:2
fprintf('ingrese los puntos x%d: ',i)
a(i)=input('');
end
for i=1:2
fprintf('ingrese los puntos y%d: ',i)
b(i)=input('');
end
[p,l1,l2]=funnod(a,b);
z=-30:.01:30;
l(1)=l1;
l(2)=l2;
ejez=subs(p,z);
plot(z,ejez)
grid on
hold on
for i=1:2
    plot(a(i),b(i),'o')
    plot(z,subs(l(i),z))
end