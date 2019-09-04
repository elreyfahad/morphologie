function op_base_morphologique(im)
   I=imread(im);
   figure,subplot(2,3,1),imshow(I),title('Image Originale');
   es=strel('square',5);
   %Dilation
   dilate = imdilate(I, es);
   subplot(2,3,2),imshow(dilate),title('Image Dilaté');
   
   %Erosion
   erosion=imerode(I,es);
   subplot(2,3,3),imshow(erosion),title('Image Erodé');
   
   
   %Ouverture Morphologique
   ouverture=imopen(I,es);
   subplot(2,3,4),imshow(ouverture),title('Ouverture Morphologique');
   
  
   %Fermeture Morphologique
   fermeture=imclose(I,es);
   subplot(2,3,5),imshow(fermeture),title('Fermeture Morphologique');
  
  
end