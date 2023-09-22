library(dplyr)
library(summarytools)
# Завантажуємо бібліотеку ggplot2
if (!require(ggplot2)) {
  install.packages("ggplot2")
}
library(ggplot2)
# Завантажуємо дані з CSV файлу з роздільником кома
data <- read.csv("Main_Data.csv", header = TRUE, sep = ",")



# Відображення бокс-плота для стовпця "Experience"
ggplot(data, aes(x = "Experience", y = Experience)) +
  geom_boxplot() +
  labs(title = "Бокс-плот для стажу роботи", x = "Стаж роботи", y = "Роки")


# Відображення бокс-плота для стовпця "Salary"
ggplot(data, aes(x = "Salary", y = Salary)) +
  geom_boxplot() +
  labs(title = "Бокс-плот для заробітної плати", x = "Заробітна плата", y = "Заробітна плата")

# Відображення бокс-плота для стовпця "Age"
ggplot(data, aes(x = "Age", y = Age)) +
  geom_boxplot() +
  labs(title = "Бокс-плот для віку", x = "Вік", y = "Вік")

# Відображення бокс-плота для стовпця "Number of projects"
ggplot(data, aes(x = "Number_of_projects", y = `Number_of_projects`)) +
  geom_boxplot() +
  labs(title = "Бокс-плот для кількості проектів", x = "Кількість проектів", y = "Кількість проектів")

# Відображення бокс-плота для стовпця "Job satisfaction"
ggplot(data, aes(x = "Job_satisfaction", y = `Job_satisfaction`)) +
  geom_boxplot() +
  labs(title = "Бокс-плот для задоволення роботою", x = "Задоволення роботою", y = "Задоволення роботою")




