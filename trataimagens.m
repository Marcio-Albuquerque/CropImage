%%Parte 1 - Ler as imagens
clear all
clc 
close all

Files=dir('Imagens/*.JPG');
length(Files)
for k=1:length(Files)
    k
    close all
   FileNames=Files(k).name;

%%Parte 2 - Abrir as imagens
    img = imread(strcat('Imagens/',FileNames));
    figure
    imshow(img)



%%Parte 3 - Selecionar o ponto na imagem
    [xi, yi, but] = ginput(1);
    x = round(xi);
    y = round(yi);


%%Parte 4 - Cortar as imagens 800x800


    I2 = imcrop(img,[(x-400) (y-400) (800-1) (800-1)]);
%     figure
%     imshow(I2);
    

    %%Parte 5 - Salvar as imagens com o nome original
    
    
    imwrite(I2,FileNames,'JPG');
   %Se tiver uma extensao diferente
%     C = split(FileNames,["."]);
%     imwrite(I2,strcat(C{1,1},'.JPG'));


    %Apaga a imagem original
    delete(strcat('Imagens/',FileNames));    

end