function AutoTo01(i)

yu=graythresh(i); %automatically generate threshold
I=im2bw(i,yu);
figure
imshow(I)
i2=double(I);

fid=fopen('B.txt','wt');%Write file path ,file name is B.txt
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
end