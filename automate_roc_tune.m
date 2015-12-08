results = [];

ideal_cropped = img_ideal(200:400, 200:400);

for st_dev=1:3
  for size=3:7
    for threshold=10:10:80
      results = [results; 
      [st_dev, size, threshold, roc(abs(apply_sobel(apply_gaussian(img, st_dev, size)) > threshold)(200:400, 200:400), ideal_cropped)]];
    end
  end
end

results_summed = (results(:,4).*results(:,5));

results(find(results_summed == max(results_summed)),:) % output the best one