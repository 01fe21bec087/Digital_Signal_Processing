function DisTimePlot(Func)
    Func = Func.';
    t = (0:length(Func)-1);
    subplot(3,1,1);
    stem(t,Func);
    title("Time domain representation");
    xlabel("time");
    ylabel("Amplitude");
end