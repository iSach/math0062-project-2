function [prob_i, prob_ii] = q2b(S_givenHB, HB, S)
% i)  Computes the probability of acid reflux given the heart and the brain
%     are healthy.
% ii) Computes the probability of acid reflux given at least the heart or
%     the brain is not healthy.
%
% Input :
%   * S_givenHB : 3x5x4 Martix of the conditional probabilities of S given
%                 H and B. Computable with q1c.m
%   * HB        : 5x4 Matrix of the joint law of the heart and the brain.
%   * S         : Marginal probabilities of the stomach.
% Output :
%   * prob_i  : Q2B.(i): Probability of acid reflux given
%               the heart and the brain are healthy.
%   * prob_ii : Q2B.(ii): Probability of acid reflux given at least
%               the heart or the brain is not healthy.
%

prob_i = S_givenHB(3, 1, 1);

% Comes from the LOTP. Detailed in the report.
prob_ii = (S(3) - HB(1, 1) * prob_i) / (1 - HB(1,1));

end