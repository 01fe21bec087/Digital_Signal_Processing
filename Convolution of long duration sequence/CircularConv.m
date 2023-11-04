function y = CircularConv(x1,x2)
    N1 = length(x1);
    N2 = length(x2);
    if N1 < N2
        x1 = zeropad(x1,N2-N1);
    else
        x2 = zeropad(x2,N1-N2);
    end
    X1 = DFT(x1);
    X2 = DFT(x2);
    Y = X1 .* X2;
    y = real(IDFT(Y));
end