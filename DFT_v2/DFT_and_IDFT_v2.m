% Optimised Discrete Fourier Transform and its Inverse
% Author: Abhinav Pawar
% Date: 25-10-2023
%input format: time domain discrete elements in column matrix format
%enclosed in []

choice = input('0: Exit \n1: DFT \n2: IDFT \n');
while(choice==1 | choice==2)
    Din = input('Enter Elements [elt1;elt2;elt3......]: ');   %[elt1;elt2;elt3......]
    if choice == 1
        XN = DFT(Din)
    end
    if choice == 2
        xn = IDFT(Din)
        %Idft = (1/N)*DFT(conj(XN))
    end
    choice = input('0: Exit \n1: DFT \n2:IDFT \n');
end

