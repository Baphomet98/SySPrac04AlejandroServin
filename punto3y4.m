%% PROBLEMA 3 y 4 p06
%  
%%  PROBLEMA 3 :De la PR06 inciso E) nos pide la autocorrelación de:
%%
% $x(t)=u(t)-2u(t)-2u(t-3)+u(t-4)$
%%
% El resultado analitico obtenido es:
%%
% <<parametrizacionP06e.png>>
%%
%
clear all
figure (1)
x=@(t)heaviside(-t)-2*heaviside(-t-3)+heaviside(-t-4);
subplot(3,1,1)
fplot(x,[-5,1],'b')
grid on
title('x(t)')
ax=gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
axis([-5 1 -1.5 2]);
%
h=@(t)heaviside(t)-2*heaviside(t-3)+heaviside(t-4);
subplot(3,1,2)
fplot(h,[-1,5],'r')
grid on
title('h(t)')
ax=gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
axis([-1 5 -1.5 2]);
%
t1=-4:01:-3;
t2=-3:01:-2;
t3=-2:01:-1;
t4=-1:01:0;
t5=0:01:1;
t6=1:01:3;
t7=3:01:4;
subplot(3,1,3)
plot(t1,-t1-4);
hold on
plot(t2,t2+2);
hold on
plot(t3,t3+2);
hold on
plot(t4,3*(t4)+4);
hold on
plot(t5,-3*(t5)+4);
hold on
plot(t6,-t6+2);
hold on
plot(t7,t7-4);
grid on
title('x(t)*h(t)')
%
ax=gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
%%
% Al ejecutar:  
%
% >> x=@(t)heaviside(-t)-2*heaviside(-t-3)+heaviside(-t-4);
%%
% >>h=@(t)heaviside(t)-2*heaviside(t-3)+heaviside(t-4);
%%
% >>convconm(x,h)
%%
% OBTENEMOS:
%%
% <<matlabConE.gif>>


%% PROBLEMA 4 :De la PR06 inciso F) nos pide la correlación de:
%
% $x_{0}=u(t)-2u(t-2)+u(t-4)$
%
% $x_{1}=u(t)-2u(t-3)+u(t-4)$
%
% El resultado analitico obtenido es:
%%
% <<parametrizacionP06f.png>>
%%
%
clear all
figure (2)
x=@(t)heaviside(-t)-2*heaviside(-t-3)+heaviside(-t-4);
subplot(3,1,1)
fplot(x,[-5,1],'b')
grid on
title('x(t)')
ax=gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
axis([-5 1 -1.5 2]);
%
h=@(t)heaviside(t)-2*heaviside(t-2)+heaviside(t-4);
subplot(3,1,2)
fplot(h,[-1,5],'r')
grid on
title('h(t)')
ax=gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
axis([-1 5 -1.5 2]);
%
t1=-4:01:-3;
t2=-3:01:-2;
t3=-2:01:-1;
t4=-1:01:0;
t5=0:01:1;
t6=1:01:2;
t7=2:01:4;
subplot(3,1,3)
plot(t1,-t1-4)
hold on
plot(t2,t2+2)
hold on
plot(t3,3*(t3)+6)
hold on
plot(t4,-t4+2);
hold on
plot(t5,-3*(t5)+2)
hold on
plot(t6,-t6)
hold on
plot(t7,t7-4)
hold on
title('x(t)*h(t)')
ax=gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
%%
% Al ejecutar:
% 
% >> x=@(t)heaviside(-t)-2*heaviside(-t-3)+heaviside(-t-4);
%
% >> h=@(t)heaviside(t)-2*heaviside(t-2)+heaviside(t-4);
%
% >>convconm(x,h)
%
% OBTENEMOS:
%%
%
% <<matlabConF.gif>>













