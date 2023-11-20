
# 2. Перевірити гіпотезу про те, що математичне сподівання величин, 
# використаних в Лабораторній роботі 3, попарно 
# - рівні між собою;
# - М1 менше/більше М2.

# 2.1

# Порівняння математичних сподівань Ethereum та TSLA
t_test_ethereum_tsla <- t.test(data$Ethereum, data$TSLA)
# Порівняння математичних сподівань Ethereum та SONY
t_test_ethereum_sony <- t.test(data$Ethereum, data$SONY)
# Порівняння математичних сподівань SONY та TSLA
t_test_sony_tsla <- t.test(data$SONY, data$TSLA)

# Виведення результатів
cat("T-test for Ethereum and TSLA :\n", "t = ", t_test_ethereum_tsla$statistic, ", p-value = ", t_test_ethereum_tsla$p.value, "\n")
cat("T-test for Ethereum and SONY :\n", "t = ", t_test_ethereum_sony$statistic, ", p-value = ", t_test_ethereum_sony$p.value, "\n")
cat("T-test for SONY and TSLA :\n", "t = ", t_test_sony_tsla$statistic, ", p-value = ", t_test_sony_tsla$p.value, "\n")

# 2.2
# Односторонній t-тест для Ethereum < TSLA
t_test_ethereum_less_tsla <- t.test(data$Ethereum, data$TSLA, alternative = "less")
# Виведення результату
cat("One-Sided T-test for Ethereum < TSLA :\n", "t = ", t_test_ethereum_less_tsla$statistic, ", p-value = ", t_test_ethereum_less_tsla$p.value, "\n")
# відповідь 1 отже так
# Односторонній t-тест для Ethereum > TSLA
t_test_ethereum_greater_tsla <- t.test(data$Ethereum, data$TSLA, alternative = "greater")
# Виведення результату
cat("One-Sided T-test for Ethereum > TSLA :\n", "t = ", t_test_ethereum_greater_tsla$statistic, ", p-value = ", t_test_ethereum_greater_tsla$p.value, "\n")


# Односторонній t-тест для Ethereum > SONY
t_test_ethereum_greater_sony <- t.test(data$Ethereum, data$SONY, alternative = "greater")
# Виведення результату
cat("One-Sided T-test for Ethereum > SONY :\n", "t = ", t_test_ethereum_greater_sony$statistic, ", p-value = ", t_test_ethereum_greater_sony$p.value, "\n")
# Односторонній t-тест для Ethereum < SONY
t_test_ethereum_less_sony <- t.test(data$Ethereum, data$SONY, alternative = "less")
# Виведення результату
cat("One-Sided T-test for Ethereum < SONY :\n", "t = ", t_test_ethereum_less_sony$statistic, ", p-value = ", t_test_ethereum_less_sony$p.value, "\n")
# відповідь 1 отже так

# Односторонній t-тест для SONY < TSLA
t_test_sony_less_tsla <- t.test(data$SONY, data$TSLA, alternative = "less")
# Виведення результату
cat("One-Sided T-test for SONY < TSLA (H0: Mu1 >= Mu2):\n", "t = ", t_test_sony_less_tsla$statistic, ", p-value = ", t_test_sony_less_tsla$p.value, "\n")
# Односторонній t-тест для SONY > TSLA
t_test_sony_greater_tsla <- t.test(data$SONY, data$TSLA, alternative = "greater")
# Виведення результату
cat("One-Sided T-test for SONY > TSLA (H0: Mu1 <= Mu2):\n", "t = ", t_test_sony_greater_tsla$statistic, ", p-value = ", t_test_sony_greater_tsla$p.value, "\n")
# відповідь 1 отже так
