x1=input("enter x");
y1=input("enter y");
z1=input("enter z");
y=3;
z=7-2*y;
x=6-y-z;
rez=0;
rez1=0;
if 2*x+y+3*z==10 then
    rez=rez+1;
end
if x+y+z==6 then
    rez=rez+1;
end
if x+3*y+2*z==13 then
    rez=rez+1;
end
if rez==3 then
    disp('Yos correct solution')
else
    disp('Nope incorrect solution')
end
if (x1==x) then
    rez1=rez1+1
end
if (y1==y) then
    rez1=rez1+1
end
if (z1==z) then
    rez1=rez1+1
end
if rez1==3 then
    disp('Nice vector')
else
    disp('Not nice vector')
end
