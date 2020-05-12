function is_adam_verified = q3c2(ER_givenH, H, E_R)
% Renvoie 1 si la loi d'Adam (de l'esp�rance totale) est v�rifi�e.
%
% Entr�e :
%   * H         : Loi marginale de H.
%   * ER_givenH : Valeurs de l'esp�rance conditionnelle de R sachant H.
%   * E_R       : Esp�rance de R, calcul�e avec q3b1.m.
%
% Sortie :
%   * is_adam_verified : 1 si la loi est v�rifi�e, 0 sinon.

is_adam_verified = abs(sum(ER_givenH .* H) - E_R) < 0.001;

end