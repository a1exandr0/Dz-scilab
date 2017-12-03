function  y=Vectorniy_d(x1,y1,x2,y2,x3,y3)///////////находим векторное произведение
    y=[0,0,0]
    y(1)=det([x2,x3;y2,y3])
    y(2)=-det([x1,x3;y1,y3])
    y(3)=det([x1,x2;y1,y2])
endfunction

function y=Square_trik(x1,y1,z1,x2,y2,z2,x3,y3,z3)////////////////square tkikutnika
    y=1/2*sqrt(det([y2-y1,z2-z1;y3-y1,z3-z1])^2+det([x2-x1,z2-z1;z3-x1,z3-z1])^2+det([x2-x1,y2-y1;x3-x1,y3-y1])^2)
endfunction

function y=Mishaniy(a,b,c)/////////////////////////mishaniy dobutok
    y=det([a(1),a(2),a(3); b(1),b(2),b(3); c(1),c(2),c(3)]);
endfunction

function y=check_complanarn(a,b,c)/////////////////complanarnist??
    y=det([a(1),a(2),a(3); b(1),b(2),b(3); c(1),c(2),c(3)])==0;
endfunction

function y=four_dots(x1,y1,z1,x2,y2,z2,x3,y3,z3,x4,y4,z4)//////////lets check 4 dots in on ploskost
    a(1)=x2-x1
    a(2)=x3-x1
    a(3)=x4-x1
    b(1)=y2-y1
    b(2)=y3-y1
    b(3)=y4-y1
    c(1)=z2-z1
    c(2)=z3-z1
    c(3)=z4-z1
    y=det([a(1),a(2),a(3); b(1),b(2),b(3); c(1),c(2),c(3)])==0;
endfunction

function [x,y,l,m]=ZagToParam(A,B,C)///////////zagalne to parametr  /////////
    x=-C/A//////////////////////////
    y=-C/B/////////////////////////
    l=A////////////////////////////////
    m=-B////////////////////////
endfunction//////////////////////////                   имеем точку x y    и параметры l m   м   A B C  коефициэнты при x & y для общего уравн
/////////////////////////////////////////// 
function [A,B,C]=ParamToZag(x,y,l,m)//////param to zagalne
    A=m//////////////////////////////////
    B=-l/////////////////////////////////
    C=y*l-x*m///////////////////////////
endfunction///////////////////////////
