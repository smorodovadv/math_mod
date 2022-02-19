s = 15; // начальное расстояние от лодки до катера
v = 4; // cкорость катера больше скорости лодки
fi=3*%pi/4;
//начальные условия в случае 1
//r0=s/(v+1);
//tetha0=0;
//tetha=0:0.01:2*%pi;
//r=ode(r0,tetha0,tetha,f);
//начальные условия в случае 2
r0=s/(v-1);
tetha0=-%pi;
tetha=0:0.01:2*%pi;
r=ode(r0,tetha0,tetha,f);
//функция, описывающая движение катера береговой охраны
function dr=f(tetha, r)
dr=r/sqrt(v*v-1);
endfunction;
//функция, описывающая движение лодки браконьеров
function xt=f2(t)
 xt=tan(fi)*t;
endfunction
t=0:1:40;
polarplot(tetha,r,style = color('blue')); //построение траектории движения катера в полярных координатах
plot2d(t,f2(t),style = color('red'));
