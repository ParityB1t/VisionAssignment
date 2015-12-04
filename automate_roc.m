results = [];

for st_dev=1:3
  for size=3:7
    for threshold=10:10:50
    results = [results;
      [st_dev,
       size,
       threshold,
       roc(abs(apply_sobel(apply_gaussian(img, st_dev, size)) > 40), img_ideal)
      ]
    ];
  end
end
