function r = roc(result,accurate)

  [imageX,imageY] = size(accurate);
  
  tp = 0;
  fn = 0;
  fp = 0;
  tn = 0;

  for x = 1:imageX
	for y = 1: imageY
	  if (accurate(x,y) == 1 && result(x,y) == 1)
      tp += 1;
	  elseif (accurate(x,y) == 1 && result(x,y) == 0)
		  fn += 1;
	  elseif (accurate(x,y) == 0 && result(x,y) == 1)
		  fp += 1;
	  elseif (accurate(x,y) == 0 && result(x,y) == 0)
		  tn += 1;
	  end
	end
  end
  
  sensi = tp/(tp+fn);
  speci = tn/(tn+fp);

  r = [sensi,speci];
  
