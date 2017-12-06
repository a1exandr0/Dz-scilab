function [x,y,z]=spheretonormal(fi,T,r)////T means teta
    if r<=0 then
        disp('invalid input, positive r expected');
    else
        x=r*sin(T)*cos(fi);
        y=r*sin(T)*sin(fi);
        z=r*cos(T);
        disp(x,'x=');
        disp(y,'y=');
        disp(z,'z=');
    end
endfunction
