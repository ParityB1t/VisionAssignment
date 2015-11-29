function r = roc(resulting,accurate)

  accurateMatrix = read_image('',accurate);
  resultMatrix = read_image('',resulting);

  [imageX,imageY] = size(accurateMatrix);
  
  tp = 0;
  fn = 0;
  fp = 0;
  tn = 0;

  for x = 1:imageX
	for y = 1: imageY
	  if (accurateMatrix(x,y) == 1 && resultMatrix(x,y) == 1)
		tp += 1;
	  end
	  if (accurateMatrix(x,y) == 1 && resultMatrix(x,y) == 0)
		fn += 1;
	  end
	  if (accurateMatrix(x,y) == 0 && resultMatrix(x,y) == 1)
		fp += 1;
	  end
	  if (accurateMatrix(x,y) == 0 && resultMatrix(x,y) == 0)
		tn += 1;
	  end
	end
  end

  sensi = tp/(tp+fn);
  speci = tn/(tn+fp);

  r = [sensi,speci];
  
