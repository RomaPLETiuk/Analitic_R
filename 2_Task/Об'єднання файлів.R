# Завантаження бібліотеки readr
library(readr)

# Зчитування файлів для Ethereum, TSLA та SONY
ethereum_data <- read_csv("Ethereum Historical Data.csv")
tsla_data <- read_csv("TSLA Historical Data.csv")
sony_data <- read_csv("SONY Historical Data.csv")
# Об'єднання даних за допомогою функції merge по стовпцю "Date"
merged_data <- merge(ethereum_data, tsla_data, by = "Date")
merged_data <- merge(merged_data, sony_data, by = "Date")

# Вибираємо тільки потрібні стовпці
merged_data <- merged_data[c("Date", "Price.x", "Price.y", "Price")]

# Перейменування стовпців
colnames(merged_data) <- c("Date", "Ethereum", "TSLA", "SONY")

# Виводимо перші рядки об'єднаного датасету
head(merged_data)
# Зберігаємо об'єднаний датасет в файл CSV
write.csv(merged_data, file = "merged_data.csv", row.names = FALSE)






