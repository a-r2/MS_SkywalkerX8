% Script que representa en distintas graficas datos de interes obtenidos 
% a lo largo de la simulacion.

close all

figure; 
subplot(3,1,1);
plot(posicion_geodetica.Time,posicion_geodetica.Data(:,2)); 
grid; title('Latitud');
xlabel('t [s]'); ylabel('\Phi [�]'); 
subplot(3,1,2);
plot(posicion_geodetica.Time,posicion_geodetica.Data(:,1)); 
grid; title('Longitud');
xlabel('t [s]'); ylabel('\Lambda [�]'); 
subplot(3,1,3);
plot(posicion_geodetica.Time,posicion_geodetica.Data(:,3)); 
grid; title('Altitud');
xlabel('t [s]'); ylabel('h [m]'); 

figure;
subplot(2,3,1);
plot(fuerzas.Time,fuerzas.Data(:,1)); 
grid; title('Fuerza X (cuerpo)');
xlabel('t [s]'); ylabel('F_X [N]'); 
subplot(2,3,2);
plot(fuerzas.Time,fuerzas.Data(:,2)); 
grid; title('Fuerza Y (cuerpo)');
xlabel('t [s]'); ylabel('F_Y [N]');
subplot(2,3,3);
plot(fuerzas.Time,fuerzas.Data(:,3)); 
grid; title('Fuerza Z (cuerpo)');
xlabel('t [s]'); ylabel('F_Z [N]');
subplot(2,3,4);
plot(momentos.Time,momentos.Data(:,1)); 
grid; title('Momento alrededor de X (cuerpo)');
xlabel('t [s]'); ylabel('P [N/m]'); 
subplot(2,3,5);
plot(momentos.Time,momentos.Data(:,2)); 
grid; title('Momento alrededor de Y (cuerpo)');
xlabel('t [s]'); ylabel('Q [N/m]');
subplot(2,3,6);
plot(momentos.Time,momentos.Data(:,3)); 
grid; title('Momento alrededor de Z (cuerpo)');
xlabel('t [s]'); ylabel('R [N/m]');

figure; 
subplot(3,3,1);
plot(posicion_NED.Time,posicion_NED.Data(:,1)); 
grid; title('Posicion Norte');
xlabel('t [s]'); ylabel('N [m]'); 
subplot(3,3,2);
plot(posicion_NED.Time,posicion_NED.Data(:,2)); 
grid; title('Posicion Este');
xlabel('t [s]'); ylabel('E [m]'); 
subplot(3,3,3);
plot(posicion_NED.Time,posicion_NED.Data(:,3)); 
grid; title('Posicion Vertical');
xlabel('t [s]'); ylabel('D [m]');
subplot(3,3,4);
plot(velocidades_lineales.Time,velocidades_lineales.Data(:,1)); 
grid; title('Velocidad X (cuerpo)');
xlabel('t [s]'); ylabel('V_X [m/s]'); 
subplot(3,3,5);
plot(velocidades_lineales.Time,velocidades_lineales.Data(:,2)); 
grid; title('Velocidad Y (cuerpo)');
xlabel('t [s]'); ylabel('V_Y [m/s]'); 
subplot(3,3,6);
plot(velocidades_lineales.Time,velocidades_lineales.Data(:,3)); 
grid; title('Velocidad Z (cuerpo)');
xlabel('t [s]'); ylabel('V_Z [m/s]');
subplot(3,3,7);
plot(aceleraciones_lineales.Time,aceleraciones_lineales.Data(:,1)); 
grid; title('Aceleracion X (cuerpo)');
xlabel('t [s]'); ylabel('A_X [m/s^2]'); 
subplot(3,3,8);
plot(aceleraciones_lineales.Time,aceleraciones_lineales.Data(:,2)); 
grid; title('Aceleracion Y (cuerpo)');
xlabel('t [s]'); ylabel('A_Y [m/s^2]'); 
subplot(3,3,9);
plot(aceleraciones_lineales.Time,aceleraciones_lineales.Data(:,3)); 
grid; title('Aceleracion Z (cuerpo)');
xlabel('t [s]'); ylabel('A_Z [m/s^2]');

figure; 
subplot(3,3,1);
plot(actitud.Time,actitud.Data(:,1)); 
grid; title('Alabeo');
xlabel('t [s]'); ylabel('\phi [�]'); 
subplot(3,3,2);
plot(actitud.Time,actitud.Data(:,2)); 
grid; title('Cabeceo');
xlabel('t [s]'); ylabel('\theta [�]'); 
subplot(3,3,3);
plot(actitud.Time,actitud.Data(:,3)); 
grid; title('Guinada');
xlabel('t [s]'); ylabel('\psi [�]');
subplot(3,3,4);
plot(velocidades_angulares.Time,velocidades_angulares.Data(:,1)); 
grid; title('Velocidad de alabeo');
xlabel('t [s]'); ylabel('\omega_\phi [�/s]'); 
subplot(3,3,5);
plot(velocidades_angulares.Time,velocidades_angulares.Data(:,2)); 
grid; title('Velocidad de cabeceo');
xlabel('t [s]'); ylabel('\omega_\theta [�/s]'); 
subplot(3,3,6);
plot(velocidades_angulares.Time,velocidades_angulares.Data(:,3)); 
grid; title('Velocidad de guinada');
xlabel('t [s]'); ylabel('\omega_\psi [�/s]');
subplot(3,3,7);
plot(aceleraciones_angulares.Time,aceleraciones_angulares.Data(:,1));
grid; title('Aceleracion de alabeo');
xlabel('t [s]'); ylabel('\omega_\phi punto [�/s^2]'); 
subplot(3,3,8);
plot(aceleraciones_angulares.Time,aceleraciones_angulares.Data(:,2)); 
grid; title('Aceleracion de cabeceo');
xlabel('t [s]'); ylabel('\omega_\theta punto [�/s^2]'); 
subplot(3,3,9);
plot(aceleraciones_angulares.Time,aceleraciones_angulares.Data(:,3)); 
grid; title('Aceleracion de guinada');
xlabel('t [s]'); ylabel('\omega_\psi punto [�/s^2]');


figure; 
subplot(3,1,1);
plot(deflexion_alerones.Time,deflexion_alerones.Data); 
grid; title('Alerones');
xlabel('t [s]'); ylabel('Deflexion de los alerones [�]'); 
subplot(3,1,2);
plot(deflexion_elevadores.Time,deflexion_elevadores.Data); 
grid; title('Elevadores');
xlabel('t [s]'); ylabel('Deflexion de los elevadores [�]'); 
subplot(3,1,3);
plot(fuerza_motor.Time,fuerza_motor.Data); 
grid; title('Motor');
xlabel('t [s]'); ylabel('Fuerza del motor [N]');

figure;
plot3(posicion_NED.Data(:,1),posicion_NED.Data(:,2),...
      posicion_inicial.Data(1,3)-posicion_NED.Data(:,3)); 
grid; title('Trayectoria');
xlabel('Norte [m]'); ylabel('Este [m]'); zlabel('Altitud [m]');