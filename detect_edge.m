function detected = detect_edge(image, smooth_filter, edge_filter)

image_matrix = read_image('',image);
grey_image = mean(image_matrix,3);

smoothed = conv2(grey_image, smooth_filter, 'same');
smoothed = conv2(smoothed, smooth_filter', 'same');

detected = conv2(smoothed, edge_filter, 'same');
