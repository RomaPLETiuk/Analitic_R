# install.packages("ggplot2")
library(ggplot2)

# точкові діаграми
# Визначте кольори для кожного континенту
colors <- c("Europe" = "blue", "Australia" = "green", "North America" = "red", "South America" = "purple")

# Побудуйте точкову діаграму з різними кольорами для кожного континенту
ggplot(Main_Data, aes(x = Experience, y = Salary, color = Continent)) +
  geom_point(
    aes(size = Age),  # Додайте розмір точок
    shape = 21         # Встановіть форму точок
  ) +
  scale_color_manual(values = colors) +  # Встановіть кольори за допомогою шкали
  labs(
    x = "Досвід роботи",
    y = "Зарплата",
    title = "Залежність зарплати від досвіду роботи"
  ) +
  theme_minimal() +  # Встановіть стиль графіку
  theme(legend.position = "top")  # Розташування легенди

# Супер графік
# install.packages("shiny")
library(shiny)
# Створіть інтерактивний додаток Shiny
ui <- fluidPage(
  titlePanel("Залежність зарплати від досвіду роботи"),
  sidebarLayout(
    sidebarPanel(
      selectInput("continent", "Виберіть континент", choices = unique(Main_Data$Continent))
    ),
    mainPanel(
      plotOutput("scatterplot")
    )
  )
)

server <- function(input, output) {
  filtered_data <- reactive({
    subset(Main_Data, Continent == input$continent)
  })
  
  output$scatterplot <- renderPlot({
    ggplot(filtered_data(), aes(x = Experience, y = Salary, color = Continent)) +
      geom_point(
        aes(size = Age),
        shape = 21
      ) +
      scale_color_manual(values = colors) +
      labs(
        x = "Досвід роботи",
        y = "Зарплата",
        title = "Залежність зарплати від досвіду роботи"
      ) +
      theme_minimal() +
      theme(legend.position = "top")
  })
}

shinyApp(ui = ui, server = server)









# лінійні діаграми
# 
# 
# 

# 
# 
# install.packages("dplyr")

# Завантажте бібліотеки

library(dplyr)


# Побудуйте лінійний графік для аналізу залежності зарплати від досвіду роботи з розподілом за фактором "Спеціалізація"
Main_Data %>%
  ggplot(aes(x = Experience, y = Salary, group = Specialization, color = Specialization)) +
  geom_line() +
  geom_point() +
  labs(
    x = "Досвід роботи",
    y = "Зарплата",
    title = "Залежність зарплати від досвіду роботи з розподілом за фактором 'Спеціалізація'"
  ) +
  theme_minimal()


# графік інтерактивний
# Створіть інтерактивний додаток Shiny
ui <- fluidPage(
  titlePanel("Залежність зарплати від досвіду роботи з розподілом за фактором 'Спеціалізація'"),
  sidebarLayout(
    sidebarPanel(
      selectInput("specialization", "Виберіть спеціалізацію", choices = unique(Main_Data$Specialization))
    ),
    mainPanel(
      plotOutput("lineplot")
    )
  )
)

server <- function(input, output) {
  filtered_data <- reactive({
    subset(Main_Data, Specialization == input$specialization)
  })
  
  output$lineplot <- renderPlot({
    ggplot(filtered_data(), aes(x = Experience, y = Salary, group = Specialization, color = Specialization)) +
      geom_line() +
      geom_point() +
      labs(
        x = "Досвід роботи",
        y = "Зарплата",
        title = "Залежність зарплати від досвіду роботи з розподілом за фактором 'Спеціалізація'"
      ) +
      theme_minimal()
  })
}
shinyApp(ui = ui, server = server)







#стовбчикові діаграми 2 шт.
# 
# install.packages("gridExtra")

library(gridExtra)
# 
# Побудуйте стовпчикову діаграму для аналізу зарплати за статтею
plot1 <- ggplot(Main_Data, aes(x = Gender, y = Salary, fill = Gender)) +
  geom_bar(stat = "identity") +
  labs(
    x = "Стать",
    y = "Зарплата",
    title = "Зарплати за статтею"
  ) +
  scale_fill_manual(values = c("Male" = "blue", "Female" = "Orange")) +
  theme_replace()
  

plot2 <- ggplot(Main_Data, aes(x = Education, y = Salary, fill = Education)) +
  geom_bar(stat = "identity") +
  labs(
    x = "Освіта",
    y = "Зарплата",
    title = "Зарплати за освітою"
  ) +
  scale_fill_manual(values = c("Bachelor's" = "blue", "Master's" = "green", "None" = "red")) +
  theme_minimal() +
  facet_grid(. ~ Specialization)
grid.arrange(plot1, plot2, ncol = 2)






# 
# 
# 


# Гістограми

ggplot(Main_Data, aes(x = Salary, fill = Specialization)) +
  geom_histogram(binwidth = 10000, color = "black", position = "dodge") +  # Встановлюємо крок гістограми, кольори та розміщення
  labs(
    x = "Зарплата",
    y = "Частота",
    title = "Гістограма розподілу зарплати з урахуванням спеціалізації"
  ) +
  theme_minimal()


# 3Д діаграма
# install.packages("plotly")
library(plotly)
plot_ly(Main_Data, x = ~Experience, y = ~Number_of_projects, z = ~Salary, type = "scatter3d", mode = "markers") %>%
  add_markers(color = ~Salary, size = 3, colorscale = "Viridis") %>%
  layout(
    scene = list(
      xaxis = list(title = "Experience"),
      yaxis = list(title = "Number of Projects"),
      zaxis = list(title = "Salary")
    ),
    title = "3D Scatter Plot of Salary vs. Experience vs. Number of Projects"
  )

