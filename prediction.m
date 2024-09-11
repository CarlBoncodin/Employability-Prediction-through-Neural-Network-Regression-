close all; clear; clc

%% Import assets
T = readtable('kaggle_student_employability_data_set.xlsx');
data = T{:,:};

%% Data Preparation
% Select features to use
X = data(:, 2:7)';
Y = data(:, end)';

% Normalize features
student_train=[data(1:332,:)];
student_test=[data(333:414,:)];
X1 = student_train(:,1:7);
Y1 = student_train(:,8);
X2 = student_test(:,1:7);
Y2 = student_test(:,8);
X_comb = [X1;X2];

X_mean = mean(X_comb);
X_std = std(X_comb);
X1_norm = (X1-X_mean)./X_std;
X2_norm = (X2-X_mean)./X_std;
X_merge = [X1_norm;X2_norm];
rng(0);
%% Neural Network Preparation
% Create a fitnet neural network
myNetwork = fitnet([9 8 7], 'trainlm');

% Train the network
myNetwork = train(myNetwork,X_merge',Y);

% Show the network
view(myNetwork);
output = myNetwork(X_merge');

% Save the network
save('myNetwork.mat', 'myNetwork');
