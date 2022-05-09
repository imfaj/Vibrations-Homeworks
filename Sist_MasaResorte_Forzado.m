% Sistema Masa-Resorte Forzado, Tarea 2 del curso de Vibraciones.
% María Fernanda Abarca Jiménez B50013 

clear variables 
clc

m=10; % Masa del sistema [kg]
k=10000; % Constante de Rigidez del resorte [N/m]
wn=sqrt(k/m); % Frecuencia natural del sistema [rad/s]

t=(0:0.001:2); % Tiempo, en un ambito de 2 segundos (0 a 2 segundos), con intervalos de 0.001 segundo.
F=1000.*cos(45.*t); % Fuerza sobre el sistema [N]
w=45; % Frecuencia de la carga [rad/s]

f=F./m; % Termino que simplifica considerar F/m
% Se consideran condiciones iniciales = 0
varia=f./((wn^2)-(w^2));

%x=((-f./((wn^2)-(w^2))).*cos(wn.*t))+((f./((wn^2)-(w^2))).*cos(w.*t)); % Desplazamiento del sistema masa-resorte forzado
x=-varia.*cos(wn.*t)+varia.*cos(w.*t);

plot(t, x, 'Linewidth', 2);
xlabel('Tiempo t [s]', 'Fontsize',12);
ylabel('Desplazamiento x [m]', 'Fontsize', 12);
set(gca,'Fontsize',12); % Cambio de tamaño de numeros de ejes a 14
title('Desplazamiento Sist. Masa-Resorte Forzado','Fontsize', 13);
grid on

saveas(gcf,'Despl Sist MRF','png'); % Para guardar esa grafica con ese nombre en ese formato