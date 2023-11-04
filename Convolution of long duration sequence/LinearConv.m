function y = LinearConv(x1,x2)  %Using circular convolution
    N1 = length(x1);
    N2 = length(x2);
    N = N1+N2-1;
    x1new = zeropad(x1,N-N1);
    x2new = zeropad(x2,N-N2);
    y = CircularConv(x1new,x2new); 
end