function f=two_lines(A1,B1,C1,A2,B2,C2)    
    x=[-25:00.1:25];//  OВ
    y1=(-A1/B1)*x+(-C1/B1);
    y2=(-A2/B2)*x+(-C2/B2);  
    plot(x,y1); //строим обе прямые на одной области определения
    plot(x,y2,'r');  
    if A1/A2==B1/B2 then //паралельность
        angle=0;
        disp('lines are parallel')
        disp(angle,'angle=');
    else        
        x0=((-C2/B2)-(-C1/B1))/((-A1/B1)-(-A2/B2));/// находим точку пересечения 
        y0=(-A1/B1)*x0+(-C1/B1);  ///и подставляем её в одну из фунций
        plot(x0,y0,'.b');  //строим соответствующую точку      
        angle=acos((A1*A2+B1*B2)/sqrt((A1^2+B1^2)*(A2^2+B2^2))); //считаем угол между нормалями прямых
        disp(angle,'angle=');
    end
    f='';
endfunction
