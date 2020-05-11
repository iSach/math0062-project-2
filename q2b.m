function [prob_i, prob_ii] = q2b(S_givenHB, HB, S)
% Calcule la probabilité d'avoir des reflux gastriques alors que le coeur 
%            et le cerveau sont sains.
%
% Entrée :
%   * S_givenHB : Matrice 3x5x4 des probas de la loi conditionnelle de
%                 S sachant (H, B). Calculable avec q1c.m
%   * HB        : Matrice 5x4 des probas de la loi jointe de H et B.
%   * S         : Probabilités de la loi marginale de S.
% Sortie :
%   % prob_i : Probabilité d'avoir des reflux gastriques alors que le coeur 
%            et le cerveau sont sains.
%

prob_i = S_givenHB(3, 1, 1);

prob_ii = (S(3) - HB(1, 1) * prob_i) / (1 - HB(1,1));

end