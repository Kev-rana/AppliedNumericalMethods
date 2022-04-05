clear all
clc
syms x y
format long
xi = input("Enter x data:");
yi = input("Enter y data:");
decimal = input("correct to _ decimal places:");
n = length(yi);
denom = [];
num = [];
x = input("x:");
for i=1:n
    x_d(i) = 1;
    x_n(i) = 1;
    for j=1:n
        if j~=i
            %j
            %x_n
            %x_d
            x_n(i) = x_n(i)*(x - xi(j));
            x_d(i) = x_d(i)*(xi(i)-xi(j));
        end
    end
end
x_d = round(10^decimal*x_d)/10^decimal
x_n = round(10^decimal*x_n)/10^decimal
f = x_n./x_d.*yi;
f = round(10^decimal*f)/10^decimal
f_x = sum(f);
f_x = round(10^decimal*f_x)/10^decimal
