function filtre_sequentiel(m)

im=imread(m);
se1=strel('disk',1);
se2=strel('disk',2);
se3=strel('disk',3);
se4=strel('disk',4);
se5=strel('disk',5) ;



fas1=imclose(imopen(im,se1),se1);
fas2=imclose(imopen(fas1,se2),se2);
fas3=imclose(imopen(fas2,se3),se3);
fas4=imclose(imopen(fas3,se4),se4);
fas5=imclose(imopen(fas4,se5),se5);


figure 

subplot(1,3,1),imshow(im),title('Image Originale');

subplot(1,3,2),imshow(fas1),title('FAS1');

subplot(1,3,3),imshow(fas5),title('FAS2');


end