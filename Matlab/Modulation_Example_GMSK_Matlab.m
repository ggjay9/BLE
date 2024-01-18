close all
clearvars
clc

%% RECTANGULAR SIGNAL GENERATION

% generate and visualize with a graph a casual sequence of 10 bits
bit = randi([0 1],1,10);
figure(1)
stem(bit)
% space previous generated bits with 31 zeros
bit_int(1:32:32*10) = bit;
pause
figure(2)
stem(bit_int)
% bit convolution spaced with a 32-samples rectangular filter
rect = rectwin(32);
bit_rect = conv(rect, bit_int);
pause
figure(3)
stem(bit_rect)
% the following operation on the signal is used to make its processing 
% possible by the Simulink "FM Modulator Passband" block
bit_rect_t = [(1:length(bit_rect)); 2*bit_rect - 1] ;
pause

%% GAUSSIAN SIGNAL GENERATION

% generation of a 32-samples gaussian filter
bt = 0.3;
span = 4;
sps = 8;
h = gaussdesign(bt,span,sps);
fvtool(h,'impulse')
% convolution between the gaussian filter and the rectangular segnal 
% previously obtained
bit_gauss = conv(bit_rect,h);
pause
figure(5)
stem(bit_gauss)
% the following operation on the signal is used to make its processing 
% possible by the Simulink "FM Modulator Passband" block
bit_gauss_t = [(1:length(bit_gauss)); 2*bit_gauss - 1] ;

