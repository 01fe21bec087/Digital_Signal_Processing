function y = OverlapSave(x,h)
    Ls = length(x);  %Length of input sequence
    M = length(h);   %Length of impulse response
    N = input("Enter the length of each block (N-pt circular convolution): ");%5    %Assume depending on the microcontroller we are using
    L = N-M+1;   %Number of only input elements in blocks
    
    %h_pad = zeropad(h.',L-1).'
    Nblk = ceil(Ls/L);   %No. of input blocks -> Round towards +inf
    
    xi = zeros(1,N);    %for first block
    for i = 0:Nblk-1
        if ~isinteger(Ls/L) && i==Nblk-1    %x(n) is not enough to append, hence pad zeros
            xi = cat(2,xi(L+1:end),x(L*i+1:end),zeros(1,L-mod(Ls,L)));
        else
            xi = cat(2,xi(L+1:end),x(L*i+1:L*i+L));
        end
        yi = CircularConv(xi.',h.').';
        if i == 0
            y = yi(M:end);
        else
            y = cat(2,y,yi(M:end));
        end
    end
    y = y(1,1:Ls+M-1);
end