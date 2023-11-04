% Overlap-save method to find linear convolution of long duration sequence
% Author: Abhinav Pawar
% Date: 01-11-2023
%input format: time domain discrete elements in row matrix format (array)
%enclosed in []
% Input is divided into non-overlapping blocks 

choice = -1;
while choice ~= 0
    choice = input('\n0: Exit \n1: Overlap-Save Algorithm \n2: Overlap-Add Algorithm\n');
    if choice == 0
        break;
    end
    x = input('Enter input sequence x(n): ');   %[elt1 elt2 elt3 ......]
    h = input('Enter impulse response h(n): ');
    switch choice
        case 1
            y = OverlapSave(x,h)
            DisTimePlot_v2(x,1)
            DisTimePlot_v2(h,2)
            DisTimePlot_v2(y,3)
        case 2
            y = OverlapAdd(x,h)
            DisTimePlot_v2(x,1)
            DisTimePlot_v2(h,2)
            DisTimePlot_v2(y,3)
        otherwise
            break;
    end
end

% Example:
% x = [1 2 1 -1 3 0 5 6 2 -2 -5 -6 7 1 2 0 1]
% y = 1 4 8 11 12 7 10 28 29 40 21 -14 -28 -23 1 35 11 10 3 4
