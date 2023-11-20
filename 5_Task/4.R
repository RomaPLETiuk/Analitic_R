# Розрахунок коефіцієнта кореляції Пірсона для Ethereum і TSLA
cor_ethereum_tsla <- cor(data$Ethereum, data$TSLA)

# Розрахунок коефіцієнта кореляції Пірсона для Ethereum і SONY
cor_ethereum_sony <- cor(data$Ethereum, data$SONY)

# Розрахунок коефіцієнта кореляції Пірсона для TSLA і SONY
cor_tsla_sony <- cor(data$TSLA, data$SONY)

# Виведення результатів
cat("Correlation between Ethereum and TSLA: ", cor_ethereum_tsla, "\n")
cat("Correlation between Ethereum and SONY: ", cor_ethereum_sony, "\n")
cat("Correlation between TSLA and SONY: ", cor_tsla_sony, "\n")



# За результатами обчислень, можна побачити, що існує певна кореляція між цінами Ethereum, TSLA та SONY. Величини кореляції для кожної пари величин вказують на позитивну кореляцію:
#   
# Кореляція між Ethereum і TSLA становить 0.6829, що вказує на помірну позитивну кореляцію.
# Кореляція між Ethereum і SONY становить 0.7205, що також вказує на помірну позитивну кореляцію.
# Кореляція між TSLA і SONY становить 0.5620, що вказує на слабку позитивну кореляцію.
# Ці результати свідчать про те, що зміни в цінах Ethereum, TSLA та SONY мають тенденцію спільно змінюватися у певному напрямку. 
# Однак, важливо зауважити, що кореляція не обов'язково вказує на причинно-наслідкову залежність між величинами, і інші фактори можуть 
# впливати на цю кореляцію.