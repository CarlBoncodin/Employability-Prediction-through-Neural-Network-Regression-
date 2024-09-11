# Employability Prediction through Neural Network Regression 
Introduction
-
Artificial Neural Networks (ANNs) are widely used in data science for tasks such as classification and regression, solving complex problems in various fields. This project focuses on developing a feedforward neural network to predict student employability based on mock interview data. The goal is to leverage ANN techniques to analyze and forecast students' employability performance effectively.

Objectives
-
- Predict Employability: Develop an ANN model to estimate student employability ratings based on input features.
- Train Network: Use the fitnet function to train the neural network and achieve high accuracy.
- Accuracy Goal: Aim for over 75% accuracy in the predictions.
- Feature Impact: Determine which features most influence the employability predictions.

Methodology
-
- Data Preparation: Import and preprocess data from an Excel file, selecting relevant features and splitting the dataset into training (80%) and testing (20%) sets.
- Normalization: Normalize feature data to ensure consistency and improve model performance.
- Neural Network Training: Create and train a feedforward neural network with three hidden layers using the fitnet function and the Levenberg-Marquardt algorithm.
- Evaluation: Assess the model's performance using mean squared error (MSE) and other metrics, and save the trained network for future use.

Result
-
The ANN model achieved an accuracy exceeding 75% in predicting student employability. The training performance showed a mean squared error (MSE) of 0.0774, indicating effective model training. However, some overfitting was observed, suggesting the need for further regularization and feature optimization. The model demonstrated the capability to capture complex relationships in the data, providing valuable insights into employability prediction.
