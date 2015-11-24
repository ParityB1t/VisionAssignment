function m = apply_sobel(img)
global sobelX sobelY;
sx = conv2(img, sobelX, "same");
sy = conv2(img, sobelY, "same");
m = sqrt(sx.*sx + sy.*sy);