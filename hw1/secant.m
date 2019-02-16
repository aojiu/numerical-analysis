
% set function
f=@(x) x^3 - 3*(x^2) + 3;


% set number of iteration 
iter_num=5;


% secant
x_0 = 1;
x_1 = 1.2;
for i=1:iter_num
    
    x_2= x_1 - (f(x_1) * ((x_1 - x_0)/(f(x_1) - f(x_0))));
    display(x_2);
    x_0 = x_1;
    x_1 = x_2;
        
end  


