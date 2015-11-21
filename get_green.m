function green = get_green(image)

image_matrix = read_image('',image);
green = image_matrix(:,:,2);
