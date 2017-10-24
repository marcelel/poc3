clearvars; close all; clc;

phobos_bmp = imread('phobos.bmp');

figure;
subplot(1, 2, 1); imshow(phobos_bmp);
subplot(1, 2, 2); histeq(phobos_bmp, 256);

load histogramZadany.mat;
figure;
histeq(phobos_bmp, histogramZadany);

