function [int] = gaussq_n(f,a,b,n)
% BERECHNET APPROXIMIERTES INTEGRAL
% mit einer fest vorgegeben Anzahl n werden die Stützstellen xi und die Gewichte ?i bestimmt
% und abschließend das approximierte Integral berechnet

% Matrix A erstellen
A = zeros(n,n);
for k = 1:n-1
    A(k,k+1) = k/(sqrt(4*k^2-1));
    A(k+1,k) = A(k,k+1);
end

% A faktorisieren
[V,D] = eig(A);

% xi und wi berechnen
x = ones(1,n)*D;
w = 2*V(1,:).^2;
% Intervall shift
x(1,:) = a+((x(1,:)+1)/2)*(b-a);
w(1,:) = w(1,:)/2*(b-a);

% Funktionswerte berechnen
y = f(x(1,:));

% Summe
s = y*transpose(w);
int = sum(s);
end


