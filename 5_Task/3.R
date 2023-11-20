# Виконання тесту Фішера для Ethereum і TSLA
var.test(data$Ethereum, data$TSLA)
var.test(data$TSLA, data$Ethereum)

# Виконання тесту Фішера для Ethereum і SONY
var.test(data$Ethereum, data$SONY)
var.test(data$SONY, data$Ethereum)

# Виконання тесту Фішера для TSLA і SONY
var.test(data$TSLA, data$SONY)
var.test(data$SONY, data$TSLA)

# Якщо значення fstat близьке до 1, то це вказує на 
# рівність (близьку до 1) відношення дисперсій між 
# відповідними парами змінних.


# Якщо значення fstat більше 1, то це означає, 
# що дисперсія однієї змінної більше дисперсії 
# іншої. Якщо значення fstat менше 1, то це свідчить 
# про те, що дисперсія однієї змінної менше дисперсії іншої.