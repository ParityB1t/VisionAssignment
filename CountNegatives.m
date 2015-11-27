function n = CountNegatives(image)
	  
  [imagex,imagey] = size(image);

  negatives = 0;
  
  for n = 1:imagex
	for m = 1:imagey
	  if (!image(n,m))
		negatives += 1;
	  end
	end
  end

  n = negatives;
