function op = grader(f1,f2,varargin)
    for ii = 1:length(varargin)
        if ~isequal(f1(varargin{ii}),f2(varargin{ii}))
            op = false;
            return;
        end
    end
    op = true;
end