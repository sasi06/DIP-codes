##Creating a Ramp image
##sasidhar
##BT18ECE008
pkg load image
m=[0:9];

##Creating a matrix 0 to 9

Z=ones(1,10);
in=m'*Z;
##mutiply transpose of m with row matrix having 10 times intensity
figure(1)
imshow(in,[])
##we first read the image whose operation is to performed
z=imread('download.JPG');
figure(2)
image(z);
title('The Orignal Image');

#conversion of image to rgb to gray

J =rgb2gray(z);
figure(3)
imshow(J);
title('RGB2Grey Image');
##convert image to its matrix form and rotate image
J1=J';
figure(4)
imshow(J1);
##getting the pixel value
pixel_value=z(2,2);
sprintf('The value of the pixel is %d',pixel_value);

rgb=z(2,15,:); ##this commond will return rgb color value of the pixel 2,15
R=rgb(:,:,1); ##to see the value of red color
G=rgb(:,:,2);##to see the value of green color
B=rgb(:,:,3);##to see the value of blue color


## To find the size of image

Size=size(z);

## To determine the details of image

imf=imfinfo('download.JPG'); ## Detail of The photo