function [x,y]=polartonormal(fi,r)
    if r<=0 then
        disp('invalid input, positive r expected');
    else
        x=r*cos(fi);
        y=r*sin(fi);
        format(5);
        disp(x,'x=');
        disp(y,'y=');
    end
endfunction
