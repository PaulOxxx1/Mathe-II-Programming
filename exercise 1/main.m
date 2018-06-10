% BERECHNET VERSCHIEDENE INTEGRAL
% Toleranz
tol = 10^(-10);

% Stützstellen
n = 200;

% Definition von f a b
syms f(x) a b;
f(x) = x^10;
a = -1;
b = 1;

% Integration
int = double(gaussq_tol(f,a,b,tol)) %#ok<*NASGU,NOPTS>
n %#ok<NOPTS>
int = double(gaussq_n(f,a,b,n)) %#ok<NOPTS>

pause

% Definition von f a b
f(x) = sin(x);
a = 0;
b = pi;

% Integration
int = double(gaussq_tol(f,a,b,tol)) %#ok<*NASGU,NOPTS>
n %#ok<NOPTS>
int = double(gaussq_n(f,a,b,n)) %#ok<NOPTS>

pause

% Definition von f a b
syms f(x) a b;
f(x) = 1/(10^(-2)+x^2);
a = -2;
b = 3;

% Integration
int = double(gaussq_tol(f,a,b,tol)) %#ok<*NASGU,NOPTS>
n %#ok<NOPTS>
int = double(gaussq_n(f,a,b,n)) %#ok<NOPTS>