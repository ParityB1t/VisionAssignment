% generate the ROC values for all our selected algorithms.
% note we still need to update the parameters to match our findings

results = [
  [
    "gaussian -> sobel",
    roc(abs(apply_sobel(apply_gaussian(img, 1, 5)) > 40), img_ideal)
  ];
  [
    "guassian -> roberts",
    roc(abs(apply_roberts(apply_gaussian(img, 3, 5)) > 3), img_ideal)
  ];
]

