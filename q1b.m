function [HB, HS, BS] = q1b(HBS)
% Calcule les lois conjointes des 3 paires de la question Q1.(b)
%
% Entrée :
%   * HBS : Matrice 5 x 4 x 3 des probas de la loi conjointe
% Sortie :
%   % HB : Matrice (5x4) pour la loi conjointe de (H, B).
%   % HS : Matrice (5x3) pour la loi conjointe de (H, S).
%   % BS : Matrice (4x3) pour la loi conjointe de (B, S). 
    
    HB = zeros(5, 4);
    % Loi conjointe de (H, B) = (coeur, cerveau)
    for h = 1:5
        for b = 1:4
            HB(h, b) = sum(HBS(h, b, :));
        end
    end
    
    HS = zeros(5, 3);
    % Loi conjointe de (H, S) = (coeur, estomac)
    for h = 1:5
        for s = 1:3
            HS(h, s) = sum(HBS(h, :, s));
        end
    end
    
    BS = zeros(4, 3);
    % Loi conjointe de (B, S) = (cerveau, estomac)
    for b = 1:4
        for s = 1:3
            BS(b, s) = sum(HBS(:, b, s));
        end
    end
end