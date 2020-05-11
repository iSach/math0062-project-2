function probability = q2c(H_givenBS, BS, H)
% Calcule la probabilit� qu'au moins un organe soit touch�.
%
% Entr�e :
%   * H_givenBS : Matrice 5x4x3 des probas de la loi conditionnelle de
%                 H sachant (B, S). Calculable avec q1c.m
%   * BS        : Matrice 5x4 des probas de la loi jointe de B et S.
%   * H         : Probabilit�s de la loi marginale de H.
% Sortie :
%   % probability : Probabilit� d'avoir des reflux gastriques alors que le coeur 
%            et le cerveau sont sains.
%

probability = H_givenBS(2, 4, 1) * (BS(4, 1) / H(2));

end