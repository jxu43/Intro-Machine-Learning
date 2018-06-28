function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%
X_size = size(X, 1);

for x_index = 1: X_size
	distance_to_centroids = zeros(1, K);
	for c_index = 1: K
		distance_to_centroids(c_index) = sqrt(sum((X(x_index,:) - centroids(c_index,:)) .^ 2));
	end
	[shortest_distance, shortest_distance_index] = min(distance_to_centroids);
	idx(x_index) = shortest_distance_index;
end
% =============================================================

end

