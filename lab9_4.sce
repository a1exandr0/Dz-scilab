function [res]=complex_plot(xstep,ystep,deg,n)
    res_mat=[]
    //берем все х у перебором
    for x=-10:xstep:10
        for y=-10:ystep:10 
            if modulo(round(abs(x+%i*y)^deg),n)==0 then//проверяем заданное условие
                a=x+y*%i;
                res_mat=[res_mat,a];//после апроверки вносим в матрицу
        end
    end
plot(real(res_mat),imag(res_mat),'ro')
endfunction
