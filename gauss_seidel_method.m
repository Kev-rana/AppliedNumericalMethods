clc
clear all
syms x1 x2 x3
decimal = input("correct to _ decimal places:");
A = input("Enter matrix A:")
B = input("input vector B:")
disp("checked the condition of a11,a22,a33 the greatest?")
%print the equations
x_1 =(B(1) - A(4)*x2 -A(7)*x3)%/A(1);
x_2 = (B(2) - A(2)*x1 -A(8)*x3)%/A(5);
x_3 = (B(3) - A(3)*x1 -A(6)*x2)%/A(9);

%pretty(x_1)
%pretty(x_2)
%pretty(x_3)

x1 = input("x1:");
x2 = input("x2:");
x3 = input("x3:");
while(1)
    x1 =(B(1) - A(4)*x2 -A(7)*x3)/A(1);
    x1= round(10^decimal*x1)/10^decimal;

    x2 = (B(2) - A(2)*x1 -A(8)*x3)/A(5);
    x2= round(10^decimal*x2)/10^decimal;

    x3 = (B(3) - A(3)*x1 -A(6)*x2)/A(9);
    x3= round(10^decimal*x3)/10^decimal;

    fprintf("x1 = %f ; x2 = %f ; x3 = %f\n",x1,x2,x3);
    pause
end