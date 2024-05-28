function [ feature_A, feature_B, feature_threshold ] = feature_classify( feature_values )
%FEATURE_CLASSIFY return type of peaks

% Classfiy features (k-means, Lloyd Algorithm)
% Cluster in two types: a and b

% init, use mean as init value
p_threshold_old = -1;
p_threshold = mean(feature_values); 

% cluster
while(abs(p_threshold_old-p_threshold) > 1)
    % get current grouping
    feature_A = feature_values >= p_threshold;
    feature_B = feature_values < p_threshold;
    % compute new group means
    mean_a = mean(feature_values(feature_A));
    mean_b = mean(feature_values(feature_B));
    % update threshold
    p_threshold_old = p_threshold;
    p_threshold = (mean_a + mean_b)/2;
end

feature_threshold = p_threshold;

end

