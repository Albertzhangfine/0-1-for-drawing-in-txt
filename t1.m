clear 
clc

i=imread('13.jpg'); %the chosen photo(Image resolution should not be too large,Lateral resolution should be less than 1025,because one line is capped at 1025 in txt)

a=135;             %Custom threshold
i3=rgb2gray(i);
[m,n]=size(i3);
for x=1:m
    for y=1:n
        if i3(x,y)>a
            I(x,y)=1;
        else
            I(x,y)=0;
        end
    end
end
% yu=graythresh(i); %automatically generate threshold
% I=im2bw(i,yu);
figure
imshow(I)
i2=double(I);

fid=fopen('D:\Desktop\test\A.txt','wt');%Write file path ,file name is e.txt
matrix=i2;                        %i2 is Matrix to be intput
[m,n]=size(matrix);
 for i=1:1:m
   for j=1:1:n
      if j==n
        fprintf(fid,'%g\n',matrix(i,j));
      else
       fprintf(fid,'%g',matrix(i,j));
      end
   end
 end
fclose(fid);