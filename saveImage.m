function saveImage = saveImage(image, name)
  show_image(image);
  saveas(gcf, strcat(name,".png"));
  clear image;
