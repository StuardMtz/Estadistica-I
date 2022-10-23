%%Probabilidad de un evento
%Simulacion de lanzamiento de un dado

N=100; %Cantidad de lanzamientos
V=rand(1,N); %Vector de numeros aleatorios (rand)
X=zeros(1,N); %Vector de ceros (para almacenar la cantidad de veces que cae cada lado)
P=1/6; %Probabilidad 1 de 6 (por los seis lados del dado)

figure (1) %Simulacion de lanzamientos (eje y entre 0 y 1)(eje x la cantidad de lanzamientos)
plot(V,'.')

for i=1:N %Condiciones de probabilidad
    if(V(i)<P) %Vector de numero aleatorio menor a la probabilidad (0.16)
        X(i)=1;
    else
        if (P<= V(i) && V(i)<(2*P))%0.32
            X(i)=2;
        else
            if((2*P)<= V(i) && V(i)<(3*P))%0.48
                X(i)=3;
            else
                if((3*P)<= V(i) && V(i)<(4*P))%0.64
                    X(i)=4;
                else
                    if((4*P)<= V(i) && V(i)<(5*P))%0.8
                        X(i)=5;
                    else
                        if((5*P)<= V(i) && V(i)<(6*P))%0.96
                            X(i)=6;
                        end
                    end
                end
            end
        end
    end
end

figure (2)
subplot(1,2,1)
plot(X,'.')
title ('Tirada') %Representacion de lanzamientos
subplot(1,2,2)
histogram(X,'BinMethod','Sturges') %Representacion grafica del conjunto de datos obtenidos
title('Distribucion de Tiradas')

%Mostrar el lanzamiento en el que se obtuvo el lado(vector)
%find (encontrar en el vector el lado)
uno=find(X==1);
dos=find(X==2);
tres=find(X==3);
cuatro=find(X==4);
cinco=find(X==5);
seis=find(X==6);

%Contar la cantidad de veces que cayo el lado (vector)
%length (contar la cantidaad obtenida)
l1 = length (uno);
l2 = length (dos);
l3 = length (tres);
l4 = length (cuatro);
l5 = length (cinco);
l6 = length (seis);

%calculo de la probabilidad
x(1) = l1/N;
x(2) = l2/N;
x(3) = l3/N;
x(4) = l4/N;
x(5) = l5/N;
x(6) = l6/N;

%grafica de probabilidad
y=1:6;
figure (3)
bar(y,x,0.4)
