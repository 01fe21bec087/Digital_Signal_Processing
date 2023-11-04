function Complex_plot(Func)
    Func = Func.';
    f = (0:length(Func)-1);
    subplot(3,1,2);
    stem(f,abs(Func));
    title('Magnitude Spectrum');
    xlabel('Frequency(Hz)');
    ylabel('Magnitude');

    subplot(3,1,3);
    stem(f,angle(Func));
    title('Phase Spectrum');
    xlabel('Frequency(Hz)');
    ylabel('Phase(radians)');
end