function [ER_givenH, VR_givenH] = q3c1(HB, HS, BS, H_givenBS, H)
% Calculates the mean and variance of the total points lost R given H.
%
% Input:
%   * HB, HS, BS : Joint probabilities.
%   * H_givenBS  : Conditional probabilities of H given B and S.
%   * H          : Marginal law of H.
%

% R_h = g_h(H). Random Variable with the points reduced for each H.
g_h = [0; -2; -3; -5; -7];
% R_b = g_b(B). Random Variable with the points reduced for each B.
g_b = [0; -5; 0; -10];
% R_s = g_s(S). Random Variable with the points reduced for each S.
g_s = [0; 0; -3];

% Initialize the vectors.
ER_givenH = zeros(5, 1);
VR_givenH = zeros(5, 1);

% For each value h for the heart, calculate the corresponding value of
% R given H = h.
for h = 1:5
   % Expected value
   gh = g_h(h);
   E_RB_givenH = 0;
   for b = 1:4
       E_RB_givenH = E_RB_givenH + g_b(b) * HB(h, b) / H(h);
   end
   E_RS_givenH = 0;
   for s = 1:3
       E_RS_givenH = E_RS_givenH + g_s(s) * HS(h, s) / H(h);
   end
   ER_givenH(h) = gh + E_RB_givenH + E_RS_givenH;
   
   % Variance
   E_Rb2_givenH = 0;
   for b = 1:4
       E_Rb2_givenH = E_Rb2_givenH + (g_b(b))^2 * HB(h, b) / H(h);
   end
   E_Rs2_givenH = 0;
   for s = 1:3
       E_Rs2_givenH = E_Rs2_givenH + (g_s(s))^2 * HS(h, s) / H(h);
   end
   E_RbRs_givenH = 0;
   for b = 1:4
       for s = 1:3
           E_RbRs_givenH = E_RbRs_givenH + g_b(b) * g_s(s) * ...
               H_givenBS(h, b, s) * BS(b, s) / H(h);
       end
   end
   VR_givenH(h) = E_Rb2_givenH - E_RB_givenH^2 ...
             + E_Rs2_givenH - E_RS_givenH^2 ...
             + 2 * (E_RbRs_givenH - E_RB_givenH * E_RS_givenH);
end

end