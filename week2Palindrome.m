function op = palindrome(string)
    if length(string)<=1
        op=true;
    else
        %checking first and last element for each recursion
        op=(string(end)==string(1) && palindrome(string(2:end-1)));
    end
end