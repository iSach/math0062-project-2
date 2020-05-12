function [E, V] = q3b1(E_Rh, E_Rb, E_Rs, V_Rh, V_Rb, V_Rs, HB, HS, BS)
% Calcule les espérances et variances du nombre de points perdus total.
%
% Entrée :
%   * E_Rh, E_Rb, E_Rs : les espérances pour chacun des organes.
%   *
%
% Sortie :
%   * E    : Espérance de la réduction totale.
%   * V    : Variance de la réduction totale.

% g_h(H) = R_h
g_h = [0; -2; -3; -5; -7];
% g_b(S) = R_b
g_b = [0; -5; 0; -10];
% g_s(S) = R_s
g_s = [0; 0; -3];

% Espérance linéaire.
E = E_Rh + E_Rb + E_Rs;

% V = V_h + V_b + V_s + 2CovHB + 2CovHS + 2CovBS
E_HB = 0;
for h = 1:5
   for b = 1:4
       E_HB = E_HB + g_h(h) * g_b(b) * HB(h, b);
   end
end

E_HS = 0;
for h = 1:5
   for s = 1:3
       E_HS = E_HS + g_h(h) * g_s(s) * HS(h, s);
   end
end

E_BS = 0;
for b = 1:4
   for s = 1:3
       E_BS = E_BS + g_b(b) * g_s(s) * BS(b, s);
   end
end

CovHB = E_HB - E_Rh * E_Rb;
CovHS = E_HS - E_Rh * E_Rs;
CovBS = E_BS - E_Rb * E_Rs;

V = V_Rh + V_Rb + V_Rs + 2 * CovHB + 2 * CovHS + 2 * CovBS;

end