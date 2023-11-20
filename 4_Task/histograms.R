

ggplot(Main_Data, aes(x = Salary, fill = Continent)) +
  geom_histogram(binwidth = 10000, color = "black", position = "dodge") +  # Встановлюємо крок гістограми, кольори та розміщення
  labs(
    x = "Зарплата",
    y = "Частота",
    title = "Гістограма розподілу зарплати з урахуванням континенту"
  ) +
  theme_minimal()


ggplot(Main_Data, aes(x = Salary, fill = Education)) +
  geom_histogram(binwidth = 10000, color = "black", position = "dodge") +  # Встановлюємо крок гістограми, кольори та розміщення
  labs(
    x = "Зарплата",
    y = "Частота",
    title = "Гістограма розподілу зарплати з урахуванням освіти"
  ) +
  theme_minimal()

ggplot(Main_Data, aes(x = Salary, fill = Specialization)) +
  geom_histogram(binwidth = 10000, color = "black", position = "dodge") +  # Встановлюємо крок гістограми, кольори та розміщення
  labs(
    x = "Зарплата",
    y = "Частота",
    title = "Гістограма розподілу зарплати з урахуванням Спеціалізації"
  ) +
  theme_minimal()


ggplot(Main_Data, aes(x = Salary, fill = `Type of employment`)) +
  geom_histogram(binwidth = 10000, color = "black", position = "dodge") +  # Встановлюємо крок гістограми, кольори та розміщення
  labs(
    x = "Зарплата",
    y = "Частота",
    title = "Гістограма розподілу зарплати з урахуванням типу зайнятості"
  ) +
  theme_minimal()


