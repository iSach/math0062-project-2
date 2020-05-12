function [HB, HS, BS] = q1b(HBS)
% Computes the pairwise joint laws of (H, B), (H, S) and (B, S).
%
% Input :
%   * HBS : 5x4x3 Matrix of the joint probabilities for (Heart, Brain,
%           Stomach)
% Output :
%   * HB : Matrix (5x4) for the joint law of (H, B).
%   * HS : Matrix (5x3) for the joint law of (H, S).
%   * BS : Matrix (4x3) for the joint law of (B, S). 
    
% Joint law of (H, B) (heart & brain)
HB = zeros(5, 4);
for h = 1:5
    for b = 1:4
        HB(h, b) = sum(HBS(h, b, :));
    end
end

% Joint law of (H, S) = (heart & stomach)
HS = zeros(5, 3);
for h = 1:5
    for s = 1:3
        HS(h, s) = sum(HBS(h, :, s));
    end
end

% Joint law of (B, S) = (brain & stomach)
BS = zeros(4, 3);
for b = 1:4
    for s = 1:3
        BS(b, s) = sum(HBS(:, b, s));
    end
end

end