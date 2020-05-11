function [prob_i, prob_ii] = q2b(S_givenHB, HB, S)
% Calcule la probabilit� qu'au moins un organe soit touch�.
%
% Entr�e :
%   * S_givenHB : Matrice 3x5x4 des probas de la loi conditionnelle de
%                 S sachant (H, B). Calculable avec q1c.m
% Sortie :
%   % prob_i : Probabilit� d'avoir des reflux gastriques alors que le coeur 
%            et le cerveau sont sains.
%
%

prob_i = S_givenHB(3, 1, 1);

prob_ii = (S(3) - HB(1, 1) * prob_i) / (1 - HB(1,1));

end