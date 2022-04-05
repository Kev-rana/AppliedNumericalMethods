clc
clear all
format short
decimal = input("correct to _ decimal places:");
matrix = zeros(5);
b = input("boundary values:");
b_up = b(1:5);       b_rt = b(6:8);
b_dn = flip(b(9:13));b_lt = b(14:16);
matrix(1,:) = b_up;
matrix(5,:) = b_dn;
matrix(2:4,1) = b_lt;
matrix(2:4,5) = b_rt;

u5 = (1/4)*(matrix(1,3)+matrix(5,3)+matrix(3,1)+matrix(3,5));
u5= round(10^decimal*u5)/10^decimal;
matrix(3,3) = u5;

u1 = (1/4)*(matrix(1,1)+matrix(1,3)+matrix(3,1)+matrix(3,3));
u1= round(10^decimal*u1)/10^decimal;
matrix(2,2) = u1;

u3 = (1/4)*(matrix(1,5)+matrix(3,5)+matrix(1,3)+matrix(3,3));
u3= round(10^decimal*u3)/10^decimal;
matrix(2,4) = u3;

u7 = (1/4)*(matrix(5,1)+matrix(3,1)+matrix(5,3)+matrix(3,3));
u7 = round(10^decimal*u7)/10^decimal;
matrix(4,2) = u7;

u9 = (1/4)*(matrix(5,5)+matrix(5,3)+matrix(3,5)+matrix(3,3));
u9= round(10^decimal*u9)/10^decimal;
matrix(4,4) = u9;

u2 = (1/4)*(matrix(2,4)+matrix(2,2)+matrix(1,3)+matrix(3,3));
u2= round(10^decimal*u2)/10^decimal;
matrix(2,3) = u2;

u4 = (1/4)*(matrix(4,2)+matrix(2,2)+matrix(3,1)+matrix(3,3));
u4= round(10^decimal*u4)/10^decimal;
matrix(3,2) = u4;

u8 = (1/4)*(matrix(4,4)+matrix(4,2)+matrix(5,3)+matrix(3,3));
u8= round(10^decimal*u8)/10^decimal;
matrix(4,3) = u8;

u6 = (1/4)*(matrix(4,4)+matrix(2,4)+matrix(3,5)+matrix(3,3));
u6= round(10^decimal*u6)/10^decimal;
matrix(3,4) = u6;

matrix

for i=1:1
    u1 = (1/4)*(matrix(1,2)+matrix(3,2)+matrix(2,1)+matrix(2,3));
    u1= round(10^decimal*u1)/10^decimal
    matrix(2,2) = u1;
    matrix
    pause
    u2 = (1/4)*(matrix(2,4)+matrix(2,2)+matrix(1,3)+matrix(3,3));
    u2= round(10^decimal*u2)/10^decimal
    matrix(2,3) = u2;
    matrix
    pause
    u3 = (1/4)*(matrix(1,4)+matrix(3,4)+matrix(2,5)+matrix(2,3))
    u3= round(10^decimal*u3)/10^decimal
    matrix(2,4) = u3;
    matrix
    pause
    u4 = (1/4)*(matrix(4,2)+matrix(2,2)+matrix(3,1)+matrix(3,3));
    u4= round(10^decimal*u4)/10^decimal
    matrix(3,2) = u4;
matrix
pause
    u5 = (1/4)*(matrix(3,4)+matrix(3,2)+matrix(2,3)+matrix(4,3));
    u5= round(10^decimal*u5)/10^decimal
    matrix(3,3) = u5;
    matrix
    pause
    u6 = (1/4)*(matrix(4,4)+matrix(2,4)+matrix(3,5)+matrix(3,3));
    u6= round(10^decimal*u6)/10^decimal
    matrix(3,4) = u6;
    matrix
    pause
    u7 = (1/4)*(matrix(4,3)+matrix(4,1)+matrix(5,2)+matrix(3,2));
    u7 = round(10^decimal*u7)/10^decimal
    matrix(4,2) = u7;
    matrix
    pause
    u8 = (1/4)*(matrix(4,4)+matrix(4,2)+matrix(5,3)+matrix(3,3));
    u8= round(10^decimal*u8)/10^decimal
    matrix(4,3) = u8;
    matrix
    pause
    u9 = (1/4)*(matrix(4,5)+matrix(4,3)+matrix(3,4)+matrix(5,4));
    u9= round(10^decimal*u9)/10^decimal
    matrix(4,4) = u9;
    matrix
end





    

