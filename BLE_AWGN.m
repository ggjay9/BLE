close, clear, clc

%% Simulink values
% Raccolta dei dati ottenuti con le diverse simulazioni, le prime quattro
% fanno riferimento a diversi PHY con canale AWGN, l'ultimo invece fa
% riferimento ad un PHY LE1M con canale AWGN e Rayleigh fading

EbNo = -2:2:8;
LE2M_simulink = [0.2294, 0.1474, 0.07361, 0.02636, 0.00534, 0.000456];
LE1M_simulink = [0.2295, 0.1481, 0.0746, 0.02629, 0.005296, 0.00047];
LE500K_simulink = [0.228, 0.1466, 0.07365, 0.02633, 0.005231, 0.00049];
LE125K_simulink = [0.2293, 0.1472, 0.07444, 0.02605, 0.005293, 0.0005075];
LE1M_Rayleigh_simulink = [0.2483, 0.1756, 0.1023, 0.05207, 0.02067, 0.006722];
LE1M_Rician_simulink = [0.2639, 0.1923, 0.1252, 0.07484, 0.04003, 0.02063];

%% Comparison between theorical values and simulink values
% Utilizzando la figura ottenuta attraverso il bertool viene plottato il
% BER teorico e quello ottenuto attraverso una simulazione di una LE2M per
% poterne fare un confronto 

openfig('Theorical.fig');
semilogy(EbNo, LE2M_simulink, 'r--*', 'LineWidth', 1.5, 'MarkerSize', 10), grid on;
xlabel('E_b/N_o (dB)');
ylabel('BER');
title('BER for BLE with uncoded PHY with AWGN channel');
legend('Theorical GMSK', 'LE2M simulink');

%% Comparison between different uncoded PHY mode
% Vengono plottate le curve ottenute attraverso simulazioni con differenti
% PHY e quindi confrontate 

pause
figure(2)
semilogy(EbNo, LE2M_simulink, 'r--*', 'LineWidth', 1.5, 'MarkerSize', 10);
hold on;
semilogy(EbNo, LE1M_simulink, 'b--o', 'LineWidth', 1, 'MarkerSize', 10);
semilogy(EbNo, LE500K_simulink, 'g--x', 'LineWidth', 1, 'MarkerSize', 10);
semilogy(EbNo, LE125K_simulink, 'm--+', 'LineWidth', 1, 'MarkerSize', 10);
grid on;
xlabel('E_b/N_o (dB)');
ylabel('BER');
title('BER for BLE with uncoded PHY with AWGN channel');
legend('LE2M simulink', 'LE1M simulink', 'LE500K simulink', 'LE125K simulink');

%% Comparison between LE1M no Rayleigh values and Rayleigh values
% Viene fatto un confronto attraverso due comunicazioni LE1M in cui la 
% differenza sostanziale sta nel canale di trasmissione avendo in una la 
% presenza del Rayleigh fading e nell'altra no

pause
figure(3)
semilogy(EbNo, LE1M_simulink, 'r--*', 'LineWidth', 1, 'MarkerSize', 10); 
hold on;
semilogy(EbNo, LE1M_Rayleigh_simulink, 'b--d', 'LineWidth', 1, 'MarkerSize', 10); 
grid on;
xlabel('E_b/N_o (dB)');
ylabel('BER');
title('BER for BLE with uncoded PHY LE1M with AWGN channel');
legend('No Rayleigh fading', 'Rayleigh fading');

%% Comparison between LE1M no Rician values and Rayleigh values
% Viene fatto un confronto attraverso due comunicazioni LE1M in cui la 
% differenza sostanziale sta nel canale di trasmissione avendo in una la 
% presenza del Rician fading e nell'altra no

pause
figure(4)
semilogy(EbNo, LE1M_simulink, 'r--*', 'LineWidth', 1, 'MarkerSize', 10); 
hold on;
semilogy(EbNo, LE1M_Rayleigh_simulink, 'b--d', 'LineWidth', 1, 'MarkerSize', 10);
grid on;
xlabel('E_b/N_o (dB)');
ylabel('BER');
title('BER for BLE with uncoded PHY LE1M with AWGN channel');
legend('No Rayleigh fading', 'Rayleigh fading');