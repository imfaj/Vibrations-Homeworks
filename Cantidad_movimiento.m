% Graficación en Matlab, Tarea 1 del curso de Vibraciones.
% María Fernanda Abarca Jiménez B50013 

clear all % Se puede usar tambien clear variables
clc

t=(0:1:10); % Tiempo, en un ambito de 10 segundos (0 a 10 segundos), con intervalos de 1 segundo.
m=2; % masa de particula [kg]

vx=((3*t)-1); % Componente x de la velocidad, tambien reconocible como i^
vy=((2*(t).^(3))+5); % Componente y de la velocidad, tambien reconocible como j^


%p=m*(sqrt((vx).^(2)+(vy).^(2))); Sirve tambien
p=m*(sqrt(((3.*t)-1).^(2)+((2.*(t.^3))+5).^(2))); % modulo de la cantidad de movimiento [kg m/s]
% Recordar poner . en los exponenciales que tienen que ver con el intervalo
%t o el ambito necesario

plot(t, p, 'Linewidth', 2);
xlabel('Tiempo t [s]', 'Fontsize',12);
ylabel('Modulo p [kg m/s]', 'Fontsize',12);
set(gca,'Fontsize',12); % Cambio de tamaño de numeros de ejes a 14
title('Modulo Cantidad de Movimiento Lineal respecto al Tiempo','Fontsize', 13);
grid on
% legend('azul'); Pone una leyenda flotante sobre la grafica

%xlim([-5 5]); Para poner valores limites en este caso en el eje x
% Se puede poner malla en el grafico con grid on
% hold on se usa para agregar varias funciones a la misma grafica
% saveas(gcf,'ModCantMov','epsc'); 
saveas(gcf,'ModCantMov','png'); % Para guardar esa grafica con ese nombre en ese formato