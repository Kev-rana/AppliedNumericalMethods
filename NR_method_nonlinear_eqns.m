clc
clear all
syms x y f g
format short
decimal = input("correct to _ decimal places:");

f = input("Enter the function f:");
g = input("Enter the function g:");
fd_x = diff(f,x);
fd_y = diff(f,y);
gd_x = diff(g,x);
gd_y = diff(g,y);


fprintf("f(x,y)=\n")
pretty(f)
fprintf("g(x,y)=\n")
pretty(g)
fprintf("f'(x)=\n")
pretty(fd_x)
fprintf("f'(y)=\n")
pretty(fd_y)
fprintf("g'(x)=\n")
pretty(gd_x)
fprintf("g'(y)=\n")
pretty(gd_y)

%fprintf("f'(x)=\n")
f = inline(f,'x','y');
g = inline(g,'x','y');
fd_x = inline(fd_x,'x','y');
fd_y = inline(fd_y,'x','y');
gd_x = inline(gd_x,'x','y');
gd_y = inline(gd_y,'x','y');
J_matrix = {fd_x fd_y; gd_x gd_y};

I = input("[x0,y0] = ");
x0 = I(1); y0 = I(2);
count = 1;
while(1)
    fprintf("count = %d\n", count);
    
    f_x0y0 = round(10^decimal*f(x0,y0))/10^decimal;
    g_x0y0 = round(10^decimal*g(x0,y0))/10^decimal;
    fprintf("f = %f    ;  g = %f \n", f_x0y0, g_x0y0);
    
    fd_x_x0y0 =  round(10^decimal*fd_x(x0,y0))/10^decimal;
    %fd_x_x0y0 =  round(10^decimal*fd_x(x0))/10^decimal;    
    
    %fd_y_x0y0 = round(10^decimal*fd_y(y0))/10^decimal;
    fd_y_x0y0 = round(10^decimal*fd_y(x0,y0))/10^decimal;
    
    %gd_x_x0y0 = round(10^decimal*gd_x(x0))/10^decimal;
    gd_x_x0y0 = round(10^decimal*gd_x(x0,y0))/10^decimal;
    
    %gd_y_x0y0 = round(10^decimal*gd_y(y0))/10^decimal;
    gd_y_x0y0 = round(10^decimal*gd_y(x0,y0))/10^decimal;
    
    fprintf(" fx = %f    ;  gx = %f \n", fd_x_x0y0, gd_x_x0y0);
    fprintf(" fy = %f    ;  gy = %f \n", fd_y_x0y0, gd_y_x0y0);

    J = [fd_x_x0y0 fd_y_x0y0; gd_x_x0y0 gd_y_x0y0]
    det_j = det(J);
    fprintf("|J| = %f\n", det_j);
    
    h = (g_x0y0 * fd_y_x0y0 - f_x0y0 * gd_y_x0y0)/det_j;
    h = round(10^decimal*h)/10^decimal;
    
    k = (f_x0y0 * gd_x_x0y0 - g_x0y0 * fd_x_x0y0)/det_j;
    k = round(10^decimal*k)/10^decimal;
    
    fprintf("h = %f     ; k = %f\n", h, k);
    x0 = x0 + h;
    y0 = y0 + k;
    fprintf("x = %f     ; y = %f\n", x0, y0);
    count = count + 1;
    disp("--------------------------------------------------")
    pause
end