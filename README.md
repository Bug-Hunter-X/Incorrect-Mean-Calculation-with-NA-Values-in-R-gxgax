# Incorrect Mean Calculation with NA Values in R

This repository demonstrates a subtle bug in an R function designed to calculate the mean of a numeric vector, specifically when dealing with vectors containing `NA` values. The function attempts to handle empty vectors and `NA` values, but there's a flaw in the way it calculates the mean resulting in an incorrect output.

The `bug.R` file contains the erroneous function, along with example usages demonstrating the issue. The correct solution is provided in `bugSolution.R`.