
% clear command windows
clc
clear all
close all
%% input
I    = imread('test1.jpg');    % Original: also test 1.jpg
% parameters

% meanshift parameter
bw   = 0.16;                % Mean Shift Bandwidth


% compare

[Ims2, Nms2] = Ms2(I,bw);                   % Mean Shift (color + spatial)

%show
figure()
subplot(231); imshow(I);    title('Original'); 

subplot(235); imshow(Ims2); title(['MeanShift+Spatial',' : ',num2str(Nms2)]);

imwrite(Ims2,'test1output16.jpg');

