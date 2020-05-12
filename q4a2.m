function [H_bounds, B_bounds, S_bounds] = q4a2()
% Computes the bounds of each case of each organ, considering the
% distribution is a normal one.
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

% Z value corresponding to a probability of 0.25.
normal_z_value = -0.68;

% initialize the vectors.
H_bounds = zeros(5, 1);
B_bounds = zeros(4, 1);
S_bounds = zeros(3, 1);

% Calculation details are in the report.
for h = 1:5
   H_bounds(h) = normal_z_value * deviation_h(h) + mean_h(h);
end

for b = 1:4
   B_bounds(b) = normal_z_value * deviation_b(b) + mean_b(b);
end

for s = 1:3
   S_bounds(s) = normal_z_value * deviation_s(s) + mean_s(s);
end

end