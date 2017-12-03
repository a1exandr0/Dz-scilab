function b=ferm_check(a,c)      //проверим на псевдопрост.......
    b=(modulo(a**(c-1)-1,c)==0);
endfunction
/////////////////-----------------/////////////////////////////--------------
function i=ferm_calc(X)     //проверим но уже по омнованию 2..........
i=0
for j=1:1:X
    if ferm_check(2,j)
        i=i+1
        
    end
end
endfunction
////////////-----------------/-/////////////////--------------/////////////------
function [a,b]=find_two(n)       //находим пару разница которіх |на n
    a=0
    b=0//в случае их отсутствия віведет 0
    A=int(rand(1,n+1)*10**(2))
    for i=1:n+1
        for j=1:n+1
            if modulo(A(i)-A(j),n)==0 & i~=j
            a=A(i)
            b=A(j)
            break
            end
        end
    end
endfunction
/////////////////////------------//////////////////----------//////////-----///
function k=palindromic(x,y)         //чекаем на палиндром в системе исч. y
    k=%f
    s=dec2base(x,y);
    rev=strrev(s);
   
    if   s==rev
        k=%t
    end
    
endfunction
//////////////-------------//////////////--------------//////////////--------//
function k=evklid(a,b)      //находим кол шагов алгоритма. эвклида
   m=min(a,b)
   k=0
   while modulo(a,b)~=0
   m=modulo(a,b)
   a=b
   b=m
   k=k+1
   end 
   
endfunction
////////////////////-----------------/////////////////--------------////////////-
ferm_calc(100)
ferm_calc(1000)
ferm_calc(1000000)

A=primes(1000)
B=int(rand(1,10000000)*10**(3))     //генерация 10**7 случайных чисел
count_primes=0
count_ferm=0
for i=1:1:length(B)
         if ferm_check(int(rand()*10),B(i)) & ferm_check(int(rand()*10),B(i)) & ferm_check(int(rand()*10),B(i)) // проверка критерием ферма по трем случайным основаниям
            count_ferm=count_ferm+1
          end  
        
    if test
        count_ferm=count_ferm+1
    end
    for j=1:1:length(A)
        if B(i)==A(j)       //проверка на простоту
            count_primes=count_primes+1;
            break
        end
    end
end
disp(count_primes,"кількість простих")
disp(count_ferm,"кількість псевдопростих")
N=1000000
k=0
for i=1:N
    if palindromic(i,2)&palindromic(i,3)
        k=k+1           //проверка палиндромов в системе исчиления 2 и 3 одновременно
    end
end
disp(k)

for k=1:20
a=%T
i=0
    while a
    i=i+1
    j=0
     while a
     j=j+1
      if evklid(i,j)==k
      a=%f
      end
    if j>1000
    j=0;
    end
     end        
    end
disp(k,"крок:")  
disp(min(i,j),"a:")     //вывод первых чисел НОД которых находится в n шагов по алгоритму эвклида
disp(max(i,j),"b:")
end

a=int(input("a"));
b=int(input("b"));
c=int(input("c"));
d=double(gcd([a,b]));
if modulo(c,d)~=0            //если  gcd(а,b) не | с то диафантовое уравнение не имеет решений
   disp('0')

else        //в ином случае перебором находим ответ
b=%t
    //проверка положительных
 for i=1:10000
     for j=1:10000
        if a*i+b*j==c
          disp(i,"x:");
         disp(j,"y:");
         break
        end
        //проверка отрицатеьных
        if a*(-i)+b*(-j)==c
          disp(-i,"x:");
         disp(-j,"y:");
         break
        end
  end
  end
end
x1=input("x1:")      //ввод координат
y1=input("y1:")     //ввод координат
x2=input("x2:")        //ввод координат
y2=input("y2:")     //ввод координат


X=[min(x1,x2):1:max(x1,x2)] //значения X
Y=(X-x1)*(y2-y1)/(x2-x1)+y1;    //нахождения Y
k=0

for i=min(x1,x2):max(x1,x2)
 for j=min(y1,y2):max(y1,y2)
      if (i-x1)/(x2-x1)==(j-y1)/(y2-y1)     //проверка принадлежности точек к целым точкам
       plot(i,j,'k.')
       k=k+1        //подсчет кол ва  этих точек
      end   
 end         
end
disp(k);
plot(X,Y);      //постройка графика
