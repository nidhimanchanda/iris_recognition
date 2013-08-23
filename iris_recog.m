a=imread('C:\Users\savvy\Desktop\eye.jpg');
image(a);
i=rgb2gray(a);

d=double(i)/150;
j=d(1:4:end,1:4:end);

G = fspecial('gaussian',[10 10],30);

Ig = imfilter(j,G,'same');


BW1 = edge(Ig,'prewitt');
BW2 = edge(Ig,'canny');
BW3 = bwareaopen(BW2,65);

J = imcomplement(BW3);
imshow(J);
%figure
%subplot(1,2,1), imshow(BW2)
%subplot(1,2,2), imshow(BW3)
%truesize
%imshow(Ig)


%image = imread('shit.jpg');
%img = im2bw(BW3);
%imshow(img);
