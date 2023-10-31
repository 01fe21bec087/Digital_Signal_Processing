% Optimised Discrete Fourier Transform and its Inverse with plotting
% Author: Abhinav Pawar
% Date: 29-10-2023
%input format: time domain discrete elements in column matrix format
%enclosed in []

choice = input('0: Exit \n1: DFT with plot \n2: IDFT \n');
while(choice==1 | choice==2)
    Din = input('Enter Elements [elt1;elt2;elt3......]: ');   %[elt1;elt2;elt3......]
    if choice == 1
        XN = DFT(Din)
        Mag_Phase_plot(XN)
    end
    if choice == 2
        xn = IDFT(Din)
        %Idft = (1/N)*DFT(conj(XN))
    end
    choice = input('0: Exit \n1: DFT with plot \n2: IDFT \n');
end
