#  з рівномірним законом розподілу;

ks.test(unique(data$Ethereum), "punif")
ks.test(unique(data$TSLA), "punif")
ks.test(unique(data$SONY), "punif")

# з експонентним законом  розподілу;
ks.test(unique(data$Ethereum), "pexp")
ks.test(unique(data$TSLA), "pexp")
ks.test(unique(data$SONY), "pexp")

# Тест на розподіл Пуассона
chisq.test(data$Ethereum)
chisq.test(data$TSLA)
chisq.test(data$SONY)