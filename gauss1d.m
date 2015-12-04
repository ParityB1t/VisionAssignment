function m = gauss1d(st_dev, n)
% m = N(0, st_dev, -3:(6/(n-1)):3);
m = N(0, st_dev, -n/2:1:n/2);