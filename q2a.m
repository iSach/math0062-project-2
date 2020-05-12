function probability_at_least_one_organ = q2a(HBS)
% Computes the probability that at least one organ is hit.
%
% Input :
%   * HBS : 5x4x3 Matrix of the joint probabilities for (Heart, Brain,
%           Stomach)
% Output :
%   * probability_at_least_one_organ : Probability that at least one organ
%                                      is hit.

probability_at_least_one_organ = 1 - HBS(1,1,1);

end