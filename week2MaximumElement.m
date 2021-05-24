function op = recursive_max(vector)
    len=length(vector);
    if len==1
        op = vector(1);
    else
        if (vector(len)>recursive_max(vector(1:(len-1))))%decreasing the length and checking if the last element is the maximum number
            op=vector(len);
        else
            op=recursive_max(vector(1:(len-1)));
        end
    end
end