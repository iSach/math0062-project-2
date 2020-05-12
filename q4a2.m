function [H_bounds, B_bounds, S_bounds] = q4a2()
% Calcule les bornes pour chaque cas de chaque organe, en supposant une
% distribution normale.
%
% Sortie :
%   * H_bounds : Vecteur de taille 5 avec les bornes pour chaque cas du
%                coeur.
%   * B_bounds : Vecteur de taille 4 avec les bornes pour chaque cas du
%                cerveau. 
%   * S_bounds : Vecteur de taille 3 avec les bornes pour chaque cas de
%                l'estomac. 

mean_h = [0; -2; -3; -5; -7];
deviation_h = [0.5; 1; 1.5; 2; 4];
mean_b = [0; -5; 0; -10];
deviation_b = [0.5; 2; 3; 5];
mean_s = [0; 0; -3];
deviation_s = [0.5; 0; 1];

normal_z_value = -0.68;

H_bounds = zeros(5, 1);
B_bounds = zeros(4, 1);
S_bounds = zeros(3, 1);

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