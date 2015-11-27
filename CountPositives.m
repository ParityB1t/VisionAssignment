function p = CountPositives(image)
	  
  [imagex,imagey] = size(image);

  positives = 0;
  
  for n = 1:imagex
	for m = 1:imagey
	  if (image(n,m))
		positives += 1;
	  end
	end
  end

  p = positives;
