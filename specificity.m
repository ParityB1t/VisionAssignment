function s = specificity(result, accurate)
  
  accurateMatrix = read_image('',accurate);

  trueNegatives = CountNegatives(accurateMatrix);

  resultMatrix = read_image('',result);
  
  allNegatives = CountNegatives(resultMatrix);

  s = trueNegatives/allNegatives;
  
