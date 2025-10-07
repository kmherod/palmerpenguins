rm(list = ls())
setwd("C:/Users/kelse/Documents/GitHub/palmerpenguins")



### Task 1: Calculate Summary Statistics ###

# Load necessary library
#install.packages("palmerpenguins")
library(palmerpenguins)

# Inspect the dataset
head(penguins)

# Calculate the mean
numeric_means <- apply(penguins[, sapply(penguins, is.numeric)], 2, mean, na.rm = TRUE)

# Print the result
print(numeric_means)




### Task 2: Count Penguins by Species ###

species_counts <- tapply(penguins$species, penguins$species, length)

# Print the result
print(species_counts)




### Task 3: Analyze Bill Length by Species ###

bill_length_means <- lapply(split(penguins$bill_length_mm, penguins$species), 
                            mean, na.rm = TRUE)


# Print the result
print(bill_length_means)



### Task 4: Create a Summary Table ###

summary_table <- sapply(penguins[, sapply(penguins, is.numeric)], function(x)
  c(mean = mean(x, na.rm = TRUE), sd = sd(x, na.rm = TRUE)))

# Print the result
print(summary_table)


