// JOSÉ CLEITON

function xicara_ciclo()
    k = -0.4 // k que depende de quanto café há na xícara
    ta = 24 // temperatura ambiente 24º
    dt = 0.1 // 10 medidas por segundo
    T(1) = 90 // Café inicia em 90º
    t(1) = 0 // tempo inicia em 0 
    clf() // limpa tela
    
    for i=1:303
        T(i+1) = (k*(T(i)-ta))*dt+T(i)
    end
    Tt(1) = (T(3)-2*T(2)+T(1))/(dt*dt) // condição inicial da segunda derivada
    for i=1:300
        Tt(i+1) = (T(i+2)-2*T(i+1)+T(i))/(dt*dt)
        t(i+1) = t(i)+dt
    end
    plot2d(t, Tt, 2)
endfunction
