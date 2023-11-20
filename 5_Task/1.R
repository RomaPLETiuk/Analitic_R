
# 1. Перевірити гіпотезу про те, що величини, використані в Лабораторній 
# роботі 3,  розподілені за нормальним законом розподілу.

# Перевірка на нормальність для кожної величини
shapiro_test_ethereum <- shapiro.test(data$Ethereum)
shapiro_test_tsla <- shapiro.test(data$TSLA)
shapiro_test_sony <- shapiro.test(data$SONY)

# Виведення результатів
cat("Shapiro-Wilk test for Ethereum:\n", "W = ", shapiro_test_ethereum$statistic, ", p-value = ", shapiro_test_ethereum$p.value, "\n")
cat("Shapiro-Wilk test for TSLA:\n", "W = ", shapiro_test_tsla$statistic, ", p-value = ", shapiro_test_tsla$p.value, "\n")
cat("Shapiro-Wilk test for SONY:\n", "W = ", shapiro_test_sony$statistic, ", p-value = ", shapiro_test_sony$p.value, "\n")

# у кожному випадку значення p-value набагато менше за 0.05 тому можна
# відхилити нульову гіпотезу про нормальний розподіл даних


