// Raposas versus Coelhos


function raposas_coelhos()
    dt = 0.1
    coelhos(1) = 1.2
    raposas(1) = 0.9
    t(1) = 0
    clf();
    for i=1:1000
        coelhos(i+1)=(coelhos(i)-raposas(i)*coelhos(i))*dt+coelhos(i)
        raposas(i+1)=(-raposas(i)+raposas(i)*coelhos(i))*dt+raposas(i)
        t(i+1)=dt+t(i)
    end
    plot2d(t,coelhos,2)
    plot2d(t,raposas,5)
endfunction
