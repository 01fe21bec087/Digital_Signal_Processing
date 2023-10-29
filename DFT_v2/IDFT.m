function xn = IDFT(X)
    N = length(X);
    xn = (1/N)*DFT(conj(X));
    xn = conj(xn);
end