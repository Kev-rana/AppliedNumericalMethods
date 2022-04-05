clear all
clc
syms x y
xi = input("Enter x data:");
yi = input("Enter y data:");
decimal = input("correct to _ decimal places:");%not implemented
%index = input("mention the index:");
y = yi;
y0 = [y(1)];
yn = [y(length(y))];
%y_stering = [yi(index)];
len_y = length(y);
for j = 1:len_y-1
    dy = [];
    for i = 1: len_y-1
        dy(i) = y(i+1) - y(i);
    end
    y = dy;
    y0(j+1) = y(1);
    yn(j+1) = y(len_y-1);
    eval(['y_del' num2str(j) '=y'])
    len_y = length(y);
end

y0
yn

h = xi(2) - xi(1);
%v = x(1) - x(2);
x = input("enter x value:");
q = input("forward-> 1;backward ->2;stirling-> 3:");
if q == 1
    %P = yi(1);
    %for i=1:length(yi)-1

    u = (x-xi(1))/h
    u_array = [1];
    div = [1];
    u_cum = u;
    for k=2:length(yi)
        div(k) = factorial(k-1);
        u_array(k) = u_cum;
        %u-(k-1)
        %pause
        u_cum = u_cum * (u-(k-1));
        %pause
    end
    div
    u_array
    P = y0.*u_array./div
    P = sum(P)
else q == 2
    v = (x-xi(length(xi)))/h
    v_array = [1];
    div = [1];
    v_cum = v;
    for k=2:length(yi)
        div(k) = factorial(k-1);
        v_array(k) = v_cum;
        %u-(k-1)
        %pause
        v_cum = v_cum * (v+(k-1));
        %pause
    end
    div
    v_array
    P = yn.*v_array./div
    P = sum(P)
end
    %{
else if q == 3
        y_sterling = [y(index)];
        for m=2:length(y0)
      %}
    
    