clearvars; close all; clc;

lena1_bmp = imread('lena1.bmp');
lena2_bmp = imread('lena2.bmp');
lena3_bmp = imread('lena3.bmp');
lena4_bmp = imread('lena4.bmp');

figure;
subplot(4, 2, 1); imshow(lena1_bmp); 
subplot(4, 2, 2); imhist(lena1_bmp, 256);
subplot(4, 2, 3); imshow(lena2_bmp);
subplot(4, 2, 4); imhist(lena2_bmp, 256);
subplot(4, 2, 5); imshow(lena3_bmp);
subplot(4, 2, 6); imhist(lena3_bmp, 256);
subplot(4, 2, 7); imshow(lena4_bmp);
subplot(4, 2, 8); imhist(lena4_bmp, 256);

hist1_bmp = imread('hist1.bmp');
figure;
subplot(1, 2, 1); imshow(hist1_bmp);
subplot(1, 2, 2); imhist(hist1_bmp);

hist1_bmp_adjust = imadjust(hist1_bmp);
figure;
subplot(1, 3, 1); imshow(hist1_bmp);
subplot(1, 3, 2); imshow(hist1_bmp_adjust);
subplot(1, 3, 3); imhist(hist1_bmp_adjust);

[H, x] = imhist(hist1_bmp_adjust);
C = cumsum(H);
k = max(C)/max(H);
C2 = C./k;
figure;
plot(x, H); 
hold on;
plot(x, C2);



LUT = uint8(C2 .* 256 / max(C2));
[H2 x2] = imhist(intlut(hist1_bmp,LUT),256);
C22 = cumsum(H2)/(max(cumsum(H2))/max(H2));
figure;
subplot(5,1,1); imshow(intlut(hist1_bmp,LUT));
subplot(5,1,2); plot(x2, H2);
subplot(5,1,3); plot(x2, C22);