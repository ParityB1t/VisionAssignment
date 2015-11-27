function m = apply_gaussian(image, st_dev, size)
g = gauss1d(st_dev, size);
m = conv2(conv2(image, g', "same"), g, "same");

