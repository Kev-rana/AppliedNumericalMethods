clear all
clc
syms x
f = input("enter the function:")
decimal = input("correct to _ decimal places:");
%while(1)
 %   choice = input("1->generalRange,2->2PointGauss,3->3PointGauss:");
  %  if choice == 2
        fprintf("2 point gaussian quadrature formula\n");
        subs(f,-1/sqrt(3))
        subs(f,1/sqrt(3))
        I2_fx = subs(f,-1/sqrt(3)) + subs(f,1/sqrt(3))
        I2_fx = round(10^decimal*I2_fx)/10^decimal

    %end
    %if choice == 3
        fprintf("3 point gaussian quadrature formula\n");
        subs(f,-sqrt(3/5))
        subs(f,sqrt(3/5))
        subs(f, 0)
        I3_fx = 5/9*(subs(f,-sqrt(3/5)) + subs(f,sqrt(3/5))) + 8/9 * subs(f, 0)
        I3_fx = round(10^decimal*I3_fx)/10^decimal
    %end
    %if choice == 1
        fprintf("for general range(a,b)\n")
        fprintf("press ctrl+c if not given\n"); 
        a = input("a:");
        b = input("b:");
        z = 0.5 * ((b-a)*x + (b+a))
        dz = diff(z, x)
        f = subs(f,x,z) * dz
    %end
%end