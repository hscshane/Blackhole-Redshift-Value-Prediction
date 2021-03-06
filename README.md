# Blackhole-Redshift-Value-Prediction
## Goal:
This projects aim to find and train ML models to predict the redshift (distance) of Super Massive Blackholes in [AGNDB](https://github.com/blackbase-miami/blackbase) Database.

## Data:
All data are from AGNDB Database (version 1.1.0, in development). <br>
agnz_train.pkl: training set <br>
agnz_dev.pkl: development set <br>
AGNCL_train_set_report_v1.1.0.html: training set report <br>
AGNCL_dev_set_report_v1.1.0.html: dev set report <br>

## Notebooks (Copy the links to https://nbviewer.jupyter.org/ to view notebooks):
Data preprocessing: AGN_Redshift_Predictor_Preprocessing_v1.1.0.ipynb <br>
Model training: AGN_Redshift_Predictor_Modeling_v1.1.0.ipynb <br>
Performance Evaluation: AGN_Redshift_Predictor_Evaluation_v1.1.0.ipynb <br>

## Models:
Z_NN.pd: Neural Network Model for blackhole redshift prediction. <br>
LR_Model.pkl: Linear Regression model
KNN_Model.pkl: K-nearest neighbors model

## Results
./results/z_dist.pdf: Actual vs Fitted Values for Redshift Distributions. <br>
./results/scores.csv: metric score results <br>
