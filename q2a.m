function at_least_one_organ = q2a(HBS)
% Calcule la probabilité qu'au moins un organe soit touché.
%
% Entrée :
%   * HBS : Matrice 5 x 4 x 3 des probas de la loi conjointe
% Sortie :
%   % prob : Probabilité qu'au moins un organe soit touché

at_least_one_organ = 1 - HBS(1,1,1);

end