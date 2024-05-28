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
rawdata = round(ECG1');

% Sampling rate and time base
fs = 200; % we take the 200 Hz sampling rate as the original Pan Tompkins paper
t = (0:length(rawdata)-1)/fs;

%% Processing (Golden Model - Matlab)


% Create features
[ data, fdata ] = feature_creation( rawdata, fs );

% Locate features
[ feature_loc, ldata ] = feature_location( data.data_ma );

% Classfiy features (k-means, Lloyd Algorithm)
[ feature_A, feature_B, feature_threshold ] = feature_classify(data.data_ma(feature_loc));

% Locate actual peaks in raw signal
[ refined_peak_locations_A ] = refine_peak_locations( rawdata, feature_loc(feature_A) );
[ refined_peak_locations_B ] = refine_peak_locations( rawdata, feature_loc(feature_B) );

%% Compile C Model (same code as will be executed on the ARM)

% write out filter coefficient for Bandpass filter
fid=fopen('../data/BP_FIR.inc','w');
fprintf(fid,'%i,\n',round(fdata.bp_FIR(1:end-1)*2^16));
fprintf(fid,'%i\n',round(fdata.bp_FIR(end)*2^16));
fclose(fid);

% compile feature creation C function
mex -I../c/ ./mex_c_feature_creation.cpp ../c/c_processing.cpp
% compile feature location C function
mex -I../c/ ./mex_c_feature_location.cpp ../c/c_processing.cpp

% while we are on it also dump the input files (for the ARM)
fid=fopen('../data/input.inc','w');
fprintf(fid,'%i,\n',rawdata(1:end-1));
fprintf(fid,'%i\n',rawdata(end));
fclose(fid);

%% Processing (C Model - Software)


% Create features
data_c = mex_c_feature_creation( rawdata);
% Locate features
feature_loc_c = mex_c_feature_location( data_c );

% the rest we keep in matlab... for the time being
% Classfiy features (k-means, Lloyd Algorithm)
[ feature_A_c, feature_B_c, feature_threshold_c ] = feature_classify(data_c(feature_loc_c));
% Locate actual peaks in raw signal
[ refined_peak_locations_A_c ] = refine_peak_locations( rawdata, feature_loc_c(feature_A_c) );
[ refined_peak_locations_B_c ] = refine_peak_locations( rawdata, feature_loc_c(feature_B_c) );


%% Verify
% we are a bit quite tolerant here

disp('Feature Verification: ')
if (length(feature_loc) == length(feature_loc_c))  
    if (all(abs(feature_loc - double(feature_loc_c)) <= 10))
        disp(' OK')
    else
        disp(' MISMATCH detected!!')
        figure(3)
        plot(feature_loc,'ob')
        hold on
        plot(feature_loc_c,'xk')
        hold off
    end
else
    disp(' FLEN MISMATCH!!')
    return
end

disp('Classification Verification:' )
if (all(abs(refined_peak_locations_A) - double(refined_peak_locations_A_c)) <= 1) && ...
        all(abs(refined_peak_locations_B - double(refined_peak_locations_B_c))<= 1)
    disp(' OK')
else
    disp(' MISMATCH detected!!')
    figure(4)
    plot(refined_peak_locations_A,'ro')
    hold on
    plot(refined_peak_locations_B,'go')
    plot(refined_peak_locations_A_c,'mx')
    plot(refined_peak_locations_B_c,'cx')
    hold off
end
    

%% Plotting
figure(1)
yPlotCnt = 3;

ax(1)=subplot(yPlotCnt,1,1);
plot(t, rawdata)
title('Raw Input Data, with detected, located and classified pulses')
hold on
plot(t(refined_peak_locations_A),rawdata(refined_peak_locations_A),'ro')
plot(t(refined_peak_locations_B),rawdata(refined_peak_locations_B),'go')
plot(t(refined_peak_locations_A_c),rawdata(refined_peak_locations_A_c),'mx')
plot(t(refined_peak_locations_B_c),rawdata(refined_peak_locations_B_c),'cx')
hold off
legend('raw','m-loc-A','m-loc-B','c-loc-A','m-loc-B')

ax(2)=subplot(yPlotCnt,1,2);
plot(t, data.data_ma)
title('MATLAB: Located features and classification boundary')
hold on
plot(t(feature_loc),data.data_ma(feature_loc),'bo')
plot([min(t) max(t)],[1 1]*feature_threshold,'m--')
hold off
legend('m-data','m-feat','m-threhold')

ax(3)=subplot(yPlotCnt,1,3);
plot(t, data_c,'k')
title('C: Located features and classification boundary')
hold on
plot(t(feature_loc_c),data_c(feature_loc_c),'ok')
plot([min(t) max(t)],[1 1]*feature_threshold_c,'c--')
hold off
legend('c-data','c-feat','c-threhold')

linkaxes(ax, 'x')
xlabel('Time [s]')
%ylim([-1 1]*100)
xlim([0 max(t)])

disp('DONE')

