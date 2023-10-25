% Optimised Discrete Fourier Transform and its Inverse
% Author: Abhinav Pawar
% Date: 25-10-2023
%input format: time domain discrete elements in column matrix format
%enclosed in []

choice = input('0: Exit \n1: DFT \n2: IDFT \n');
while(choice==1 | choice==2)
    x = input('Enter Elements [elt1;elt2;elt3......]: ')   %[elt1;elt2;elt3......]
    if choice == 1
        XN = DFT(x)
    end
    if choice == 2
        Idft = (1/N)*DFT(conj(XN))
    end
    choice = input('0: Exit \n1: DFT \n2:IDFT \n');
end

function XN = DFT(x)
    N = length(x);   %Considering N = L (Length of sequence)
    w = exp((-i*2*pi)/N);   %Calcuating twiddle factors
    for n = 0:N-1
        for k = 0:N-1
            W(n+1,k+1) = w^(n*k);
        end
    end
    XN = W*x;
end