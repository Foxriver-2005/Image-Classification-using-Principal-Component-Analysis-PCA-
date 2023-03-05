clc;
clear;
close all;
%Load the network
%step 1-- load the datastore
net=darknet19;
imds=imageDatastore('dataset','IncludeSubfolders',true,...
    'LabelSource','foldernames');
disp(imds);
sz=net.Layers(1, 1).InputSize;
augImds=augmentedImageDatastore(net.Layers(1, 1).InputSize(1:2),imds);
%Feature extraction
Labels=imds.Labels;
%numClasses=numel(countcats(Labels));%count number ofimages
numClass=3;
feature=squeeze(activations(net,augImds,'avg1'));%feature extraction with pre-trained network
%step 3--- Apply k-means algorithm
A=pca(feature',"Centered",true);
gscatter(A(:,1),A(:,2),Labels);
%step 4-- View cluster data
for i=1:numClasses
    ithGroup=readByIndex(augImds,find(C==i));
    [len len2]=size(ithGroup);
    if i==1
        figure;
        for j=1:len
            aa=ithGroup.input(j);
            subplot(6,5,j);
            imshow(aa);
        end
        subtitle('1 Cluster');
    end
end