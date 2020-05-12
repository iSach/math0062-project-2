function [H, B, S] = q1a(HBS)
% Computes the maginal laws of the three random variables H, B and S.
%
% Input :
%   * HBS : 5x4x3 Matrix of the joint probabilities for (Heart, Brain,
%           Stomach)
% Output :
%   * H : Vector (5x1) for the marginal law of the heart only.
%   * B : Vector (4x1) for the marginal law of the brain only.
%   * S : Vector (3x1) for the marginal law of the stomach only.

% Compute the marginal law for the (H)eart.
H = zeros(5, 1);
for h = 1:5
    H(h) = sum(sum(HBS(h, :, :)));
end

% Compute the marginal law for the (B)rain.
B = zeros(4, 1);
for b = 1:4
    B(b) = sum(sum(HBS(:, b, :)));
end

% Compute the marginal law for the (S)tomach.
S = zeros(3, 1);
for s = 1:3
    S(s) = sum(sum(HBS(:, :, s)));
end

end