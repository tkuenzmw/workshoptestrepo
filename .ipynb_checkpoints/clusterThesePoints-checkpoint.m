function [labels, centroids] = clusterThesePoints(P, epsilon, minPts)
%clusterThesePoints - exemplary MATLAB Function

arguments
    P (:,3) double
    epsilon (1,1) double = 1.5
    minPts (1,1) double = 30
end
labels = dbscan(P(:,1:2), epsilon, minPts);
ids = unique(labels);
ids(ids == -1) = []; % get rid of outliers
centroids = zeros(numel(ids), height(P));
for iii = 1:numel(ids)
    thesePoints = P(labels == ids(iii), :);
    centroids(iii, :) = mean(thesePoints, 1);
end