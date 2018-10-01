function paraquedas() // skydiving
    p=800 // Peso em Newton
    g=9.8 // Aceleração da gravidade m/s2
    k=13  // Coeficiente de atrito viscoso
    dt=0.1 // intervalo de tempo em segundos    
    m=p/g  // massa
    v(1)=0 // Condições iniciais
    t(1)=0 // T inicial
    h(1)=1400 // Altura inicial em metros
    cor=5     // 5 é vermelho 2 azul
    clf(); // limpa janela grafica
 
    for i=1:1000       
      // segunda lei de Newton
      v(i+1)=(p-k*v(i))/m*dt+v(i)// edo
      t(i+1)=t(i)+dt
    end
    plot2d(t,v,2)
    //disp(t(i), 'tempo do salto em segundos')    
endfunction
