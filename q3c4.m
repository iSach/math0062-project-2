function H_triggering = q3c4(HBS, H)
% Calcule les valeurs de H qui alertent.
%
% Entrée :
%   * BS
%
% Sortie :
%   * H_triggering : Vecteur avec les valeurs de H qui alertent le
%                    dispositif.

% g_h(H) = R_h
g_h = [0; -2; -3; -5; -7];
% g_b(S) = R_b
g_b = [0; -5; 0; -10];
% g_s(S) = R_s
g_s = [0; 0; -3];

bound = -6;

H_triggering = zeros(5, 1);

for h = 1:5
   Rh = g_h(h); 
   
   P = 0;
   for b = 1:4
      Rb = g_b(b); 
      for s = 1:3
          Rs = g_s(s);
          if Rb + Rs + Rh <= bound
             P = P + HBS(h, b, s) / H(h); 
          end
      end
   end
   disp(P)
   H_triggering(h) = P >= 0.5;
end

end