function [r,fi]=normaltopolar(x,y)
    if (x==0)&(y>0) then
        fi=%pi/2;
        r=abs(y);
    elseif (x==0)&(y<0) then
        fi=3/2*%pi;
        r=abs(y);
    else
        fi=atan(y/x);
        r=sqrt(x^2+y^2);
        format(5);
    end
    disp(fi,'fi');
    disp(r,'r');
endfunction
