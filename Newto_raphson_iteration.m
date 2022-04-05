clc
clear all
syms x
decimal = input("correct to _ decimal places:");
f = input("Enter the function:");
f_d = diff(f);

fprintf("f(x)=\n")
pretty(f)
fprintf("f'(x)=\n")
pretty(f_d)
f = inline(f);
f_d = inline(f_d);
format short
x = [-2 -1 0 1 2 3 4 5 ]
f_x = f(x)
x0 = input("initial x guess:");
count =0;
format long
while(1)
    fx = f(x0);
    fdx = f_d(x0);
    fx= round(10^decimal*fx)/10^decimal;
    fdx= round(10^decimal*fdx)/10^decimal;
    fprintf(" f(x) = %f ;  f'(x) = %f\n", fx, fdx);
    x0 = x0 - fx/fdx;
    count = count+1;
    fprintf(" x%i = %f\n",count,round(10^decimal*x0)/10^decimal);
    fprintf("--------------\n")
    pause
end
