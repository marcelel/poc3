clc;
close all;
clearvars;

Jezioro_JPG = imread('jezioro.jpg');
figure;
imshow(Jezioro_JPG); title('Jezioro');

R = Jezioro_JPG(:,:,1);
G = Jezioro_JPG(:,:,2);
B = Jezioro_JPG(:,:,3);
figure;
subplot(2,3,1); imshow(R); title('Jezioro R');
subplot(2,3,2); imshow(G); title('Jezioro G');
subplot(2,3,3); imshow(B); title('Jezioro B');
subplot(2,3,4); imhist(R); title('Histogram Jezioro R');
subplot(2,3,5); imhist(G); title('Histogram Jezioro G');
subplot(2,3,6); imhist(B); title('Histogram Jezioro B');

Jezioro_JPG_EQ = Jezioro_JPG;
Jezioro_JPG_EQ(:,:,1) = histeq(R, 256);
Jezioro_JPG_EQ(:,:,2) = histeq(G, 256);
Jezioro_JPG_EQ(:,:,3) = histeq(B, 256);
figure;
imshow(Jezioro_JPG_EQ);

Jezioro_HSV = rgb2hsv(Jezioro_JPG);
H = Jezioro_HSV(:,:,1);
S = Jezioro_HSV(:,:,2);
V = Jezioro_HSV(:,:,3);
figure;
subplot(1,4,1); imshow(Jezioro_HSV); title('Jezioro HSV');
subplot(1,4,2); imshow(H); title('Jezioro H');
subplot(1,4,3); imshow(S); title('Jezioro S');
subplot(1,4,4); imshow(V); title('Jezioro V');

Img_Jezioro_HSV_EQ = Jezioro_HSV;
Img_Jezioro_HSV_EQ(:,:,3) = histeq(V, 256);
Img_Jezioro_HSV_EQ_RGB = hsv2rgb(Img_Jezioro_HSV_EQ);
figure;
subplot(2,4,1); imshow(Jezioro_JPG); title('Jezioro RGB');
subplot(2,4,2); imshow(R); title('Jezioro R');
subplot(2,4,3); imshow(G); title('Jezioro G');
subplot(2,4,4); imshow(B); title('Jezioro B');
subplot(2,4,5); imshow(Img_Jezioro_HSV_EQ_RGB); title('Jezioro HSV2RGB');
subplot(2,4,6); imshow(Img_Jezioro_HSV_EQ_RGB(:,:,1)); title('Jezioro HSV2RGB R');
subplot(2,4,7); imshow(Img_Jezioro_HSV_EQ_RGB(:,:,2)); title('Jezioro HSV2RGB G');
subplot(2,4,8); imshow(Img_Jezioro_HSV_EQ_RGB(:,:,3)); title('Jezioro HSV2RGB B');