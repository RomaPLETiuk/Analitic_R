# Зчитати дані з файлу
data <- read.csv("merged_data.csv")

# Встановити бібліотеки
library(dplyr)
library(tidyverse)

# Функція для обчислення статистичних характеристик
calculate_statistics <- function(column) {
  max_val <- max(column)
  min_val <- min(column)
  mean_val <- mean(column)
  sd_val <- sd(column)
  median_val <- median(column)
  mode_val <- as.numeric(names(sort(table(column), decreasing = TRUE)[1]))
  variance_val <- var(column)
  skewness_val <- skewness(column)
  kurtosis_val <- kurtosis(column)
  quantiles <- quantile(column)
  iqr_val <- IQR(column)
  
  stats <- data.frame(
    Max = max_val,
    Min = min_val,
    Mean = mean_val,
    SD = sd_val,
    Median = median_val,
    Mode = mode_val,
    Variance = variance_val,
    Skewness = skewness_val,
    Kurtosis = kurtosis_val,
    Q1 = quantiles[1],
    Q3 = quantiles[3],
    IQR = iqr_val
  )
  
  return(stats)
}

# Виклик функції для кожного стовпця
ethereum_stats <- calculate_statistics(data$Ethereum)
tsla_stats <- calculate_statistics(data$TSLA)
sony_stats <- calculate_statistics(data$SONY)

# Вивід результатів
print("Ethereum Statistics:")
print(ethereum_stats)
print("TSLA Statistics:")
print(tsla_stats)
print("SONY Statistics:")
print(sony_stats)

# Математичне сподівання, медіана та середньоквадратичне відхилення під час COVID-19
covid_period <- data[data$Date >= "01/04/2020" & data$Date <= "01/04/2021", ]
covid_ethereum_mean <- mean(covid_period$Ethereum)
covid_ethereum_median <- median(covid_period$Ethereum)
covid_ethereum_sd <- sd(covid_period$Ethereum)

print("Statistics for Ethereum during COVID-19 period:")
print(paste("Mean:", covid_ethereum_mean))
print(paste("Median:", covid_ethereum_median))
print(paste("Standard Deviation:", covid_ethereum_sd))


# Фільтруємо дані за період COVID-19
covid_period_tsla <- data[data$Date >= "01/04/2020" & data$Date <= "01/04/2021", ]

# Обчислюємо математичне сподівання, медіану та середньоквадратичне відхилення для TSLA під час COVID-19
covid_tsla_mean <- mean(covid_period_tsla$TSLA)
covid_tsla_median <- median(covid_period_tsla$TSLA)
covid_tsla_sd <- sd(covid_period_tsla$TSLA)

# Виводимо результати
print("Statistics for TSLA during COVID-19 period:")
print(paste("Mean:", covid_tsla_mean))
print(paste("Median:", covid_tsla_median))
print(paste("Standard Deviation:", covid_tsla_sd))



# Фільтруємо дані за період COVID-19
covid_period_sony <- data[data$Date >= "01/04/2020" & data$Date <= "01/04/2021", ]

# Обчислюємо математичне сподівання, медіану та середньоквадратичне відхилення для SONY під час COVID-19
covid_sony_mean <- mean(covid_period_sony$SONY)
covid_sony_median <- median(covid_period_sony$SONY)
covid_sony_sd <- sd(covid_period_sony$SONY)

# Виводимо результати
print("Statistics for SONY during COVID-19 period:")
print(paste("Mean:", covid_sony_mean))
print(paste("Median:", covid_sony_median))
print(paste("Standard Deviation:", covid_sony_sd))




# Робота з пропущеними даними (якщо є)
missing_data <- sum(is.na(data))
print(paste("Missing Data Count:", missing_data))

# Порівняльний аналіз трьох фінансових активів
boxplot(data[,2:4], names = c("Ethereum", "TSLA", "SONY"))
