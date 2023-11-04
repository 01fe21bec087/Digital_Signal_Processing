function XN = DFT(Din)
    N = length(Din);   %Considering N = L (Length of sequence)
    W = Twiddle(N);
    XN = W*Din;
end