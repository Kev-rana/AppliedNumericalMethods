clc
clear all
syms x
decimal = input("correct to _ decimal places:");
f = input("Enter the function:");
%f_d = diff(f);

fprintf("f(x)=\n")
pretty(f)
%fprintf("f'(x)=\n")
%pretty(f_d)
f = inline(f);
%f_d = inline(f_d);
format short
x = [-2 -1 0 1 2 3 4 5 ]
f_x = f(x)
format long
I = input("[x0,x1] = ");
a = I(1); b = I(2);
count = 1;
for i=1:10
    fprintf(" a = %f            ; b = %f\n",a,b);
    fa = round(10^decimal*f(a))/10^decimal;
    fb = round(10^decimal*f(b))/10^decimal;
    fprintf(" f(%f) = %f ; f(%f) = %f\n",a,fa,b,fb);
    fprintf(" [(%f)(%f) - (%f)(%f)]/[%f - %f]\n",a,fb,b,fa,fb,fa);
    xn = (a*fb - b*fa)/(fb-fa);
    xn = round(10^decimal*xn)/10^decimal;
    count = count + 1;
    fn = f(xn);
    fn = round(10^decimal*fn)/10^decimal;
    fprintf(" x(%i) = %f         ; f(%f) = %f \n", count, xn, xn, fn);
    if sign(fn) == sign(fa)
        a = xn;
    else
        b = xn;
    end
    fprintf("-------------------------------\n");
    pause
end

