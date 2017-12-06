function [x,y,z]=cylindtonormal(fi,r,z)
    if r<=0 then
        disp('invalid input, positive r expected')
    else
        x=r*cos(fi);
        y=r*sin(fi);
        z=z;
        disp(x,'x=');
        disp(y,'y=');
        disp(z,'z=');
    end
endfunction
