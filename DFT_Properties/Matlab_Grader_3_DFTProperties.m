% Write a MATLAB program to perform the circular convolution of the two
% sequences x1 and x2 using frequency domain approach
A=5;
f=2;
t=0:0.1:2;
% Define the input sequences where x1 is sine and x2 is cos signal
x1 = A*sin(2*pi*f*t)
x2 = A*cos(2*pi*f*t)

% Determine the length of both the sequences
L1 = length(x1)
L2 = length(x2)

% Determine the maximum length of both the input sequences
N = max(L1,L2)

% Zero-padding 
if L1 > L2
    x2 = [x2 zeros(1, (L1-L2))];
elseif L2 > L1
    x1 = [x1 zeros(1, (L2-L1))];
end

% find DFT of both the sequences
X1 =  DFT(x1)
X2 =  DFT(x2)

%Find the product of input sequences in frequency domain 
X3 = X1 .* X2

%  find IDFT of the above sequence
x3 = (1/N)*DFT(conj(X3))

% Plot the sequence x1
subplot(3,1,1)
plot(t,x1); xlabel('time'); ylabel('Amplitude'); title('Plotting x1')

% Plot the sequence x2
subplot(3,1,2)
plot(t,x2); xlabel('time'); ylabel('Amplitude'); title('Plotting x2')

% Plot the circular convoluted sequence x3
subplot(3,1,3)
plot(t,x3); xlabel('time'); ylabel('Amplitude'); title('Plotting x3')

% write a function for determining discrete frequency components from its time domain sequence

function X = DFT(x)
    N = length(x)
% Initialize the DFT coefficients 'X' to zero
    X = zeros(1,N); 
    % Use 'nested for loops' to compute the DFT
    for k = 1:N
        for n = 1:N
            X(k) = X(k) + x(n)*exp((-i*2*pi*(k-1)*(n-1))/N)
        end
    end
end
