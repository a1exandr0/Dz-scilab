a=2;
fi=[-%pi/4:0.01:%pi/4];
r=sqrt(2*a^2*cos(2*phi));
polarplot(fi,r);

a=2;
fi_0=[-%pi/4:0.01:%pi/4];
r_0=-sqrt(2*a^2*cos(2*fi));
polarplot(fi_0,r_0);
