function [H_givenBS, B_givenHS, S_givenHB] = q1c(HBS, HB, HS, BS)
% Entrée :
%   * HBS : Matrice (5x4x3) des probas de la loi conjointe (H, B, S)
%   * HB : Matrice (5x4) des probas de la loi conjointe (H, B)
%   * HS : Matrice (5x3) des probas de la loi conjointe (H, S)
%   * BS : Matrice (4x3) des probas de la loi conjointe (B, S)
% Sortie :
%   % H_givenBS : Matrice (5x4x3) : H_givenBS(h,b,s) = P(H = h|B = b,S = s)
%   % B_givenHS : Matrice (4x5x3) : B_givenHS(b,h,s) = P(B = b|H = h,S = s)
%   % S_givenHB : Matrice (3x5x4) : S_givenHB(s,h,b) = P(S = s|H = h,B = b)
    
    H_givenBS = zeros(5, 4, 3);
    B_givenHS = zeros(4, 5, 3);
    S_givenHB = zeros(3, 5, 4);
    for h = 1:5
        for b = 1:4
           for s = 1:3
                H_givenBS(h, b, s) = HBS(h, b, s) / BS(b, s);
                B_givenHS(b, h, s) = HBS(h, b, s) / HS(h, s);
                S_givenHB(s, h, b) = HBS(h, b, s) / HB(h, b);
           end
        end
    end
end