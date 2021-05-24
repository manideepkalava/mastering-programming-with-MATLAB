function op = fibor(n)
    if n == 1
        op = [1];
    elseif n==2
        op=[1 1];
    else
        op=fibor(n-1);
        op=[op op(end)+op(end-1)];
    end
end