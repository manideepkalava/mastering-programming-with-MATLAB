function op = voters(g,varargin)
    if isempty(g)
        op = struct('Name', {}, 'ID', {});
    end
    if rem(nargin,2)==0
        op=g
        return
    end
    len=length(varargin)/2;
    for ii = 1:len
        jj=2*ii;
        if (ischar(varargin{jj-1}) || isstring(varargin{jj-1})) && isa(varargin{jj}, 'double') && (fix(varargin{jj})==(varargin{jj}))
            op(ii) = struct('Name', convertCharsToStrings(varargin{(2*ii)-1}), 'ID', double(varargin{2*ii}));
        else
            op=g
            return
        end
    end
    op=[g op]
end