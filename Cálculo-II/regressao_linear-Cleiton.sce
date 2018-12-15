function reglinear()
    x=[1,2,3]'
    y=[2,4,5]'
    xmin = min(x); xmax = max(x) // DELIMITAR MELHOR A TELA
    ymin = min(y); ymax = max(y) // DELIMITAR MELHOR A TELA
    clf()
    plot2d(x, y, -1) // PLOT DOS PONTOS
    plot2d(x, y, 5)
    xgrid(3)
    A=[x'*x       ones(x')*x;
   ones(x')*x ones(x')*ones(x)]
    b=[x'*y;ones(y')*y]
    sol = A^(-1)*b // RESOLVE O SISTEMA DE EQUAÇÕES
    disp(sol, 'solucao [a e b]') // APRESENTA A E B
    xg = [xmin-1:xmax-1]
    yg = sol(1)*xg+sol(2)
    plot2d(xg, yg, 2) 
    
endfunction
