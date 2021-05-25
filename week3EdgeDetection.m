function op = edgy(image)
    [row col]=size(image);
    % creating empty image with less 2 units less in row and column
    op=zeros(row-2,col-2);
    %calculations are easy in double
    image=double(image);
    %given matrices for sobel operator
    sx=[-1 0 1;-2 0 2;-1 0 1];
    sy=[1 2 1;0 0 0;-1 -2 -1];
    for i = 1:row-2
        for j=1:col-2
            dx=image(i:i+2,j:j+2).*sx;
            dy=image(i:i+2,j:j+2).*sy;
            %given sobel formula is scalar
            op(i,j)=sqrt(sum(sum(dx(:)))^2+sum(sum(dy(:)))^2);
        end
    end
    op=uint8(op);
end