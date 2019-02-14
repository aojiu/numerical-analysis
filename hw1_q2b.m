order = zeros(1,121);
order2 = zeros(1,121);
x = [1 0.3 0.09 0.027 0.0082 0.00243 0.000729 0.0002187 0.00006561 0.000019683 0.0000059049]
y = [1 0.6648383611734 0.4404850619261 0.2895527955097 0.1869046766665 0.1155100169867 0.0638472856062 0.0254178900244 0.0032236709627 0.0000080907744 0.0000000000001]

exact = 0
for i=0:10
    % different fixed point iterations
    
    if i < 2
        fprintf('%10d    %.16f    %10s\n', i+1, x(i+1), '-' );
    else
        order(i+1) = log(abs(exact-x(i+1))/abs(exact-x(i)))/log(abs(exact-x(i))/abs(exact-x(i-1)));
        fprintf('%10d    %.16f    %.10f\n', i+1, x(i+1), order(i+1) );
    end

    

end
fprintf('\n')
for i=0:10
    % different fixed point iterations
    
    if i < 2
        fprintf('%10d    %.16f    %10s\n', i+1, y(i+1), '-' );
    else
        order(i+1) = log(abs(exact-y(i+1))/abs(exact-y(i)))/log(abs(exact-y(i))/abs(exact-y(i-1)));
        fprintf('%10d    %.16f    %.10f\n', i+1, y(i+1), order(i+1) );
    end
end

