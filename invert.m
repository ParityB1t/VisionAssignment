function invert = invert(img)
  img = ~img;
  img = 1-img;
  invert = (img == 0);
