function [a, b] = lin_reg(x,y)
    %x and y are row vectors and in linear equation matrix we need x values in column 1 and 1s in next column
    mat = [x; ones(1,length(x))]';
    % y should also be a coulumn vector
     op= mat \ y';
     a=op(1);
     b=op(2);
end