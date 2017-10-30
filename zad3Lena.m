clc;
close all;
clearvars;

Img_Lena_RGB = imread('lenaRGB.bmp');
figure;
imshow(Img_Lena_RGB); title('Lena RGB');

R = Img_Lena_RGB(:,:,1);
G = Img_Lena_RGB(:,:,2);
B = Img_Lena_RGB(:,:,3);
figure;
subplot(2,3,1); imshow(R); title('Lena R');
subplot(2,3,2); imshow(G); title('Lena G');
subplot(2,3,3); imshow(B); title('Lena B');
subplot(2,3,4); imhist(R); title('Histogram Lena R');
subplot(2,3,5); imhist(G); title('Histogram Lena G');
subplot(2,3,6); imhist(B); title('Histogram Lena B');

Img_Lena_RGB_EQ = Img_Lena_RGB;
Img_Lena_RGB_EQ(:,:,1) = histeq(R, 256);
Img_Lena_RGB_EQ(:,:,2) = histeq(G, 256);
Img_Lena_RGB_EQ(:,:,3) = histeq(B, 256);
figure;
imshow(Img_Lena_RGB_EQ);

Img_Lena_HSV = rgb2hsv(Img_Lena_RGB);
H = Img_Lena_HSV(:,:,1);
S = Img_Lena_HSV(:,:,2);
V = Img_Lena_HSV(:,:,3);
figure;
subplot(1,4,1); imshow(Img_Lena_HSV); title('Lena HSV');
subplot(1,4,2); imshow(H); title('Lena H');
subplot(1,4,3); imshow(S); title('Lena S');
subplot(1,4,4); imshow(V); title('Lena V');

Img_Lena_HSV_EQ = Img_Lena_HSV;
Img_Lena_HSV_EQ(:,:,3) = histeq(V, 256);
Img_Lena_HSV_EQ_RGB = hsv2rgb(Img_Lena_HSV_EQ);
figure;
subplot(2,4,1); imshow(Img_Lena_RGB); title('Lena RGB');
subplot(2,4,2); imshow(R); title('Lena R');
subplot(2,4,3); imshow(G); title('Lena G');
subplot(2,4,4); imshow(B); title('Lena B');
subplot(2,4,5); imshow(Img_Lena_HSV_EQ_RGB); title('Lena HSV2RGB');
subplot(2,4,6); imshow(Img_Lena_HSV_EQ_RGB(:,:,1)); title('Lena HSV2RGB R');
subplot(2,4,7); imshow(Img_Lena_HSV_EQ_RGB(:,:,2)); title('Lena HSV2RGB G');
subplot(2,4,8); imshow(Img_Lena_HSV_EQ_RGB(:,:,3)); title('Lena HSV2RGB B');