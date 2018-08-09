outputVideo = VideoWriter('output.mp4'); %create new video file
outputVideo.FrameRate = video.FrameRate; %set frame rate of new video same as original video
open(outputVideo); %open newly created video file
for i = 1:video.NumberOfFrames; %for loop running through all frames
   Num = int2str(i); 
   filename = strcat('Frame',Num,'.jpg'); %finding filename of individual frames
   image = imread(filename); %reading individual frames
   writeVideo(outputVideo,image) %adding individual frames to the video file
end
close(outputVideo) %close the video file at the end