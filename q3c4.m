function H_alerting_values = q3c4(HBS, H)
% Computes the values of H alerting the company.
%
% Input :
%   * HBS : 5x4x3 Matrix of the joint probabilities for (Heart, Brain,
%           Stomach).
%   * H: Marginal probabilities for the heart.
%
% Output :
%   * H_alerting_values: Values of the heart random variable that will
%                        alert the company because the probability of
%                        losing 6 points or more is bigger than 50%.

% R_h = g_h(H). Random Variable with the points reduced for each H.
g_h = [0; -2; -3; -5; -7];
% R_b = g_b(B). Random Variable with the points reduced for each B.
g_b = [0; -5; 0; -10];
% R_s = g_s(S). Random Variable with the points reduced for each S.
g_s = [0; 0; -3];

% The alerting number of points.
alerting_value = -6;

H_alerting_values = zeros(5, 1);

% Iterate over all couples of h, b and s and check if the sum of their
% corresponding point losses is less than or equal to the alerting number.
% If yes, add the probability, then compare all the corresponding for a
% same h, if it's over 0.5, the value of h will alert the company.
for h = 1:5
   Rh = g_h(h); 
   
   P = 0;
   for b = 1:4
      Rb = g_b(b); 
      for s = 1:3
          Rs = g_s(s);
          if Rb + Rs + Rh <= alerting_value
             P = P + HBS(h, b, s) / H(h); 
          end
      end
   end
   H_alerting_values(h) = P >= 0.5;
end

end