function op = name_value_pairs(varargin)
 op={};
 %creating empty output for checking empty or odd input arguments
 if rem(length(varargin),2)
     return;
 end
 for i = 1:floor(length(varargin)/2)
     %checking for odd values are char or not
     if ischar(varargin{2*i-1}) == false
         op={};
         return;
     end
     op{i,1}=varargin{2*i-1};
     op{i,2}=varargin{2*i};
 end
end