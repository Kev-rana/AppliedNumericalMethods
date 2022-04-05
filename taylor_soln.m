clc
clear all
syms x y
decimal = input("correct to _ decimal places:");
f_d = input("Enter the function:");
f_2d = diff(f_d);
f_3d = diff(f_2d);
f_4d = diff(f_3d);

f_5d = diff(f_4d);
%f_6d = diff(f_5d);
%f_7d = diff(f_6d);

y0 = input("y0:");

%s
fprintf("f(x)=\n")
pretty(f)
fprintf("f'(x)=\n")
pretty(f_d)
f = inline(f);
f_d = inline(f_d);