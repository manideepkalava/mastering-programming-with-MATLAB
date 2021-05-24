function op = poly_fun(p)
    function polynomial = poly(x)
        polynomial = sum(p .* x.^(0 : length(p)-1));
    end 
    op = @poly;
end