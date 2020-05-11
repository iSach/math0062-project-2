function probability = q2c(H_givenBS, BS, H)
% Calcule la probabilité qu'au moins un organe soit touché.
%
% Entrée :
%   * H_givenBS : Matrice 5x4x3 des probas de la loi conditionnelle de
%                 H sachant (B, S). Calculable avec q1c.m
%   * BS        : Matrice 5x4 des probas de la loi jointe de B et S.
%   * H         : Probabilités de la loi marginale de H.
% Sortie :
%   * probability : Probabilité de subir un AVC et d'avoir un estomac sain
%                   en ayant son coeur en hypertension
%

probability = H_givenBS(2, 4, 1) * (BS(4, 1) / H(2));

end