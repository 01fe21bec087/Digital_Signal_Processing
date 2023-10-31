% Optimised Discrete Fourier Transform and its Inverse with plotting
% Author: Abhinav Pawar
% Date: 29-10-2023
%input format: time domain discrete elements in column matrix format
%enclosed in []

choice = input('0: Exit \n1: DFT with plot \n2: IDFT \n');
while choice ~= 0
    Din = input('Enter Elements [elt1;elt2;elt3......]: ');   %[elt1;elt2;elt3......]
    switch choice
        case 1
            DisTimePlot(Din)
            XN = DFT(Din)
            Complex_plot(XN)
        case 2
            xn = IDFT(Din)
            DisTimePlot(xn)
            Complex_plot(Din)
    end
    choice = input('0: Exit \n1: DFT with plot \n2: IDFT \n');
end