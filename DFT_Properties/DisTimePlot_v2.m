function DisTimePlot_v2(Func,pos)
    Func = Func.';
    t = (0:length(Func)-1);
    subplot(3,1,pos);
    stem(t,Func);
    title("Time domain representation");
    xlabel("time");
    ylabel("Amplitude");
end