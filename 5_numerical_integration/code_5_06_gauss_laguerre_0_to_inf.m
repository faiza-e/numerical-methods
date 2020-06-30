%% Code 5-6 | Gauss-Laguerre (0 to inf)
clc; clear
n = 2:6;                            %number of grid points
f = @(x) 1./(x.^2+1);               %function
%Metod__________________________________________________________________
nn = numel(n); I = zeros(1,nn);
for i = 1:nn
    switch n(i)
        case 2
            X = [0.585786, 3.414214];
            S = [0.853554, 0.146447];
        case 3
            X = [0.415775, 2.294280,   6.289945];
            S = [0.711093, 0.278517, 0.103892e-1];
        case 4
            X = [0.322548, 1.745761,    4.536620,    9.395071];
            S = [0.603154, 0.357418, 0.388791e-1, 0.539295e-3];
        case 5
            X = [0.263560, 1.413403,    3.596426,    7.085810,    12.640801];
            S = [0.521756, 0.398667, 0.759424e-1, 0.361175e-2,  0.233670e-4];
        case 6
            X = [0.222847, 1.188932,    2.992736,    5.775144,      9.837467,   15.982874];
            S = [0.458964, 0.417000,    0.113373,  0.103992e-1,  0.261017e-3, 0.898548e-6];
    end
    S = S.*exp(X);
    F = f(X);
    I(i) = S*F(:);
end
%Illustration___________________________________________________________
fprintf('%2s %11s \n--------------\n','n','I');
fprintf('%2d% 12.5g\n',[n; I]); fprintf('--------------\n')