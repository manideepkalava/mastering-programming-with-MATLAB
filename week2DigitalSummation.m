function op = digit_sum(n)
    if n<10
        op=n;
    else
        op=digit_sum(fix(n/10))+rem(n,10)
    end
end