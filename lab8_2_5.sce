function [fi,T,r]=notmaltosphere(x,y,z)/////T means Teta
    if x==y==z==0 then
        disp('such point cannot be defined in polar coordinates');
    elseif (x==0)&&(y>0) then
        fi=%pi/2;
        r=sqrt(x^2+y^2+z^2);
        T=acos(z/r);
    elseif (x==0)&&(y<0) then
        fi=3/2*%pi;
        r=sqrt(x^2+y^2+z^2);
        T=acos(z/r);
    else
        fi=atan(y/x);
        r=sqrt(x^2+y^2+z^2);
        T=acos(z/r);
    end
    format(7);
    disp(fi,'fi=');
    disp(r,'r=');
    disp(T,'T=');
endfunction
