# 🌼 Iris KNN Project

A simple, friendly, and fully-commented machine learning pipeline using the classic **Iris dataset** and a **K-Nearest Neighbors (KNN)** model in R. This project walks through data exploration, visualization, train/test splitting, model training, evaluation, and prediction on new data.

---

## 📁 Project Overview

This project demonstrates:

* Loading and understanding the Iris dataset
* Creating a visualization with **ggplot2**
* Splitting data into training and testing sets using **caret**
* Training a KNN classifier with the **class** package
* Evaluating model accuracy
* Predicting the species of a brand‑new flower

The script includes fun, friendly console messages to make the pipeline more enjoyable.

---

## 🧰 Dependencies

Make sure you have the following R packages installed:

```r
install.packages(c("class", "ggplot2", "dplyr", "caret"))
```

Packages used:

* **class** – KNN model
* **ggplot2** – Data visualization
* **dplyr** – Data manipulation
* **caret** – Train/test splitting utilities

The script suppresses package startup messages for a cleaner output.

---

## 🧪 What the Script Does

### 1. Load the Iris Dataset

Loads the classic dataset and prints summary statistics plus the first 10 rows.

### 2. Visualize the Data

Creates a scatter plot of **Sepal Length vs Petal Length**, colored by species.

### 3. Split Into Training & Testing Sets

Uses **80%** for training and **20%** for testing.

### 4. Train a KNN Model

A KNN model is trained using **k = 5**.

### 5. Evaluate the Model

* Confusion matrix
* Overall accuracy
* Humorous feedback based on model performance

### 6. Predict a New Flower

Feeds a new sample into the trained model and prints the predicted species.

---

## ▶ Running the Script

Run the script in any R environment:

```r
source("iris_knn_project.R")
```

You will see console output showing:

* Dataset summary
* Scatterplot
* Training/testing details
* Model accuracy
* Species prediction for a new flower

---

## 📊 Example Visualization

The script generates a plot similar to:

**Sepal Length vs Petal Length**, with species as color groups.

---

## 🧠 What You’ll Learn

* Basics of KNN classification
* How to preprocess and inspect a dataset
* How to visualize relationships in data
* How to split training/testing data properly
* How to evaluate a model using a confusion matrix

---

## 🚀 Ready to Extend?

Here are ideas for improving the project:

* Try different values of **k**
* Normalize features before training
* Add more visualizations
* Compare KNN with decision trees or SVM

---

## 🎉 Final Notes

This project is great for beginners learning R or machine learning fundamentals. It is intentionally written in a friendly, humorous tone to make the experience more enjoyable.

Happy coding! 🌸
