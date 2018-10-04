function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% Variable to be returned
J = 0;

h = X*theta;
error = h - y;
error_sq = error.^2;
q = sum(error_sq);
J = 1/(2*m) * q;

end
