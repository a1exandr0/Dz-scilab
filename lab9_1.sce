z1=0.9+0.4*%i;//берем два числа модуль которых немного примерно равен 1
z2=0.9+0.5*%i;
for i=1:100
    z1_1=z1^i;    
    a1=real(z1_1);//берем его вещественную и мнимую часть для плота
    b1=imag(z1_1);//берем его вещественную и мнимую часть для плота
    z2_1=z2^i;//Again
    a2=real(z2_1);
    b2=imag(z2_1);
    plot(a1,b1,'.r');
    plot(a2,b2,'.b');
end
