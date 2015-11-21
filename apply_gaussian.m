function applied_gaussian = apply_gaussian(green_image ,filter)

  smoothed = conv2(green_image, filter, 'same');
  applied_gaussian = conv2(smoothed, filter', 'same');
