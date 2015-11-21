function m = apply_laplacian(img)
global laplacian;

l = conv2(img, laplacian, "valid");

signs = sign(l);
diffX = diff(signs')';
diffY = diff(signs);

crossingX = diffX != 0;
crossingY = diffY != 0;

m = crossingY;