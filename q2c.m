function probability = q2c(H_givenBS, BS, H)
% Computes the probability of a stroke and a healthy stomach, given a 
% high blood pressure for the heart.
%
% Input :
%   * H_givenBS : 5x4x3 Martix of the conditional probabilities of H given
%                 B and S. Computable with q1c.m
%   * BS        : 4x3 Matrix of the joint law of the brain and the stomach.
%   * H         : Marginal law of the heart.
% Output :
%   * probability : Probability of a stroke and a healthy stomach, given a 
%                   high blood pressure for the heart.
%

% Uses the Bayes Theorem.
% P(A | B) = P (B | A) * P(A) / P(B).
probability = H_givenBS(2, 4, 1) * (BS(4, 1) / H(2));

end