function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
numSamples = size(X,1);
%X_norm = [ones(numSamples, 1), X_norm]; % Add a column of ones to x

mu = zeros(1, size(X_norm, 2));
sigma = zeros(1, size(X_norm, 2));
% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

#numFeatures = size(X_norm,2);

%for i = 1:numFeatures
%  mu(1,i) = mean(X_norm(:,i));
%  sigma(1,i) = std(X_norm(:,i));
%  X_norm(:,i) = (X_norm(:,i) - mu(1,i))/sigma(1,i)
%end
mu = mean(X_norm);
sigma=std(X_norm);
X_norm = (X_norm - mean(X_norm)) ./ (std(X_norm));

% ============================================================
end
