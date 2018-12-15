function derivada_no_ponto(x, f)
    dx = 0.1
    return (f(x+dx)-f(x))/dx
endfunction
