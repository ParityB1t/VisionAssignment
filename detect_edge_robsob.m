function detected = detect_edge_robsob(smoothed_image, edge_filterX, edge_filterY)


  detectedX = conv2(smoothed_image, edge_filterX, 'same');
  detectedY = conv2(smoothed_image, edge_filterY, 'same');

  detected = magnitude(detectedX, detectedY);

