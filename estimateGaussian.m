% estimates the mean and variance of the training set 


function [mu sigma2] = estimateGaussian(X)
%ESTIMATEGAUSSIAN This function estimates the parameters of a 
%Gaussian distribution using the data in X
%   [mu sigma2] = estimateGaussian(X), 
%   The input X is the dataset with each n-dimensional data point in one row
%   The output is an n-dimensional vector mu, the mean of the data set
%   and the variances sigma^2, an n x 1 vector
% 

[m, n] = size(X);

mu = zeros(n, 1);
sigma2 = zeros(n, 1);

%		Compute the mean of the data and the variances
%               In particular, mu(i) should contain the mean of
%               the data for the i-th feature and sigma2(i)
%               should contain variance of the i-th feature.
%


sumX=sum(X);
mu=(1/m)*(sumX);

for i=1:n
	col=X(:,i)-mu(i);
	sq=col .^ 2;
	sigma2(i)=(1/m)*sum(sq);







% =============================================================


end
