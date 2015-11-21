function m = gauss2d(st_dev, n)
strip = repmat(gauss1d(st_dev, n), 10, 1);
m = strip' * strip;