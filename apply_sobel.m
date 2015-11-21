function m = apply_sobel(img)
sx = conv2(img, sobelX, "valid");
sy = conv2(img, sobelY, "valid");
m = sqrt(sx.*sx + sy.*sy);