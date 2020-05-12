function is_adam_verified = q3c2(ER_givenH, H, E_R)
% Checks if the Adam's law (total expectation) is verified.
%
% Input :
%   * H         : Marginal law of H.
%   * ER_givenH : Expectation of R given H. Computable with q3c1.m.
%   * E_R       : Expectation of R, computable with q3b1.m.
%
% Output :
%   * is_adam_verified : 1 if the law is verified, 0 otherwise.

is_adam_verified = abs(sum(ER_givenH .* H) - E_R) < 0.001;

end