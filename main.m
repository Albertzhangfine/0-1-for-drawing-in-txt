clear
clc

i=imread('13.jpg'); %the chosen photo(Image resolution should not be too large,Lateral resolution should be less than 1025,because one line is capped at 1025 in txt)
a=135;              %Custom threshold a
CustomTo01(i,a);    
AutoTo01(i);        %%automatically generate threshold







