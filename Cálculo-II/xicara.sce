function xicara()
    k = -0.4 // k que depende de quanto café há na xícara
    T(1) = 90 // Café inicia em 90º
    t(1) = 0 // tempo inicia em 0
    ta = 24 // temperatura ambiente 24º
    dt = 0.1 
    clf() // limpa tela
    for i=1:200
        T(i+1) = (k*(T(i)-ta))*dt+T(i)
        t(i+1) = t(i)+dt
    end
    plot2d(t,T,2)
endfunction
