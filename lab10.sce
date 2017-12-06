
function dots_2line(a,b)
     //Функция строит прямую через две точки
    t=[-20,20]
    x=a(1)+(b(1)-a(1))*t
    y=a(2)+(b(2)-a(2))*t
    z=a(3)+(b(3)-a(3))*t
    param3d(x,y,z)
     param3d(a(1),a(2),a(3))
    e=gce()
    e.mark_mode = "on"
    e.mark_style = 0
    e.mark_size = 3
    param3d(b(1),b(2),b(3))
    e=gce()
    e.mark_mode = "on"
    e.mark_style = 0
    e.mark_size = 3
   
    param3d(50,50,50)
    e=gce()
    e.mark_mode = "on"
    e.mark_style = 0
    e.mark_size = 0
    param3d(-50,-50,-50)
    e=gce()
    e.mark_mode = "on"
    e.mark_style = 0
    e.mark_size = 0
    
endfunction
/////////////////-------------
function r=planes_pos(A,B,C,D,A1,B1,C1,D1,A2,B2,C2,D2)
    //функция определяет расположение трех плоскостей
    X=(A,B,C;A1,B1,C1;A2,B2,C2)
if rank(X)==1 then
    r=rank(X)
end
if rank(X)==3
    r=4
end
if rank(X)==2 & ((A*B1==B*A1 & C*B1==B*C1) |(A2*B1==B2*A1 & C2*B1==B2*C1) | (A2*B==B2*A & C2*B==B2*C))
        r=2
    end
    if rank(X)==2 & ~((A*B1==B*A1 & C*B1==B*C1) |(A2*B1==B2*A1 & C2*B1==B2*C1) | (A2*B==B2*A & C2*B==B2*C))
        r=3
end
endfunction

////////////////---------------2--------------
function r=line_plosk(A,B,C,D,x0,y0,z0,l,m,n)
    //Функция определяет угол между прямой и плоскостью
    
    x=[-20,20]
    y=x
    r=sin(abs(A*l+B*m+C*n)/sqrt((A**2+B**2+C**2)*(l**2+m**2+n**2)))
    deff('z=f(x,y)','z=(A*x+B*y+D)/C')
    clf()
    fplot3d(x,y,f,alpha=5,theta=31)
    t=[-20,20]
    x=x0+l*t
    y=y0+m*t
    z=z0+n*t
    param3d(x,y,z)
endfunction
//////////------------------
function planes(x,y,z) 
    Q=a*x+b*y+c*z+d   //уравнения плоскости
    W=a1*x+b1*y+c1*z+d1
    if a/a1==b/b1==c/c1 then
        disp('плоскости паралельны')
        elseif a*a1+b*b1+c*c1==0
            disp('плоскости перпендикулярны')
    end
endfunction
/////////------------------------
//угол между плоскостью и прямой заданой параметрическим уравнением
function t=(A,B,C,D,x0,y0,z0,l,m,n)
    A=input('A')
    B=input('B')
    C=input('C')
    D=input('D')
    x0=input('x0')
    y0=input('y0')
    z0=input('z0')
    l=input('l')
    m=input('m')
    n=input('n')
    x=[-20,20]
    y=x
    r=sin(abs(A*l+B*m+C*n)/sqrt((A**2+B**2+C**2)*(l**2+m**2+n**2)))
    deff('z=f(x,y)','z=(A*x+B*y+D)/C')
    clf()
    fplot3d(x,y,f,alpha=5,theta=31)
    t=[-20,20]
    x=x0+l*t
    y=y0+m*t
    z=z0+n*t
    param3d(x,y,z)
endfunction




///////--------------------------------------------
//вводим координаты четырех точек
x1=input('x1=')
x2=input('x2=')
x3=input('x3=')
x4=input('x4=')
y1=input('y1=')
y2=input('y2=')
y3=input('y3=')
y4=input('y4=')
z1=input('z1=')
z2=input('z2=')
z3=input('z3=')
z4=input('z4=')
B=[x2-x1 y2-y1 z2-z1
x3-x1 y3-y1 z3-z1
x4-x1 y4-y1 z4-z1]
//проверка лежат ли точки в одной плоскости
if det(B)==0 then disp('in 1 plane')
else disp('they r not')
end
clf()
plot(B)
