num=input('enter  number')
if num==1 then
x=[-2:0.001:2];
y=(1+exp(-x).*x)./(2+sqrt(x.*x+sin(x).*sin(x)))
plot(x,y)
end
if num==2 then
x1=[0.0001:0.001:250]
y1=(1+3*x1)./(2+(1+x1)^(1/3))
x2=[-250:0.001:0]
y2=sqrt(1+abs(x2))
plot(x1,y1,x2,y2)
end
