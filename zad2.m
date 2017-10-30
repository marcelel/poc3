clearvars; close all; clc;

phobos_bmp = imread('phobos.bmp');

figure;
subplot(1, 2, 1); imshow(phobos_bmp);
subplot(1, 2, 2); histeq(phobos_bmp, 256);

load histogramZadany.mat;
figure;
subplot(1, 2, 1); imshow(phobos_bmp);
subplot(1, 2, 2); histeq(phobos_bmp, histogramZadany);

figure;
subplot(1, 3, 1); imshow(phobos_bmp);
subplot(1, 3, 2); imshow(imadjust(phobos_bmp)); title('Phobos imadjust');
subplot(1, 3, 3); imshow(adapthisteq(phobos_bmp)); title('Phobos adapthisteq');