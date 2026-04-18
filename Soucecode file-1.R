#load necessary libraries
library(readr)
library(dplyr)
library(ggplot2)

healthcare <- read.csv("/Users/pramithareddy/Documents/NEU assignments/ALY 6080/stage_2_train.csv")
healthcare

#Add a column to check for duplicates
healthcare$isDuplicate <- duplicated(healthcare$ImageId)

#Check how many rows you have with duplicates
cat(paste("With duplicates, you have a total of", nrow(healthcare), "rows.\n"))

#Remove duplicates
healthcare <- healthcare[!healthcare$isDuplicate, ]

#Check the number of rows after removing duplicates
cat(paste("Without duplicates, you have a total of", nrow(healthcare), "rows.\n"))

#Remove the 'isDuplicate' column
healthcare <- healthcare[, !(names(healthcare) %in% "isDuplicate")]

#Add a new 'ImagePath' column
healthcare$ImagePath <- paste('siim/train_dicom/', healthcare$ImageId, '.dcm', sep='')

#Display the first few rows of the modified dataset
head(healthcare)

#Data Visualisation
#Example 1: Create a bar chart to visualize the frequency of each category in 'X'
healthcare %>%
  group_by(X) %>%
  summarize(count = n()) %>%
  ggplot(aes(x = X, y = count, fill = X)) +
  geom_bar(stat = "identity") +
  labs(title = "Frequency of Categories in 'X'", x = "X", y = "Count")

#Example 2: Create a bar chart to visualize the distribution of 'Encoded Pixels'
ggplot(healthcare, aes(x = "Encoded Pixels")) +
  geom_bar(stat = "count", fill = "blue") +
  labs(title = "Distribution of 'Encoded Pixels'", x = "Encoded Pixels", y = "Count")

