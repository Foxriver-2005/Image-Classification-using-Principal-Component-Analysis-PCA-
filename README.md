# Image-Classification-using-Principal-Component-Analysis (PCA)

IMAGE CLASSIFICATION USING UNSUPERVISED LEARNING (Transfer Learning)

Deep neural network combines multiple non-linear processing layers, using simple elements operating in parallel and inspired by biological nerve systems, it consist of an input layer, several hidden layers and an input layer. The layers are interconnected via nodes, or networks with each hidden layer using the output of the previous layer as an input.

Feature Detection Layers Of Convolution Neural Network (CNN)
    • Convolution – Put the input images through a set of convolution filters, each of which activates certain features from the images.
    • Pooling – Simplifies the output by performing non-linear down sampling reducing the number of parameters that the network needs to learn about.
    • Rectified Linear Unit (ReLU) – Allows for faster & more effective training by mapping negative values to zero and maintaining positive values.
These three operations are repeated over ten or hundred of layers with each layer learning to detect different features.

Classification Layers of CNN
    a) Fully Connected Layer – Outputs a vector of K dimensions where K is the number of classes that the network will be able to predict. This vector combines the probabilities of each class of any image being classified.
    b) Softmax – provides the classification ouput.

Merits of Transfer Learning.
    i. Transfer the learned features of a pretrained network to a new problem.
    ii. Transfer learning is faster and easier than training a new network.
    iii. Reduce training time and dataset size.
    iv. Perform deep learning without needing to learn how to create a whole new network.

Reusing Pretrained Network
    a) Load pretrained network.
    b) Replace final layers.
    c) Train network.
    d) Predict and access network accuracy.
    e) Display results.
    
For this project you will have to install "darknet19" from matlab ad-ons wich is a pretrained network.

After you download this matlab codes, create a new folder inside the folder having the matlab code files and call it "dataset". Inside the newly created folder "dataset" create other folders i.e A,B,C,D,.... inside this folders put images to be classified with each folder having similar images (i.e if it faces, it should be faces of single person.)


