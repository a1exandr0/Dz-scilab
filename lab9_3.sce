a_mtrx=[];///матриці для компл. чисел
b_mtrx=[];///
c_mtrx=[];///
d_mtrx=[];///

clf();
//перебираем все значения х,у
for x=-5:0.1:5
    for y=-5:0.1:5
        a=x+y*%i;//нашли к.ч.
        //находим  обратное к.ч.
        b=1/a;
        c=a^2;//квадрат
        //отношение сумм разностей с единицей
        d=(1+a)/(1-a);
        a_mtrx=[a_mtrx,a];
        b_mtrx=[b_mtrx,b];
        c_mtrx=[c_mtrx,c];
        d_mtrx=[d_mtrx,d];
    end
end
scf(0);
plot(real(a_mtrx),imag(a_mtrx),'x');
scf(1);
plot(real(b_mtrx),imag(b_mtrx),'rx');
scf(2);
plot(real(c_mtrx),imag(c_mtrx),'gx');
scf(3)
plot(real(d_mtrx),imag(d_mtrx),'bx');
