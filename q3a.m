function [E_Rh, V_Rh, E_Rb, V_Rb, E_Rs, V_Rs] = q3a(H, B, S)
% Calcule les espérances et variances des points perdus pour les 3 organes.
%
% Entrée :
%   * H, B, S : les probabilités des lois marginales.
%
% Sortie :
%   * E_Rh    : Espérance des points perdus pour le coeur.
%   * V_Rh    : Variance des points perdus pour le coeur.
%   * E_Rb    : Espérance des points perdus pour le cerveau.
%   * V_Rb    : Variance des points perdus pour le cerveau.
%   * E_Rs    : Espérance des points perdus pour l'estomac.
%   * V_Rs    : Variance des points perdus pour l'estomac.

% g_h(H)
g_h = [0; -2; -3; -5; -7];
% g_b(S)
g_b = [0; -5; 0; -10];
% g_s(S)
g_s = [0; 0; -3];

% Espérances
E_Rh = 0; % E(R_h)
E_Rh2 = 0; % E(R_h^2)
for i = 1:5
   E_Rh = E_Rh + g_h(i) * H(i);
   E_Rh2 = E_Rh2 + (g_h(i))^2 * H(i);
end
E_Rb = 0; % E(R_b)
E_Rb2 = 0; % E(R_b^2)
for i = 1:4
   E_Rb = E_Rb + g_b(i) * B(i);
   E_Rb2 = E_Rb2 + (g_b(i))^2 * B(i);
end
E_Rs = 0; % E(R_s)
E_Rs2 = 0; % E(R_s^2)
for i = 1:3
   E_Rs = E_Rs + g_s(i) * S(i);
   E_Rs2 = E_Rs2 + (g_s(i))^2 * S(i);
end

% Var(X) = E(X^2) - (E(X))^2
V_Rh = E_Rh2 - (E_Rh)^2;
V_Rb = E_Rb2 - (E_Rb)^2;
V_Rs = E_Rs2 - (E_Rs)^2;

end