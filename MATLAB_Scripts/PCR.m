clc
clear all
close all 

%% CROSS POLARIZZAZIONE init cell

% Importa i dati dal file di testo
rXXinit = importdata('RXXinitcell.txt');
rXYinit = importdata('RXYinitcell.txt');
rYYinit = importdata('RYYinitcell.txt');
rYXinit = importdata('RYXinitcell.txt');

% Estrai colonne specifiche
freq_init = rXXinit.data(:, 1);

rxx_in = rXXinit.data(:, 2);
rxy_in = rXYinit.data(:, 2);
ryy_in = rYYinit.data(:, 2);
ryx_in = rYXinit.data(:, 2);

figure
plot(freq_init(200:1001), mag2db(rxx_in(200:1001)),':m', 'LineWidth', 2);
hold on
plot(freq_init(200:1001), mag2db(ryy_in(200:1001)),'--k', 'LineWidth', 2);
hold on
plot(freq_init(200:1001), mag2db(ryx_in(200:1001)),':b', 'LineWidth', 2);
hold on
plot(freq_init(200:1001), mag2db(rxy_in(200:1001)),'--r', 'LineWidth', 2);
xlim('tight');
xlabel('Frequency (GHz)');
ylabel('dB');
legend('RXX init cell', 'RYY init cell','RYX init cell', 'RXY init cell');

for i=1:length(rxx_in)
PCRx_in(i) = (abs(ryx_in(i)))^2/((abs(ryx_in(i)))^2+(abs(rxx_in(i)))^2);
PCRy_in(i) = (abs(rxy_in(i)))^2/((abs(rxy_in(i)))^2+(abs(ryy_in(i)))^2);
end

figure
plot(freq_init(200:1001), PCRx_in(200:1001),':b', 'LineWidth', 2);
hold on
plot(freq_init(200:1001), PCRy_in(200:1001),'--r', 'LineWidth', 2);
xlim('tight');
xlabel('Frequency (GHz)');
ylabel('PCR');
legend('PCRx init cell', 'PCRy init cell');

%% CROSS POLARIZZAZIONE final cell

% Importa i dati dal file di testo
rXX = importdata('RXX.txt');
rXY = importdata('RXY.txt');
rYY = importdata('RYY.txt');
rYX = importdata('RYX.txt');

% Estrai colonne specifiche
freq = rXX.data(:, 1);

rxx = rXX.data(:, 2);
rxy = rXY.data(:, 2);
ryy = rYY.data(:, 2);
ryx = rYX.data(:, 2);

figure
plot(freq(200:1001), mag2db(rxx(200:1001)),':m', 'LineWidth', 2);
hold on
plot(freq(200:1001), mag2db(ryy(200:1001)),'--k', 'LineWidth', 2);
hold on
plot(freq(200:1001), mag2db(ryx(200:1001)),':b', 'LineWidth', 2);
hold on
plot(freq(200:1001), mag2db(rxy(200:1001)),'--r', 'LineWidth', 2);
xlim('tight');
xlabel('Frequency (GHz)');
ylabel('dB');
legend('RXX final cell', 'RYY final cell','RYX final cell', 'RXY final cell');

for i=1:length(rxx)
PCRx(i) = (abs(ryx(i)))^2/((abs(ryx(i)))^2+(abs(rxx(i)))^2);
PCRy(i) = (abs(rxy(i)))^2/((abs(rxy(i)))^2+(abs(ryy(i)))^2);
end

figure
plot(freq(200:1001), PCRx(200:1001),':b', 'LineWidth', 2);
hold on
plot(freq(200:1001), PCRy(200:1001),'--r', 'LineWidth', 2);
xlim('tight');
xlabel('Frequency (GHz)');
ylabel('PCR');
legend('PCRx final cell', 'PCRy final cell');

%% CONFRONTO DEI DUE PCR init e final cell

figure
plot(freq_init(200:1001), PCRx_in(200:1001),'r', 'LineWidth', 2);
hold on
plot(freq(200:1001), PCRx(200:1001),'b', 'LineWidth', 2);
xlim('tight');
xlabel('Frequency (GHz)');
ylabel('PCR');
legend('PCRx init cell', 'PCRx final cell');

%% VARIAZIONE ANGOLO elevaz theta FINAL CELL

rXX = importdata('RXX.txt');
rYX = importdata('RYX.txt');
rXX_15 = importdata('RXX_th15.txt');
rYX_15 = importdata('RYX_th15.txt');
rXX_30 = importdata('RXX_th30.txt');
rYX_30 = importdata('RYX_th30.txt');
rXX_45 = importdata('RXX_th45.txt');
rYX_45 = importdata('RYX_th45.txt');
rXX_60 = importdata('RXX_th60.txt');
rYX_60 = importdata('RYX_th60.txt');


% Estrai colonne specifiche
freq = rXX.data(:, 1);

rxx = rXX.data(:, 2);
ryx = rYX.data(:, 2);
rxx_15 = rXX_15.data(:, 2);
ryx_15 = rYX_15.data(:, 2);
rxx_30 = rXX_30.data(:, 2);
ryx_30 = rYX_30.data(:, 2);
rxx_45 = rXX_45.data(:, 2);
ryx_45 = rYX_45.data(:, 2);
rxx_60 = rXX_60.data(:, 2);
ryx_60 = rYX_60.data(:, 2);

figure
plot(freq(200:1001), mag2db(rxx(200:1001)),':m', 'LineWidth', 2);
hold on
plot(freq(200:1001), mag2db(rxx_15(200:1001)),':r', 'LineWidth', 2);
hold on
plot(freq(200:1001), mag2db(rxx_30(200:1001)),':b', 'LineWidth', 2);
hold on
plot(freq(200:1001), mag2db(rxx_45(200:1001)),':g', 'LineWidth', 2);
hold on
plot(freq(200:1001), mag2db(rxx_60(200:1001)),':c', 'LineWidth', 2);
xlim('tight');
xlabel('Frequency (GHz)');
ylabel('dB');
legend('RXX final cell theta=0','RXX final cell theta=15','RXX final cell theta=30','RXX final cell theta=45','RXX final cell theta=60');

figure
plot(freq(200:1001), mag2db(ryx(200:1001)),':m', 'LineWidth', 2);
hold on
plot(freq(200:1001), mag2db(ryx_15(200:1001)),':r', 'LineWidth', 2);
hold on
plot(freq(200:1001), mag2db(ryx_30(200:1001)),':b', 'LineWidth', 2);
hold on
plot(freq(200:1001), mag2db(ryx_45(200:1001)),':g', 'LineWidth', 2);
hold on
plot(freq(200:1001), mag2db(ryx_60(200:1001)),':c', 'LineWidth', 2);
xlim('tight');
xlabel('Frequency (GHz)');
ylabel('dB');
legend('RYX final cell theta=0','RYX final cell theta=15','RYX final cell theta=30','RYX final cell theta=45','RYX final cell theta=60');

%% DIFF PHASE CELLA MIRROR

rYX = importdata('RYX.txt');
rYXmirror = importdata('RYXmirrorcell.txt');

% Estrai colonne specifiche
freq = rYX.data(:, 1);

ryx = rYX.data(:, 2);
ryx_mir = rYXmirror.data(:, 2);

figure
plot(freq(200:1001), mag2db(ryx(200:1001)),':b', 'LineWidth', 2);
hold on
plot(freq(200:1001), mag2db(ryx_mir(200:1001)),'--r', 'LineWidth', 2);
xlim('tight');
xlabel('Frequency (GHz)');
ylabel('dB');
legend('RYX final cell', 'RYX mirror final cell');

phasebase = importdata('Phasecellabase_ryx.txt');
phasemirror = importdata('Phasecellamirror_ryx.txt');

freq_ = phasebase.data(:, 1);

phase_cellabase = unwrap(phasebase.data(:, 2));
phase_cellamirror = unwrap(phasemirror.data(:, 2));

figure
plot(freq_(200:1001), phase_cellabase(200:1001),':c', 'LineWidth', 2);
hold on
plot(freq_(200:1001), phase_cellamirror(200:1001),'--g', 'LineWidth', 2);
hold on
plot(freq_(200:1001), phase_cellabase(200:1001)-phase_cellamirror(200:1001),'k', 'LineWidth', 2);
xlim('tight');
xlabel('Frequency (GHz)');
ylabel('Reflection phase (°)');
legend('Phase Ryx final cell', 'Phase Ryx mirror final cell','Difference of phase');

%% RCS

clc
clear all

RCSpec = importdata('rcs_sq_pec.txt');
RCS4rot = importdata('rcs_sq_4rot.txt');
RCSchess = importdata('rcs_sq_chess.txt');
RCSstessecelle = importdata('rcs_sq_stessecelle.txt');

freq__ = RCSpec.data(:, 1);

rcspec = RCSpec.data(:, 2);
rcs4rot = RCS4rot.data(:, 2);
rcschess = RCSchess.data(:, 2);
rcsstessecelle = RCSstessecelle.data(:, 2);

figure
plot(freq__,rcsstessecelle ,'--r', 'LineWidth', 2);
xlabel('Frequency (GHz)');
ylabel('RCS (square meters)');
legend('RCS stesse celle');
figure
plot(freq__,rcschess ,'--b', 'LineWidth', 2);
xlabel('Frequency (GHz)');
ylabel('RCS (square meters)');
legend('RCS chessboard');
figure
plot(freq__,rcs4rot,'--k', 'LineWidth', 2);
xlabel('Frequency (GHz)');
ylabel('RCS (square meters)');
legend('RCS 4 rotazioni');

figure
plot(freq__,rcs4rot,'--k', 'LineWidth', 2);
hold on
plot(freq__,rcschess,'--b', 'LineWidth', 2);
hold on
plot(freq__,rcsstessecelle,'--r', 'LineWidth', 2);
xlabel('Frequency (GHz)');
ylabel('RCS (square meters)');
legend('RCS 4 rotazioni','RCS chessboard', 'RCS stesse celle');

figure
plot(freq__,rcspec,'--m', 'LineWidth', 2);
hold on
plot(freq__,rcs4rot,'--k', 'LineWidth', 2);
xlabel('Frequency (GHz)');
ylabel('RCS (square meters)');
legend('RCS pec', 'RCS 4 rotazioni');


%% RCS 4 rotazioni theta pol e phi pol (diversi angoli elevation di incidenza)

RCS4rot = importdata('rcs_sq_4rot.txt');
RCS4rot_th30 = importdata('rcs_sq_4rot_th30.txt');
RCS4rot_th60 = importdata('rcs_sq_4rot_th60.txt');

RCS4rot_alpha90_th0 = importdata('rcs_sq_4rot_alpha90_th0.txt');
RCS4rot_alpha90_th30 = importdata('rcs_sq_4rot_alpha90_th30.txt');
RCS4rot_alpha90_th60 = importdata('rcs_sq_4rot_alpha90_th60.txt');

freq__ = RCS4rot.data(:, 1);

rcs4rot = RCS4rot.data(:, 2);
rcs4rot_th30 = RCS4rot_th30.data(:, 2);
rcs4rot_th60 = RCS4rot_th60.data(:, 2);

rcs4rot_alpha90_th0 = RCS4rot_alpha90_th0.data(:, 2);
rcs4rot_alpha90_th30 = RCS4rot_alpha90_th30.data(:, 2);
rcs4rot_alpha90_th60 = RCS4rot_alpha90_th60.data(:, 2);

figure
plot(freq__,rcs4rot,'--m', 'LineWidth', 2);
hold on
plot(freq__,rcs4rot_th30,'--r', 'LineWidth', 2);
hold on
plot(freq__,rcs4rot_th60,'--b', 'LineWidth', 2);
xlabel('Frequency (GHz)');
ylabel('RCS (square meters)');
legend('RCS 4 rotazioni, thetapol theta=0','RCS 4 rotazioni, thetapol theta=30','RCS 4 rotazioni, thetapol theta=60');

figure
plot(freq__,rcs4rot_alpha90_th0,'--g', 'LineWidth', 2);
hold on
plot(freq__,rcs4rot_alpha90_th30,'--k', 'LineWidth', 2);
hold on
plot(freq__,rcs4rot_alpha90_th60,'--c', 'LineWidth', 2);
xlabel('Frequency (GHz)');
ylabel('RCS (square meters)');
legend('RCS 4 rotazioni, phipol theta=0','RCS 4 rotazioni, phipol theta=30','RCS 4 rotazioni, phipol theta=60');

