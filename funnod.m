function [p,l1,l2]=funnod(a,b)
syms x
l1=(x-a(2))/(a(1)-a(2));
l2=(x-a(1))/(a(2)-a(1));
p=(b(1)*l1)+(b(2)*l2);
end