```R
#Corrected function to calculate the mean, handling NAs correctly
calculate_mean_corrected <- function(x) {
  if (length(x) == 0) {
    return(NA) # Handle empty vector
  }
  x <- x[!is.na(x)] # Remove NAs before calculation
  if (length(x) == 0) {
    return(NA) # Handle case where all values were NA
  }
  mean(x) #Directly use the mean function which handles NAs correctly
}

# Example usage with a vector containing NA:
vec <- c(1, 2, NA, 4, 5)
result <- calculate_mean_corrected(vec)
print(result) #correct result

# Example usage with an empty vector:
vec2 <- numeric(0)
result2 <- calculate_mean_corrected(vec2)
print(result2) #correct result, returns NA

#Example usage with a vector containing only NA values
vec3 <- c(NA,NA,NA)
result3 <- calculate_mean_corrected(vec3)
print(result3) #correct result, returns NA
```