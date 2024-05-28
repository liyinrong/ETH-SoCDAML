function [ locations, ldata] = feature_location( data_ma )
% search for peaks (local max) separated by at least w/2

% settings
w = 200; % Window size, must be even
WRS_threshold = 50; % weak response suppression threshold

% work with overlapping windows...
wc = floor(length(data_ma)/(w/2))-2; % number of windows
locations = [];
last_peak_value = 0;
for widx=0:(wc-1)
    cur_window_srt_idx = widx*w/2;
    [cur_max,cur_loc_idx] = max(data_ma(cur_window_srt_idx+1:cur_window_srt_idx+w+1));
    if(cur_loc_idx > 1 && cur_loc_idx < w)
        % Threshold condition
        if (cur_max > WRS_threshold)
            % check if peaks are too close... 
            % (only check if there has been found a peak already...)
            if ~isempty(locations) && abs(locations(end) - (cur_window_srt_idx+cur_loc_idx))<w/2
                if(last_peak_value < cur_max)
                    %overwrite last peak
                    locations(end) = cur_window_srt_idx+cur_loc_idx;
                    last_peak_value = cur_max;
                end
            else 
                % add new peak
                locations = [locations cur_window_srt_idx+cur_loc_idx];
                last_peak_value = cur_max;
            end
        end
    end
end

% return settings...
ldata.w = w;
ldata.WRS = WRS_threshold;

end

