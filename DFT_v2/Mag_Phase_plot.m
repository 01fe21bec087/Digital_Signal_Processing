function Mag_Phase_plot(Func)
    Func = Func.';
    f = (0:length(Func)-1);%*100/length(Func);
    %mag = fftshift(abs(Func));
    %phase = fftshift(angle(Func));
    subplot(2,1,1);
    stem(f,abs(Func));%mag);
    title('Magnitude Spectrum');
    xlabel('Frequency(Hz)');
    ylabel('Magnitude');

    subplot(2,1,2);
    stem(f,angle(Func));%phase);
    title('Phase Spectrum');
    xlabel('Frequency(Hz)');
    ylabel('Phase(radians)');
end