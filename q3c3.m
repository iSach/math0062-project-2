function is_eve_verified = q3c3(VR_givenH, ER_givenH, H, V_R)
% Renvoie 1 si la loi d'Eve (de la variance totale) est v�rifi�e.
%
% Entr�e :
%   * H         : Loi marginale de H.
%   * VR_givenH : Valeurs de la variance conditionnelle de R sachant H.
%   * ER_givenH : Valeurs de l'esp�rance conditionnelle de R sachant H.
%   * V_R       : Variance de R, calcul�e avec q3b1.m.
%
% Sortie :
%   * is_eve_verified : 1 si la loi est v�rifi�e, 0 sinon.

law = sum(VR_givenH .* H) + var(ER_givenH, H);
known = V_R;

is_eve_verified = abs(known - law) < 0.001;

end