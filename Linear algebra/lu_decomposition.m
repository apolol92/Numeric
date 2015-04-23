function [ x ] = lu_decomposition( A, b)
% Solves linear equation systems
[L,U] = lu(A)
% calc y (L*y=b)
y = L \ b
%calc x (R*x=y)
x = U \ y
end

