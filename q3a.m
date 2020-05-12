function [E_Rh, V_Rh, E_Rb, V_Rb, E_Rs, V_Rs] = q3a(H, B, S)
% Calculates the mean and variance of each of the new random variables.
%
% Input :
%   * H, B, S : Marginal laws probabilities.
%
% Output :
%   * E_Rh    : Expected value of the decreased points for the heart.
%   * V_Rh    : Variance of the decreased points for the heart.
%   * E_Rb    : Expected value of the decreased points for the brain.
%   * V_Rb    : Variance of the decreased points for the brain.
%   * E_Rs    : Expected value of the decreased points for the stomach.
%   * V_Rs    : Variance of the decreased points for the stomach.

% R_h = g_h(H). Random Variable with the points reduced for each H.
g_h = [0; -2; -3; -5; -7];
% R_b = g_b(B). Random Variable with the points reduced for each B.
g_b = [0; -5; 0; -10];
% R_s = g_s(S). Random Variable with the points reduced for each S.
g_s = [0; 0; -3];

% Expected Values.
% E_Rh means E(R_h) and E_Rh2 means E(R_h^2), and so on.
E_Rh = 0;
E_Rh2 = 0;
for i = 1:5
   E_Rh = E_Rh + g_h(i) * H(i);
   E_Rh2 = E_Rh2 + (g_h(i))^2 * H(i);
end
E_Rb = 0;
E_Rb2 = 0;
for i = 1:4
   E_Rb = E_Rb + g_b(i) * B(i);
   E_Rb2 = E_Rb2 + (g_b(i))^2 * B(i);
end
E_Rs = 0;
E_Rs2 = 0;
for i = 1:3
   E_Rs = E_Rs + g_s(i) * S(i);
   E_Rs2 = E_Rs2 + (g_s(i))^2 * S(i);
end

% Variances.
% Var(X) = E(X^2) - (E(X))^2
V_Rh = E_Rh2 - (E_Rh)^2;
V_Rb = E_Rb2 - (E_Rb)^2;
V_Rs = E_Rs2 - (E_Rs)^2;

end