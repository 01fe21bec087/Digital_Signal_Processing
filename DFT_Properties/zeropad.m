function out = zeropad(in,N)    %N -> Number of elements to be padded into the matrix
    out = cat(1,in,zeros(N,1));
end