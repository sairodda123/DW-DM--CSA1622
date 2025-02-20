# Define class intervals and frequencies
age_intervals <- c("1-5", "5-15", "15-20", "20-50", "50-80", "80-110")
freq <- c(200, 450, 300, 1500, 700, 44)

# Compute cumulative frequency
cum_freq <- cumsum(freq)
total_n <- sum(freq)  # Total frequency

# Find median class (n/2)
n_half <- total_n / 2
median_class_index <- which(cum_freq >= n_half)[1]  # First class where cumulative freq exceeds n/2

# Identify necessary values for formula
L <- c(1, 5, 15, 20, 50, 80)[median_class_index]  # Lower boundary of median class
F <- ifelse(median_class_index == 1, 0, cum_freq[median_class_index - 1])  # Cumulative frequency before median class
f <- freq[median_class_index]  # Frequency of median class
h <- c(4, 10, 5, 30, 30, 30)[median_class_index]  # Class width

# Compute Median
median_value <- L + ((n_half - F) / f) * h

# Print the result
print(paste("Approximate Median:", median_value))
