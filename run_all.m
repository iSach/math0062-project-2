%
% Applies subsequently the several scripts to get
% the different numerical answers faster than manually
%

% Load HBS 3D matrix
load('HBS.mat');


% Q1
% a) Marginal Laws
[H, B, S] = q1a(HBS);

% b) Pairwise joint laws
[HB, HS, BS] = q1b(HBS);

% c) Dependent laws.
[H_givenBS, B_givenHS, S_givenHB] = q1c(HBS, HB, HS, BS);


% Q2
% a) Probability at least one organ is not healthy
probability_at_least_one_organ = q2a(HBS);

% b)
% prob_q2bi = acid reflux given the heart and the brain are healthy.
% prob_q2bii =  acid reflux given at least heart or brain is not healthy.
[prob_q2bi, prob_q2bii] = q2b(S_givenHB, HB, S);

% c)
% prob_q2c = stroke and a healthy stomach, given a high blood pressure (H).
prob_q2c = q2c(H_givenBS, BS, H);


% Q3
% a) Expected value and variance, for each organ.
[E_Rh, V_Rh, E_Rb, V_Rb, E_Rs, V_Rs] = q3a(H, B, S);

% b) i. Expected value and Variance of total reduction of points R.
[E_R, V_R] = q3b1(E_Rh, E_Rb, E_Rs, V_Rh, V_Rb, V_Rs, HB, HS, BS);

% c) i. Conditional expected value and mean
[E_R_givenH, V_R_givenH] = q3c1(HB, HS, BS, H_givenBS, H);
% c) ii. Adam Law
is_adam_verified = q3c2(E_R_givenH, H, E_R);
% c) iii. Eve Law
is_eve_verified = q3c3(V_R_givenH, E_R_givenH, H, V_R);
% c) iv. Alerting values of H.
H_alerting_values = q3c4(HBS, H);


% Q4
% a) i. Bounds supposing an unknown law
[H_bounds, B_bounds, S_bounds] = q4a1();
% a) ii. Supposing a normal law
[H_bounds_normal, B_bounds_normal, S_bounds_normal] = q4a2();