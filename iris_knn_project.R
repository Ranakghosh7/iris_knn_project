  suppressPackageStartupMessages({
  library(class)     # KNN model
  library(ggplot2)   # Plotting goodness
  library(dplyr)     # Data manipulation magic
  library(caret)     # Train/test splits + utilities
})

cat("📌 Booting up... Loading the legendary Iris dataset...\n")
data(iris)

# 1. Dataset Overview
cat("\n📊 Okay, let's peek under the hood. Dataset Summary:\n")
print(summary(iris))

cat("\n🔍 Here are the first 10 rows, fresh out of the oven:\n")
print(head(iris, 10))

# 2. Visualization 
at("\n🎨 Creating a scatter plot so beautiful it belongs in a museum...\n")

plot1 <- ggplot(iris, aes(Sepal.Length, Petal.Length, color = Species)) +
  geom_point(size = 3, alpha = 0.85) +
  theme_minimal() +
  ggtitle("🌼 Iris Dataset: Sepal Length vs Petal Length")

print(plot1)

#3. Train/Test Split
cat("\n✂ Splitting the dataset (80% train / 20% test)...\n")
set.seed(123)

index <- createDataPartition(iris$Species, p = 0.8, list = FALSE)

train <- iris[index, ]
test  <- iris[-index, ]

train_labels <- train$Species
test_labels  <- test$Species

train_data <- train[, 1:4]
test_data  <- test[, 1:4]

cat("📦 Training samples: ", nrow(train), " | Testing samples: ", nrow(test), "\n", sep="")

# 4. Training KNN Model
k_value <- 5
cat(paste0("\n🤖 Time to train! Running KNN with k = ", k_value, "...\n"))

pred <- knn(
  train = train_data,
  test  = test_data,
  cl    = train_labels,
  k     = k_value
)

# 5. Evaluating
cat("\n📈 Confusion Matrix (aka: Did the model get its act together?):\n")
cm <- table(Predicted = pred, Actual = test_labels)
print(cm)

accuracy <- sum(pred == test_labels) / length(test_labels) * 100
cat(paste0("\n✅ Accuracy Achieved: ", round(accuracy, 2), "%\n"))

if (accuracy > 90) {
  cat("😎 Not bad! Your model is basically a botanist now.\n")
} else if (accuracy > 80) {
  cat("👍 Solid! Could outperform most students half-asleep in class.\n")
} else {
  cat("🤔 Well… it *tries* its best.\n")
}

# 6. Predicting a New Flower
cat("\n🔮 Generating prediction for a brand-new mystery flower...\n")

new_flower <- data.frame(
  Sepal.Length = 5.1,
  Sepal.Width  = 3.5,
  Petal.Length = 1.4,
  Petal.Width  = 0.2
)

prediction <- knn(train_data, new_flower, cl = train_labels, k = k_value)

cat("\n🌸 The model thinks this flower is:\n")
print(prediction)


cat("\n✨ All done! Your ML pipeline is alive and working.\n")
cat("🚀 Go ahead — commit it, push it, flex it on GitHub.\n")
