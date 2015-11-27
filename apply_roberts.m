function r = apply_roberts(img)
  global robertsA robertsB;
  rx = conv2(img, robertsB, "same");
  ry = conv2(img, robertsA, "same");
  r = sqrt(rx.*rx + ry.*ry);
