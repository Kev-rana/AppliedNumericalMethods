clc
clear all
syms x
decimal = input("correct to _ decimal places:");
f = input("Enter the function:");
f_d = diff(f);

fprintf("x=\n")
pretty(f)
fprintf("f'(x)=\n")
pretty(f_d)
f = inline(f);
f_d = inline(f_d);

x1 = [-2 -1 0 1 2 3 4 5 ]
f_x = f(x1)

f = input("Enter the phi function:");
f_d = diff(f);

fprintf("x=\n")
pretty(f)
fprintf("f'(x)=\n")
pretty(f_d)
f = inline(f);
f_d = inline(f_d);

x1 = [-2 -1 0 1 2 3 4 5 ]
phi_dx1 = f_d(x1)

%{
for i=1:7
    x0 = input("initial x guess:");
    fdx = f_d(x0)
    %value= round(10^decimal*value)/10^decimal;
    pause

end
fprintf("--------------------------trial over\n")
%}

x0 = input("initial x guess:");
count =1;
while(1)
    fx = f(x0)
    fprintf(" -->x%i = %f\n",count,round(10^decimal*fx)/10^decimal);
    fprintf("--------------\n")
    x0 = fx;
    count = count+1;
    pause
end
