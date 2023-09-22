
if (!require(dplyr)) {
  install.packages("dplyr")
}

if (!require(summarytools)) {
  install.packages("summarytools")
}


library(dplyr)
library(summarytools)

# Завантажуємо дані з CSV файлу з роздільником кома
data <- read.csv("Main_Data.csv", header = TRUE, sep = ",")

# 3. Аналіз описової статистики кожної змінної
desc_stats <- data %>%
  dfSummary()



# Виводимо описову статистику
print(desc_stats)

# 4. Обчислення математичного сподівання, медіани та середньоквадратичного відхилення для зарплати
salary_stats <- data %>%
  summarise(
    Математичне_сподівання = mean(Salary),
    Медіана = median(Salary),
    Середньоквадратичне_відхилення = sd(Salary)
  )

# Виводимо результати
print(salary_stats)

# 5. Агрегування змінних та описова статистика за категоріями
aggregated_data <- data %>%
  group_by(Continent) %>%
  summarise(
    Середній_вік = mean(Age),
    Середня_зарплата = mean(Salary),
    Максимальна_зарплата = max(Salary),
    Мінімальна_зарплата = min(Salary)
  )

# Виводимо агреговані дані
print(aggregated_data)

# 5. Агрегування змінних та описова статистика за освітою та спеціалізацією
aggregated_data_education <- data %>%
  group_by(Education) %>%
  summarise(
    Середній_вік = mean(Age),
    Середня_зарплата = mean(Salary),
    Максимальна_зарплата = max(Salary),
    Мінімальна_зарплата = min(Salary)
  )

# Друкуємо агреговані дані за освітою
print(aggregated_data_education)

# 5. Агрегування змінних та описова статистика за спеціалізацією
aggregated_data_specialization <- data %>%
  group_by(Specialization) %>%
  summarise(
    Середній_вік = mean(Age),
    Середня_зарплата = mean(Salary),
    Максимальна_зарплата = max(Salary),
    Мінімальна_зарплата = min(Salary)
  )

# Друкуємо агреговані дані за спеціалізацією
print(aggregated_data_specialization)

# 5. Агрегування змінних та описова статистика за статтею і спеціалізацією по континентах
aggregated_data_e_c_s <- data %>%
  group_by(Continent, Education, Specialization) %>%
  summarise(
    Середній_вік = mean(Age),
    Середня_зарплата = mean(Salary),
    Максимальна_зарплата = max(Salary),
    Мінімальна_зарплата = min(Salary)
  )

# Виводимо агреговані дані
#print(aggregated_data)

# 5. Агрегування змінних та описова статистика за статтею і спеціалізацією по континентах
aggregated_data_dosv <- data %>%
  group_by(Experience) %>%
  summarise(
    Середній_вік = mean(Age),
    Середня_зарплата = mean(Salary),
    Максимальна_зарплата = max(Salary),
    Мінімальна_зарплата = min(Salary)
  )

# Виводимо агреговані дані
#print(aggregated_data)