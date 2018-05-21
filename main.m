% BERECHNET APPROXIMIERTES INTEGRAL
% Definition von f a b
syms f(x) a b;
f(x) = 1/(10^(-2)+x^2);
a = -2;
b = 3;

% Stützstellen
n = 200;

% Toleranz
tol = 10^(-10);

% Integration
int = double(gaussq_tol(f,a,b,tol)) %#ok<NOPTS>