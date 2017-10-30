clearvars; close all; clc;

lena1_bmp = imread('lena1.bmp');
lena2_bmp = imread('lena2.bmp');
lena3_bmp = imread('lena3.bmp');
lena4_bmp = imread('lena4.bmp');

figure(1);
subplot(4, 2, 1); imshow(lena1_bmp); 
subplot(4, 2, 2); imhist(lena1_bmp, 256);
subplot(4, 2, 3); imshow(lena2_bmp);
subplot(4, 2, 4); imhist(lena2_bmp, 256);
subplot(4, 2, 5); imshow(lena3_bmp);
subplot(4, 2, 6); imhist(lena3_bmp, 256);
subplot(4, 2, 7); imshow(lena4_bmp);
subplot(4, 2, 8); imhist(lena4_bmp, 256);

hist1_bmp = imread('hist1.bmp');
figure(2);
subplot(1, 2, 1); imshow(hist1_bmp);
subplot(1, 2, 2); imhist(hist1_bmp);

hist1_bmp_adjust = imadjust(hist1_bmp);
figure(3);
subplot(2, 2, 1); imshow(hist1_bmp);
subplot(2, 2, 2); imhist(hist1_bmp);
subplot(2, 2, 3); imshow(hist1_bmp_adjust);
subplot(2, 2, 4); imhist(hist1_bmp_adjust);

[H x] = imhist(hist1_bmp,256);
C2 = cumsum(H)/(max(cumsum(H))/max(H));
figure(4);
plot(x, H); 
hold on;
plot(x, C2);

LUT = uint8(C2 * 255 / max(C2));
[H2 x2] = imhist(intlut(hist1_bmp,LUT),256);
C22 = cumsum(H2)/(max(cumsum(H2))/max(H2));
figure(5);
subplot(4,1,1); imshow(hist1_bmp); title('Obraz');
subplot(4,1,2); imshow(intlut(hist1_bmp,LUT)); title('LUT');
subplot(4,1,3); plot(x2, H2); title('Histogram');
subplot(4,1,4); plot(x2, C22); title('Histogram skumulowany');

figure(6);
subplot(3,4,1); imshow(Img_Hist_2); title('Histogram 2');
subplot(3,4,2); imshow(imadjust(Img_Hist_2)); title('Histogram 2 Adjust');
subplot(3,4,3); imshow(histeq(Img_Hist_2)); title('Histogram 2 histeq');
subplot(3,4,4); imshow(adapthisteq(Img_Hist_2)); title('Histogram 2 adapthisteq');

subplot(3,4,5); imshow(Img_Hist_3); title('Histogram 3');
subplot(3,4,6); imshow(imadjust(Img_Hist_3)); title('Histogram 3 Adjust');
subplot(3,4,7); imshow(histeq(Img_Hist_3)); title('Histogram 3 histeq');
subplot(3,4,8); imshow(adapthisteq(Img_Hist_3)); title('Histogram 3 adapthisteq');

subplot(3,4,9); imshow(Img_Hist_4); title('Histogram 4');
subplot(3,4,10); imshow(imadjust(Img_Hist_4)); title('Histogram 4 Adjust');
subplot(3,4,11); imshow(histeq(Img_Hist_4)); title('Histogram 4 histeq');
subplot(3,4,12); imshow(adapthisteq(Img_Hist_4)); title('Histogram 4 adapthisteq');
