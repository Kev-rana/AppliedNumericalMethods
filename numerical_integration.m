clear all
clc
syms x y
xi = input("Enter x data:");
yi = input("Enter y data:");
h = input("h:");
%choice = input("1->TR,2->S 1/3,3->S 3/8:");
%if choice == 1
    %h = input("h (in case of rombergs method):");
fprintf("trapezoidal or romberg rule\n");
h
q=h;
I = h/2*(yi(1) + yi(length(yi)) + sum(2*(yi(2:length(yi)-1))))
h=h/2
I = h/2*(yi(1) + yi(length(yi)) + sum(2*(yi(2:length(yi)-1))))
h=h/2
I = h/2*(yi(1) + yi(length(yi)) + sum(2*(yi(2:length(yi)-1))))      
%end
%if choice == 3
h=q;
fprintf("s 3/8\n");
% simpsons 3/8 rule, only if n is multiple of 3
I = 3*h/8*(yi(1) + yi(length(yi)) + sum(3*(yi(2:length(yi)-1)))- sum(3*(yi(4:3:length(yi)-1))) + sum(2*(yi(4:3:length(yi)-1))))
%end
%if choice == 2
fprintf("s 1/8\n")
    % simpsons 1/8 rule, if even interval
I = h/3*(yi(1) + yi(length(yi)) + sum(4*(yi(2:2:length(yi)-1))) + sum(2*(yi(3:2:length(yi)-1))))
%end

