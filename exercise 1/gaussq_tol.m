function [int] = gaussq_tol(f,a,b,tol)
% BERECHNET APPROXIMIERTES INTEGRAL
% mit einer fest vorgegeben Toleranz tol wird das approximierte Integral berechnet

% Q1 und Q2 berechnen
Qn = gaussq_n(f,a,b,1);
Qnn = gaussq_n(f,a,b,2);

% k so lange erhöhen, bis Toleranz eingehalten wird
k = 2;
while abs(Qnn-Qn) > tol
    k = k+1 %#ok<NOPRT>
    Qn = Qnn;
    Qnn = gaussq_n(f,a,b,k);
end

int = Qnn;
end

