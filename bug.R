```R
# This function attempts to calculate the mean of a vector, but it contains a subtle error.
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA) # Handle empty vector
  }
  sum_x <- sum(x, na.rm = TRUE) #Remove NAs before summation
  mean_x <- sum_x / length(x) # Calculate mean
  return(mean_x)
}

# Example usage with a vector containing NA:
vec <- c(1, 2, NA, 4, 5)
result <- calculate_mean(vec)
print(result) #incorrect result

# Example usage with an empty vector:
vec2 <- numeric(0)
result2 <- calculate_mean(vec2)
print(result2) #correct result, returns NA
```