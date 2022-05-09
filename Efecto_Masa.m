% Efecto de la Masa en Sistema Masa Resorte Amortiguador no Forzado, Tarea 3 del curso de Vibraciones.
% María Fernanda Abarca Jiménez B50013 

clear variables
clc

m = [100 1000 10000] ; % Masa del sistema variando entre 100, 1000, 10 000 [kg]
k = 10000; % Constante de rigidez [N/m]
zeta = 0.05; % Factor de Amortiguamiento
x0 = 0.01; % Condicion inicial, desplazamiento [m]
v0 = 0; % Condicion inicial, velocidad [m/s]

t = (0:0.001:20); % Tiempo, de 0 s a 20 s en intervalos de 0.001 [s]

wn = zeros(1,numel (m)); % "zeros(1,numel(m))" crea un arreglo de ceros con esas dimensiones.  For example, zeros(2,3) returns a 2-by-3 matrix.
                        % Frecuencia natural [rad/s]
                        % "numel (m)" es el numero de elementos que hay en
                        % la matriz m (En este caso 3 que son 100 1000 10000)

colores = ['b' 'r' 'k' 'm']; % Arreglo que asigna colores
                            % 'b' azul
                            % 'r' rojo
                            % 'k'negro
for i=1:numel (m) % Contador del for que va de 1 al numero de elementos de  la matriz m
    leyenda = ['m = ' num2str(m(i)) ' kg']; % Así se permite concatenar (juntar) strings, "num2string" pasa un numero a string

    wn (i)= sqrt(k/m(i)); %Formula de la frecuencia natural [rad/s]
    wd(i) = wn(i)*sqrt(1-zeta^2); % Formula de la frecuencia natural amortiguada [rad/s]
    x = exp(-wn(i)*zeta*t).*(x0*cos(wn(i)*t) + (v0+wn(i)*x0*zeta)/(wd(i))*sin(wn(i)*t)); % Ecuacion de desplazamiento del sistema [m]

    plot(t,x,colores(i),'Linewidth',2,'DisplayName',leyenda) % Grafica la respuesta
    hold on % Mantiene la grafica para dejar todas en el mismo plot
    xlabel('Tiempo (s)','Interpreter','Latex','Fontsize',14) % 'Interpreter", 'Latex', lo que hace es que lo que se escriba en la label sea leido con el formato de latex
    ylabel('Desplazamiento (m)','Interpreter','Latex','Fontsize',14)
    set(gca,'Fontsize',14) % Cambia el tamaño de numeros en los ejes a 14

end

title('Desplazamiento Sist. MRA NoForzado respecto a la masa','Fontsize', 10);
legend('Fontsize',13) % Cambia tamano letra de leyenda a 13
legend('Location','best') % Ubica la leyenda en la mejor posicion, para que no estorbe
legend boxoff % Oculta el cuadro de la leyenda
legend show % Muestra la leyenda en la grafica
saveas(gcf,'EfectoMasa_Sist_MRA_NoForzado','epsc') % Guarda la imagen en forma eps (Dibujo vectorial
saveas(gcf,'EfectoMasa_Sist_MRA_NoForzado','png') % Guarda la imagen en formato png (Mapa de bits)

