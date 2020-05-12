function [H_bounds, B_bounds, S_bounds] = q4a1()
% Computes the bounds of each case of each organ, without knowing the
% distribution. 
%
% Output :
%   * H_bounds : 5x1 Matrix with the heart bounds.
%   * B_bounds : 4x1 Matrix with the brain bounds.
%   * S_bounds : 3x1 Matrix with the stomach bounds.

% Means and standard deviations.
mean_h = [0; -2; -3; -5; -7];
deviation_h = [0.5; 1; 1.5; 2; 4];
mean_b = [0; -5; 0; -10];
deviation_b = [0.5; 2; 3; 5];
mean_s = [0; 0; -3];
deviation_s = [0.5; 0; 1];

% Probability bound.
prob_bound = 0.25;

% Initialize the vectors.
H_bounds = zeros(5, 1);
B_bounds = zeros(4, 1);
S_bounds = zeros(3, 1);

% Calculate the values. The calculation is detailed in the report.
for h = 1:5
   H_bounds(h) = mean_h(h) - sqrt((deviation_h(h))^2 / prob_bound);
end

for b = 1:4
   B_bounds(b) = mean_b(b) - sqrt((deviation_b(b))^2 / prob_bound);
end

for s = 1:3
   S_bounds(s) = mean_s(s) - sqrt((deviation_s(s))^2 / prob_bound);
end

end