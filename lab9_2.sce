function [gcd]=GCD(a,b)//Gcd алгоритм Эвклида
    k=0
    while %T
        c=modulo(a,b);
        a=b;
        b=c;
        if c==0 then
            gcd=a
            break
        end
    end
endfunction


function [res]=complex_roots(n)
    for k=0:(n-1)//к - коэф в способе выччисления корней из комплексных чисел перебираем его
                                                        //считаем к-й корень из 1
        z=cos((2*%pi*k)/n)+%i*sin((2*%pi*k)/n);
        a=real(z);
        b=imag(z);
        //проверяем его на первичность с помощью GCD
        if  GCD(k,n)==1 then
            plot(a,b,'.r');
        else
            plot(a,b,'.b');
        end
    end
endfunction
