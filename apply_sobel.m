function m = apply_sobel(img)
global sobelX sobelY;
sx = conv2(img, sobelX, "valid");
sy = conv2(img, sobelY, "valid");
m = sqrt(sx.*sx + sy.*sy);