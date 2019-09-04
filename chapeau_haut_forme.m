function chapeau_haut_forme(m)

   I=imread(m);
   figure,subplot(1,3,1),imshow(I),title('Image Originale');
   es=strel('line',9,0);
   es2=strel('line',9,90);
   
   %Dilation
   res1 = imopen(I ,es);
   res2=imopen(res1,es2);
   
   subplot(1,3,2),imshow(imsubtract(I,res1)),title('Element structurant 9*9 de degre 0*');
   
   subplot(1,3,3),imshow(imsubtract(I,res2)),title('Element structurant 9*9 de degré 90');
   

end

   