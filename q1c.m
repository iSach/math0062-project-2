function [H_givenBS, B_givenHS, S_givenHB] = q1c(HBS, HB, HS, BS)
% Computes the conditional laws for each individual variable.
%
% Input :
%   * HBS : 5x4x3 Matrix of the joint probabilities for (Heart, Brain,
%           Stomach)
%   * HB : Matrix (5x4) for the joint law of (H, B). (From q1b)
%   * HS : Matrix (5x3) for the joint law of (H, S). (From q1b)
%   * BS : Matrix (4x3) for the joint law of (B, S). (From q1b)
%
% Output :
%   % H_givenBS: Matrix (5x4x3): H_givenBS(h,b,s) = P(H = h|B = b,S = s)
%   % B_givenHS: Matrix (4x5x3): B_givenHS(b,h,s) = P(B = b|H = h,S = s)
%   % S_givenHB: Matrix (3x5x4): S_givenHB(s,h,b) = P(S = s|H = h,B = b)
    
% Initialize the 3 vectors.
% Then iterates over the possible values of h, b, and s. We have: 
% P(A | known) = P(A, known) / P(known).
H_givenBS = zeros(5, 4, 3);
B_givenHS = zeros(4, 5, 3);
S_givenHB = zeros(3, 5, 4);
for h = 1:5
    for b = 1:4
        for s = 1:3
            H_givenBS(h, b, s) = HBS(h, b, s) / BS(b, s);
            B_givenHS(b, h, s) = HBS(h, b, s) / HS(h, s);
            S_givenHB(s, h, b) = HBS(h, b, s) / HB(h, b);
        end
    end
end

end