function labels = clusterThesePoints(P, epsilon, minPts)
%clusterThesePoints - exemplary MATLAB Function

% TODO: change function definition to include additional output

arguments
    P (:,3) double
    epsilon (1,1) double = 1.5
    minPts (1,1) double = 30
end
labels = dbscan(P, epsilon, minPts);

% TODO: finish calculating Centroids
% centroids are the mean coordinates of the points in a cluster
ids = unique(labels);
ids(ids == -1) = []; % get rid of outliers
centroids = zeros(numel(ids), 3);
for iii = 1:numel(ids)
    % TODO: how do I find the Points that belong to cluster iii
    % TODO: how do I calculate the centroid coordinates?
    % centroids(iii, :) = 
end