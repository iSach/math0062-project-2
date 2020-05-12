function is_eve_verified = q3c3(VR_givenH, ER_givenH, H, V_R)
% Checks if the Eve's law (total variance) is verified.
%
% Input :
%   * H         : Marginal law of H.
%   * ER_givenH : Expectation of R given H. Computable with q3c1.m.
%   * VR_givenH : Variance of R given H. Computable with q3c1.m.
%   * V_R       : Variance of R, computable with q3b1.m.
%
% Output :
%   * is_adam_verified : 1 if the law is verified, 0 otherwise.

% Value calculated with the law.
value_with_law = sum(VR_givenH .* H) + var(ER_givenH, H);
% Known value to compare.
value_to_check = V_R;

is_eve_verified = abs(value_to_check - value_with_law) < 0.001;

end