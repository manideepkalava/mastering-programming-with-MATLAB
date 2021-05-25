function op = mixit(v,s)
    if size(v,2)~=length(s)
        op=[];
    else
        s=s(:);%making it into a column vector
        %scaling and shifting to [-1 1]
        v=2*double(v)/(2^16-1) - 1;
        op=v*s;
        %keeping the ouput in the range
        if max(abs(op))>1
            op=op/max(abs(op));
        end
    end
end