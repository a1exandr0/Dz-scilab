a=primes(10^6)
//-----------------------------------------------------
len=length(a)
i=1
j=2
count=0
for i=1:len - 1
   if a(i+1)-a(i)==2 then
      count=count+1
   end
end
disp(count,size(a))
//----------------------------------------------
n=input('give me your n   ')
if (n>10^6) then
    disp('error occured')
else
    a=primes(n)
    b=size(a)    
    disp(b,'ammount of primes u asked')
end
//-------------------------------------------------
timer();
forj=1:250 //цикл для перебора значений от 1 до 100
    A=primes(index); 
    b=size(A) (1,2); 
    plot(index,b,".r"); 
end
x=[0:0.01:250]; // y=x/ln(x)
y=x./log(x);
plot (x,y,".b")
time3=timer();

//-------------------------------------------------------
timer();
//делаем матрицу из простых чисел от 10^10 до 10^11
matr_new=primes(10^11);
while matr_new(1,i)<10^10
    i1=i1+1;
//считаем количество элементов ДО 10^10 
end
matr_new(1:i)=[];
//удаляем все ненужные елементы


//создаем матрицу из рандомных 10^7 десятизначных чисел
i2=1;
for i2=1:10^7
    v=rand();
    format(13);
    v=v*10^10;
    matr_1(1,i2)=int(v);
end


c1=1;
c2=1;
totalcount=0;
for i3=1:(size(matr_1) (1,2))
    tmpbox=matr_1(1,i3);
    for i4=1:(size(matr_new) (1,2))
        if tmpbox==matr_new (1,i4) then
        //если простое, то считаем его
            totalcount=totalcount+1;
        end
    end
end
res_amountProz=totalcount/(size(matr_1) (1,2))*100;
disp(res_amountProz,"persentage of primes among 10^7 random integers is");
time4=timer();

//----------------------------------------------------------------------------

timer();
//создаем матрицу из случайных десятизначных чисел, не делящихся на 2,3,5,7,11
i5=1;
while i5<=10^7
    v=rand();
    format(13);
    v=v*10^10;
    //проверяем на не делимость с помощью МОДУЛО(Деление нацело) и булевых соотношений, заносим в матрицу
    if ~((modulo(v,2)==0)||(modulo(v,3)==0)||(modulo(v,5)==0)||(modulo(v,7)==0)||(modulo(v,11)==0)) then
        matr_2(1,i5)=int(v);
    end
    i5=i5+1;
end

c3=1;
c4=1;
totalcount=0;
for i6=1:(size(matr_2) (1,2))//Проверяем на простоту
    tmpbox=matr_1(1,i3);
    for i7=1:(size(matr_new) (1,2))
        if tmpbox==matr_new (1,i4) then
        //если простое, то считаем его
            totalcount=totalcount+1;
        end
    end
end
//считаем процент
res_amountProz=totalcount/(size(matr_2) (1,2))*100;
disp(res_amountProz,"persentage of primes among 10^7 random integers that not divides on 2,3,5,7,11 is");
time5=timer();

//-------------------------------------------------------------------------

timer();
//создаем две одинаковых матрицы из простых чисел
P=primes(10^2);
Q=P;
//задаем двойной цикл, который перебирает все комбинации из P-Q
for i8=1:(size(P) (1,2))
    for i9=1:(size(Q) (1,2))
        //для каждой комбинации вводим проверку заданного условия
        if ~(2^P(1,i8)+1==3*Q(1,9)) then
            res1=P(1,i8);
            res2=Q(1,i9);
            disp(res2,'q',res1,'p');
            break;
        end
        break;
    end
    break;
end
time6=timer();

//------------------------------------------------------------------------
timer();
quot1=10^(-9)
quot2=0
Alpha=modulo(%pi,quot1);
for i10=1:(size(matr_new) (1,2))
    if Alpha==matr_new(1,i10); then
        answer=Gamma;
    else
        quot1=10^(-10);
        quot2=1;
        while 1==1
            Alpha=modulo(%pi,quot1);
            Beta=modulo(%pi,quot2);
            Gamma=Alpha-Beta*10^10
            quot1=quot1/10;
            quot2=qiot2/10;
            for i10=1:(size(matr_new) (1,2))
               if Gamma==matr_new(1,i10); then
                    answer=Gamma;
                    break;
               end
           end
       end
    end
end
disp(answer);
time7=timer();


//---------------------------------------------------------

timer();
quot1=10^(-9)
quot2=0
Alpha=modulo(%e,quot1);
for i10=1:(size(matr_new) (1,2))
    if Alpha==matr_new(1,i10); then
        answer=Gamma;
    else
        quot1=10^(-10);
        quot2=1;
        while 1==1
            Alpha=modulo(%e,quot1);
            Beta=modulo(%e,quot2);
            Gamma=Alpha-Beta*10^10
            quot1=quot1/10;
            quot2=qiot2/10;
            for i10=1:(size(matr_new) (1,2))
               if Gamma==matr_new(1,i10); then
                    answer=Gamma;
                    break;
               end
           end
       end
    end
end
disp(answer);
time8=timer();

disp(timme8,time7,time6,time5,time4,time3,time2,time1,'amount of time taken on each task is');











