
% set function
f=@(x) x^3 - 3*(x^2) + 3;
f_d = @(x) 3*x^2 - 6*x;

% set number of iteration 
iter_num=5;


% secant
x_0 = 1.5;

for i=1:iter_num
    
    x_1= x_0 - ((f(x_0))/(f_d(x_0)));
    x_0 = x_1;
    display(x_1);
        
end  


