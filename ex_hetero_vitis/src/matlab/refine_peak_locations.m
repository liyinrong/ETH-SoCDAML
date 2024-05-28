function [ refined_peak_locations ] = refine_peak_locations( rawdata, rough_peak_locations )
%LOCATE_PEAK Find actual peaks in raw signal

w = 40; %search window even

refined_peak_locations = [];
for rough_loc=rough_peak_locations
    
    %skip unsave indexing...
    if rough_loc < w && rough_loc + w > length(data_in)
        continue
    end
    
    [M,I] = max(rawdata(rough_loc+1-w/2:rough_loc+w/2+1));
    loc = rough_loc-w/2+I;
    refined_peak_locations = [refined_peak_locations loc];
end

end

