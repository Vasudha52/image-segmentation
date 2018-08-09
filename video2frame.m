 video=VideoReader('video.mp4');
 NumOfFrames = video.NumberOfFrames;
 for x = 1:NumOfFrames
 frame = read(video,x);
 imwrite(frames,['Frame' int2str(x), '.jpg']);
 %im(x)=image(frames);
 end