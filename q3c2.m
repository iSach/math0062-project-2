function is_adam_verified = q3c2(ER_givenH, H, E_R)
% Renvoie 1 si la loi d'Adam (de l'espérance totale) est vérifiée.
%
% Entrée :
%   * H         : Loi marginale de H.
%   * ER_givenH : Valeurs de l'espérance conditionnelle de R sachant H.
%   * E_R       : Espérance de R, calculée avec q3b1.m.
%
% Sortie :
%   * is_adam_verified : 1 si la loi est vérifiée, 0 sinon.

is_adam_verified = abs(sum(ER_givenH .* H) - E_R) < 0.001;

end