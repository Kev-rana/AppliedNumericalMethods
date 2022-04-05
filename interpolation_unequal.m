clear all
clc
syms x y
xi = input("Enter x data:");
yi = input("Enter y data:");
%decimal = input("correct to _ decimal places:");
%index = input("mention the index:");
y = yi;
x = xi;
y0 = [y(1)];
yn = [y(length(y))];
%y_stering = [yi(index)];
len_y = length(y);
xu = xi(2:len_y);
xl = xi(1:len_y-1);
for j = 1:len_y-1
    dy = [];
    %pause
    for i = 1: len_y-1
        dy(i) = (y(i+1) - y(i));
        %pause
        %x_range(i) = [x(i) x(i+1)];
    end
    %(xu(j: length(xl)) - xl(1: length(xl)-j+1))
    dy = dy./(xu(j: length(xl)) - xl(1: length(xl)-j+1));
    y = dy;
    y0(j+1) = y(1);
    %yn(j+1) = y(len_y-1);
    eval(['y_del' num2str(j) '=y'])
    len_y = length(y);
end

y0
%h = xi(2) - xi(1);
%v = x(1) - x(2);
x = input("enter x value:");
    %P = yi(1);
    %for i=1:length(yi)-1
x_array = [1];
x_accum = x - xi(1);
for k=2:length(y0)
    x_array(k) = x_accum;
    %xi(k)
    %pause
    x_accum = x_accum * (x-xi(k));
    %pause
end


x_array
P = y0.*x_array
P = sum(P)

