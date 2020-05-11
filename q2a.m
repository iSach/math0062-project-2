function at_least_one_organ = q2a(HBS)
% Calcule la probabilit� qu'au moins un organe soit touch�.
%
% Entr�e :
%   * HBS : Matrice 5 x 4 x 3 des probas de la loi conjointe
% Sortie :
%   % prob : Probabilit� qu'au moins un organe soit touch�

at_least_one_organ = 1 - HBS(1,1,1);

end