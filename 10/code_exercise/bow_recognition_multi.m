function acc = bow_recognition_multi(histograms,labels,vBoWPos,vBoWNeg, classifierFunction)
  
   image_count = size(histograms,1);
   pos = 0;
   neg = 0;
    for i = 1:image_count
		% classify each histogram
        l = classifierFunction(histograms(i,:),vBoWPos,vBoWNeg);

        % compare the result to the respective label
        if (l == labels(i)) % positive
            pos = pos + 1;
        else %negative
            neg = neg + 1;
        end
    end
    acc = (pos/image_count)*100;
    disp(['Percentage of correctly classified images:' num2str(acc)]);
   
end
  
