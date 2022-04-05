clc
clear all
syms x y
format long
decimal = input("correct to _ decimal places:");
f = input("Enter the function y':");
f = inline(f,'x','y');
%f_d = diff(f);
h = input("Enter the step:");
x0= input("Enter x0:");
y0= input("Enter y0:");
xn= input("Enter xn:");
iters = (xn-x0)/h;
for i=1:iters
    k1 = h*f(x0,y0);
    k1= round(10^decimal*k1)/10^decimal;
    k2 = h*f(x0+h/2, y0+k1/2);
    k2= round(10^decimal*k2)/10^decimal;
    k3 = h*f(x0+h/2, y0+k2/2);
    k3= round(10^decimal*k3)/10^decimal;
    k4 = h*f(x0+h, y0+k3);
    k4= round(10^decimal*k4)/10^decimal;
    delY = (k1+2*k2+2*k3+k4)/6;
    delY= round(10^decimal*delY)/10^decimal;
    y0 = y0 + delY;
    x0 = x0 + h;
    fprintf("k1 = %f ; k2 = %f ; k3 = %f; k4 = %f;\n delY = %f; y(%d) = %f; x(%d) = %f\n",k1,k2,k3,k4,delY,i,y0,i,x0);
    fprintf("______________________________\n");
end
    
