clc
clear all
%decimal = 3;
decimal = input("correct to _ decimal places:");
A = input("Enter matrix A:")
format short
v1 = [0;0;1];
v = v1;
v_old = v;
count1 = 0;
while(1)
    v = A*v;
    maxv = max(abs(v));
    if maxv ~= max(v)
        sign = -1;
    else 
        sign = +1;
    end
    lambda = sign*maxv;
    v = v/lambda;
    count1 = count1+1;
    v= round(10^decimal*v)/10^decimal;
    if v- v_old == [0;0;0]
        break
    end
    if count1 > 50
        count1;
        break
    end
    v_old = v;
    
end
fprintf("[0;0;1]; count = %i\n", count1)
lambda
fprintf("_______________________\n");

v2 = [0;1;0];
v = v2;
v_old = v;
count2 = 0;
while(1)
    v = A*v;
    maxv = max(abs(v));
    if maxv ~= max(v)
        sign = -1;
    else 
        sign = +1;
    end
    lambda = sign*maxv;
    v = v/lambda;
    count2 = count2+1;
    v= round(10^decimal*v)/10^decimal;
    if v- v_old == [0;0;0]
        break
    end
    if count2 > 50
        count2;
        break
    end
    v_old = v;
    
end
fprintf("[0;1;0]; count = %i\n", count2)
lambda

fprintf("_______________________\n");

v3 = [1;0;0];
v = v3;
v_old = v;
count3 = 0;
while(1)
    v = A*v;
    maxv = max(abs(v));
    if maxv ~= max(v)
        sign = -1;
    else 
        sign = +1;
    end
    lambda = sign*maxv;
    v = v/lambda;
    count3 = count3+1;
    v= round(10^decimal*v)/10^decimal;
    if v- v_old == [0;0;0]
        break
    end
    if count3 > 50
        count3;
        break
    end
    v_old = v;
   
end
fprintf("[1;0;0]; count = %i\n", count3)
lambda

fprintf("_______________________\n");
v4 = [1;1;1];
v = v4;
v_old = v;
count4 = 0;
while(1)
    v = A*v;
    maxv = max(abs(v));
    if maxv ~= max(v)
        sign = -1;
    else 
        sign = +1;
    end
    lambda = sign*maxv;
    v = v/lambda;
    count4 = count4+1;
    v= round(10^decimal*v)/10^decimal;
    if v- v_old == [0;0;0]
        break
    end
    if count4 > 50
        count4;
        break
    end
    v_old = v;
   
end
fprintf("[1;1;1]; count = %i\n", count4)
lambda
fprintf("---------------\n")
    
count = 0;
v = input("v=")
while(1)
    fprintf("A x V")
    v = A*v;
    v= round(10^decimal*v)/10^decimal
    fprintf("-------\n")
    fprintf("lambda = %f\n",max(v));
    maxv = max(abs(v));
    if maxv ~= max(v)
        sign = -1;
    else 
        sign = +1;
    end
    lambda = sign*maxv
    v = v/lambda;
    v= round(10^decimal*v)/10^decimal
    count = count+1;
    count;
    v_old = v;
    fprintf("Count = %i\n",count);
    fprintf("---------------------------------\n")
    pause
end
%}
