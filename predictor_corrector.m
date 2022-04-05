clc
clear all
syms x y
format long
decimal = input("correct to _ decimal places:");
f_d = input("Enter the function y':");
f_d = inline(f_d,'x','y');
xn_plus1= input("Enter xn:");
h = input("Enter the step:");
values = input("type 1 if given and 2 if not given");
if values == 1
    I = input("[xn-3,yn-3,xn-2,yn-2,xn-1,yn-1,xn,yn]:");
end
if values == 2
   I = [0,0,0,0,0,0,0,0];
   x0= input("Enter x0:"); xn_3 = x0;
   y0= input("Enter y0:"); yn_3 = y0;
   I(1) = x0; I(2) = y0;
   count = 2;
   iters = 3;
    for i=1:iters
        k1 = h*f_d(x0,y0);
        k1= round(10^decimal*k1)/10^decimal;
        k2 = h*f_d(x0+h/2, y0+k1/2);
        k2= round(10^decimal*k2)/10^decimal;
        k3 = h*f_d(x0+h/2, y0+k2/2);
        k3= round(10^decimal*k3)/10^decimal;
        k4 = h*f_d(x0+h, y0+k3);
        k4= round(10^decimal*k4)/10^decimal;
        delY = (k1+2*k2+2*k3+k4)/6;
        delY= round(10^decimal*delY)/10^decimal;
        x0 = x0 + h;
        count = count+1;
        I(count) = x0;
        y0 = y0 + delY;
        count = count+1;
        I(count) = y0;
        fprintf("k1 = %f ; k2 = %f ; k3 = %f; k4 = %f;\n delY = %f; y(%d) = %f; x(%d) = %f\n",k1,k2,k3,k4,delY,i,y0,i,x0);
        fprintf("______________________________\n");
    end
end
xn_3 = I(1);yn_3 = I(2); 
xn_2 = I(3);yn_2=I(4);
xn_1=I(5);yn_1=I(6);
xn=I(7);yn=I(8);

dyn = f_d(xn,yn);
dyn = round(10^decimal*dyn)/10^decimal;
dyn_1 = f_d(xn_1,yn_1);
dyn_1 = round(10^decimal*dyn_1)/10^decimal;
dyn_2 = f_d(xn_2,yn_2);
dyn_2 = round(10^decimal*dyn_2)/10^decimal;
dyn_3 = f_d(xn_3,yn_3);
dyn_3 = round(10^decimal*dyn_3)/10^decimal;
fprintf("dyn_3 = %f ; dyn_2 = %f  ; dyn_1 = %f; dyn = %f;\n ",dyn_3,dyn_2,dyn_1 ,dyn );


y_nPlus1P = yn + (h/24)*(55*dyn-59*dyn_1+37*dyn_2-9*dyn_3);
y_nPlus1P = round(10^decimal*y_nPlus1P)/10^decimal;
dy_nPlus1 = f_d(xn_plus1,y_nPlus1P);
dy_nPlus1 = round(10^decimal*dy_nPlus1)/10^decimal;
y_nPlus1C = yn + (h/24)*(9*dy_nPlus1+19*dyn-5*dyn_1+dyn_2);
y_nPlus1C = round(10^decimal*y_nPlus1C)/10^decimal;

fprintf("y_nPlus1P = %f, dy_nPlus1 = %f, y_nPlus1C = %f\n", y_nPlus1P, dy_nPlus1, y_nPlus1C);
