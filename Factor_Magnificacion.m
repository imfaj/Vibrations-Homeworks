% Factor de Magnificación, Tarea 2 del curso de Vibraciones.
% María Fernanda Abarca Jiménez B50013 

clear variables 
clc

r=(0:0.01:4); % r en el dominio de 0 a 4; r=w/wn

fm=1./(1-(r.^2)); % Factor de Magnificación

plot(r, fm, 'Linewidth', 2);
xlabel('r', 'Fontsize',12);
ylabel('Factor de Magnificación', 'Fontsize', 12);
ylim([-3 3]);
set(gca,'Fontsize',12); % Cambio de tamaño de numeros de ejes a 14
title('Factor de Magnificación en el dominio r','Fontsize', 13);
grid on

saveas(gcf,'FactorMagni','png'); % Para guardar esa grafica con ese nombre en ese formato