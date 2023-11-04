function W = Twiddle(N)
    w = exp((-i*2*pi)/N);
    for n = 0:N-1
        for k = 0:N-1
            W(n+1,k+1) = w^(n*k);
        end
    end
end