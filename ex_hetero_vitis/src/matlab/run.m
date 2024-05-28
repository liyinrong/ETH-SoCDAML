clc
clear

% This script uses the raw ECG data from
% from https://ch.mathworks.com/matlabcentral/fileexchange/45840-complete-pan-tompkins-implementation-ecg-qrs-detector
% available on the MathWorks File Exchange

% The feature extraction in this paper is based on
%  "A Real-Time QRS Detection Algorithm" by Jiapu Pan and Willis J.
%  Tompkins, IEEE Transaction on Biomedical Engineering, March 1985

%% Data Loading

% load ECG raw file
load('../data/ECG_sample_noisy.mat')
rawdata = ECG1';

% Sampling rate and time base
fs = 200; % we take the 200 Hz sampling rate as the original Pan Tompkins paper
t = (0:length(rawdata)-1)/fs;

%% Processing (Golden Model - Matlab)
data_in = rawdata;

% Create features
[ data, fdata ] = feature_creation( rawdata, fs );

% Locate features
[ feature_loc, ldata ] = feature_location( data.data_ma );

% Classfiy features (k-means, Lloyd Algorithm)
[ feature_A, feature_B, feature_threshold ] = feature_classify(data.data_ma(feature_loc));

% Locate actual peaks in raw signal
[ refined_peak_locations_A ] = refine_peak_locations( rawdata, feature_loc(feature_A) );
[ refined_peak_locations_B ] = refine_peak_locations( rawdata, feature_loc(feature_B) );

%% Plotting
figure(1)
yPlotCnt = 5;

ax(1)=subplot(yPlotCnt,1,1);
plot(t, rawdata)
title('Raw Input Data, with detected, located and classified pulses')
hold on
plot(t(refined_peak_locations_A),rawdata(refined_peak_locations_A),'ro')
plot(t(refined_peak_locations_B),rawdata(refined_peak_locations_B),'gx')
hold off


ax(2)=subplot(yPlotCnt,1,2);
plot(t, data.data_bp)
title('Bandpass')

ax(3)=subplot(yPlotCnt,1,3);
plot(t, data.data_d)
title('Derivative Filter')

ax(4)=subplot(yPlotCnt,1,4);
plot(t, data.data_s)
title('Squared')

ax(5)=subplot(yPlotCnt,1,5);
plot(t, data.data_ma)
title('Windowed, with located features and classification boundary')
hold on
plot([min(t) max(t)],[1 1]*feature_threshold,'m--')
plot(t(feature_loc),data.data_ma(feature_loc),'kx')
hold off

linkaxes(ax, 'x')
xlabel('Time [s]')
%ylim([-1 1]*100)
xlim([0 max(t)])

