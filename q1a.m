function [H, B, S] = q1a(HBS)
% Entrée :
%   * HBS : Matrice 5 x 4 x 3 des probas de la loi conjointe
% Sortie :
%   % H_marginal : Vecteur colonne (5x1) pour la loi marginale de H.
%   % B_marginal : Vecteur colonne (4x1) pour la loi marginale de B.
%   % S_marginal : Vecteur colonne (3x1) pour la loi marginale de S.  
    
    H = zeros(5, 1);
    % Marginale de H (coeur)
    for h = 1:5
        H(h) = sum(sum(HBS(h, :, :)));
    end
    
    B = zeros(4, 1);
    % Marginale de B (cerveau)
    for b = 1:4
        B(b) = sum(sum(HBS(:, b, :)));
    end
    
    S = zeros(3, 1);
    % Marginale de S (estomac)
    for s = 1:3
        S(s) = sum(sum(HBS(:, :, s)));
    end
end