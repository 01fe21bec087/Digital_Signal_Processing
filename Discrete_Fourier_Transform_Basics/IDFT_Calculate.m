% Inverse Discrete Fourier Transform
% Author: Abhinav Pawar
% Date: 25-10-2023

L = input('Enter L (Length of sequence): ');
N = input('Enter N: ');
check(L,N);
X = read(N)
W = Twiddle(N)
x = IDFT(W,X,N)

function WN = Twiddle(N)
    w = exp((-i*2*pi)/N);
    for n = 0:N-1
        for k = 0:N-1
            WN(n+1,k+1) = w^(n*k);
        end
    end
end

function check(L,N)
    if N >= L
        fprintf('Computing %d-point DFT\n',N)
    else
        fprintf('%d-point DFT not possible (Enter N>%d)',N,L)
        quit
    end
end
  
function X = read(N)
    for n = 0:N-1
        for k = 0:0
            X(n+1,k+1) = input('Enter Elements: ');
        end
    end
end

function x = IDFT(W,X,N)
    x = W*X;
    x = x/N;
end