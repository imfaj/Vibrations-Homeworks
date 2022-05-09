% Series de Taylor, Tarea 1 del curso de Vibraciones.
% María Fernanda Abarca Jiménez B50013 

clear all % Se puede usar tambien clear variables
clc

syms x y% Create symbolic scalar variables and functions

f_original=(x.^3)+(x.^2)+(2*x); %Función original dada en el enunciado.
aproximacion=4+(7.*(y-1))+(4.*(y-1).^2); %Aproximación de tres terminos obtenida con Series de Taylor.

%Taylor= taylor(f_original, x, 1, 'Order', 3); %Así se obtiene la aproximacion
%de Taylor de la funcion  f_original con variable independiente x alrededor
%de 1 de grado/orden 3

fplot([f_original aproximacion],'Linewidth', 3); %Plots the curve defined by the
%function y = f(x) over the default interval [-5 5] for x. En este caso
%entre los [] poner todas las funciones a graficar.

grid on
grid minor %Para poner malla mas peque
set(gca,'Fontsize',12); % Cambio de tamaño de numeros de ejes a 12
xlabel('x', 'Fontsize',12);
ylabel('y', 'Fontsize',12);
title('Función original vs Aproximación','Fontsize', 13);
legend('Original', 'Taylor')
saveas(gcf,'OriginalYTaylor','png'); % Para guardar esa grafica con ese nombre en ese formato


%subplot(2,1,1); % subplot(filas,columnas,posiciongrafica)
%fplot(f_original)
%xlim([-5 5]) %Define los limites del eje x

