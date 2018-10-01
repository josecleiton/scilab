// integra basica
function integral(a, b, n, f)
  dx=(b-a)/n 
  x=[a:dx:b]
  soma=0
  for i=1:n
    t=(f(x(i))+f(x(i+1)))/2*dx
    soma=soma+t
  end
  disp (soma,'o resultado é :')
endfunction

function y=f1(x)
  y=x.^2
endfunction

function y=f2(x)
  y=x.^3
endfunction

function y=f(x)
  y=x
endfunction

function y=g(x) 
    y=sin(x)
endfunction    

// integral com grafico
function integralg(a, b, n, f)
  dx=(b-a)/n; x=[a:dx:b]
  soma=0
  for i=1:n
    t=(f(x(i))+f(x(i+1)))/2*dx
    soma=soma+t
  end
  disp (soma,'o resultado é ')
  printf("\n integral %f \n\n",soma)
  cor= 5
  plot2d(x,f(x),cor)
  for i = 1:n+1
    plot2d([x(i),x(i)],[0,f(x(i))],cor)
  end    
  xgrid(3)
endfunction
