function s = sensitivity(result, accurate)
  
  accurateMatrix = read_image('',accurate);

  truePositives = CountPositives(accurateMatrix);

  resultMatrix = read_image('',result);
  
  allPositives = CountPositives(resultMatrix);

  s = truePositives/allPositives;
